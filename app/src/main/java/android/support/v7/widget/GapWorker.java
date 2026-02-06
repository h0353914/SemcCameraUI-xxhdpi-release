package android.support.v7.widget;

import android.support.annotation.Nullable;
import android.support.v4.os.TraceCompat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

final class GapWorker implements Runnable {
    static final ThreadLocal<GapWorker> sGapWorker = new ThreadLocal<>();
    static Comparator<GapWorker$Task> sTaskComparator = new GapWorker$1();
    long mFrameIntervalNs;
    long mPostTimeNs;
    ArrayList<RecyclerView> mRecyclerViews = new ArrayList<>();
    private ArrayList<GapWorker$Task> mTasks = new ArrayList<>();

    GapWorker() {
    }

    public void add(RecyclerView recyclerView) {
        this.mRecyclerViews.add(recyclerView);
    }

    public void remove(RecyclerView recyclerView) {
        this.mRecyclerViews.remove(recyclerView);
    }

    void postFromTraversal(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.mPostTimeNs == 0) {
            this.mPostTimeNs = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.mPrefetchRegistry.setPrefetchVector(i, i2);
    }

    private void buildTaskList() {
        GapWorker$Task gapWorker$Task;
        int size = this.mRecyclerViews.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView recyclerView = this.mRecyclerViews.get(i2);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.mPrefetchRegistry.collectPrefetchPositionsFromView(recyclerView, false);
                i += recyclerView.mPrefetchRegistry.mCount;
            }
        }
        this.mTasks.ensureCapacity(i);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView recyclerView2 = this.mRecyclerViews.get(i4);
            if (recyclerView2.getWindowVisibility() == 0) {
                GapWorker$LayoutPrefetchRegistryImpl gapWorker$LayoutPrefetchRegistryImpl = recyclerView2.mPrefetchRegistry;
                int iAbs = Math.abs(gapWorker$LayoutPrefetchRegistryImpl.mPrefetchDx) + Math.abs(gapWorker$LayoutPrefetchRegistryImpl.mPrefetchDy);
                int i5 = i3;
                for (int i6 = 0; i6 < gapWorker$LayoutPrefetchRegistryImpl.mCount * 2; i6 += 2) {
                    if (i5 >= this.mTasks.size()) {
                        gapWorker$Task = new GapWorker$Task();
                        this.mTasks.add(gapWorker$Task);
                    } else {
                        gapWorker$Task = this.mTasks.get(i5);
                    }
                    int i7 = gapWorker$LayoutPrefetchRegistryImpl.mPrefetchArray[i6 + 1];
                    gapWorker$Task.immediate = i7 <= iAbs;
                    gapWorker$Task.viewVelocity = iAbs;
                    gapWorker$Task.distanceToItem = i7;
                    gapWorker$Task.view = recyclerView2;
                    gapWorker$Task.position = gapWorker$LayoutPrefetchRegistryImpl.mPrefetchArray[i6];
                    i5++;
                }
                i3 = i5;
            }
        }
        Collections.sort(this.mTasks, sTaskComparator);
    }

    static boolean isPrefetchPositionAttached(RecyclerView recyclerView, int i) {
        int unfilteredChildCount = recyclerView.mChildHelper.getUnfilteredChildCount();
        for (int i2 = 0; i2 < unfilteredChildCount; i2++) {
            RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.getUnfilteredChildAt(i2));
            if (childViewHolderInt.mPosition == i && !childViewHolderInt.isInvalid()) {
                return true;
            }
        }
        return false;
    }

    private RecyclerView$ViewHolder prefetchPositionWithDeadline(RecyclerView recyclerView, int i, long j) {
        if (isPrefetchPositionAttached(recyclerView, i)) {
            return null;
        }
        RecyclerView$Recycler recyclerView$Recycler = recyclerView.mRecycler;
        try {
            recyclerView.onEnterLayoutOrScroll();
            RecyclerView$ViewHolder recyclerView$ViewHolderTryGetViewHolderForPositionByDeadline = recyclerView$Recycler.tryGetViewHolderForPositionByDeadline(i, false, j);
            if (recyclerView$ViewHolderTryGetViewHolderForPositionByDeadline != null) {
                if (recyclerView$ViewHolderTryGetViewHolderForPositionByDeadline.isBound() && !recyclerView$ViewHolderTryGetViewHolderForPositionByDeadline.isInvalid()) {
                    recyclerView$Recycler.recycleView(recyclerView$ViewHolderTryGetViewHolderForPositionByDeadline.itemView);
                } else {
                    recyclerView$Recycler.addViewHolderToRecycledViewPool(recyclerView$ViewHolderTryGetViewHolderForPositionByDeadline, false);
                }
            }
            return recyclerView$ViewHolderTryGetViewHolderForPositionByDeadline;
        } finally {
            recyclerView.onExitLayoutOrScroll(false);
        }
    }

    private void prefetchInnerRecyclerViewWithDeadline(@Nullable RecyclerView recyclerView, long j) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.mDataSetHasChangedAfterLayout && recyclerView.mChildHelper.getUnfilteredChildCount() != 0) {
            recyclerView.removeAndRecycleViews();
        }
        GapWorker$LayoutPrefetchRegistryImpl gapWorker$LayoutPrefetchRegistryImpl = recyclerView.mPrefetchRegistry;
        gapWorker$LayoutPrefetchRegistryImpl.collectPrefetchPositionsFromView(recyclerView, true);
        if (gapWorker$LayoutPrefetchRegistryImpl.mCount != 0) {
            try {
                TraceCompat.beginSection("RV Nested Prefetch");
                recyclerView.mState.prepareForNestedPrefetch(recyclerView.mAdapter);
                for (int i = 0; i < gapWorker$LayoutPrefetchRegistryImpl.mCount * 2; i += 2) {
                    prefetchPositionWithDeadline(recyclerView, gapWorker$LayoutPrefetchRegistryImpl.mPrefetchArray[i], j);
                }
            } finally {
                TraceCompat.endSection();
            }
        }
    }

    private void flushTaskWithDeadline(GapWorker$Task gapWorker$Task, long j) {
        RecyclerView$ViewHolder recyclerView$ViewHolderPrefetchPositionWithDeadline = prefetchPositionWithDeadline(gapWorker$Task.view, gapWorker$Task.position, gapWorker$Task.immediate ? Long.MAX_VALUE : j);
        if (recyclerView$ViewHolderPrefetchPositionWithDeadline == null || recyclerView$ViewHolderPrefetchPositionWithDeadline.mNestedRecyclerView == null || !recyclerView$ViewHolderPrefetchPositionWithDeadline.isBound() || recyclerView$ViewHolderPrefetchPositionWithDeadline.isInvalid()) {
            return;
        }
        prefetchInnerRecyclerViewWithDeadline(recyclerView$ViewHolderPrefetchPositionWithDeadline.mNestedRecyclerView.get(), j);
    }

    private void flushTasksWithDeadline(long j) {
        for (int i = 0; i < this.mTasks.size(); i++) {
            GapWorker$Task gapWorker$Task = this.mTasks.get(i);
            if (gapWorker$Task.view == null) {
                return;
            }
            flushTaskWithDeadline(gapWorker$Task, j);
            gapWorker$Task.clear();
        }
    }

    void prefetch(long j) {
        buildTaskList();
        flushTasksWithDeadline(j);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            TraceCompat.beginSection("RV Prefetch");
            if (this.mRecyclerViews.isEmpty()) {
                return;
            }
            int size = this.mRecyclerViews.size();
            long jMax = 0;
            for (int i = 0; i < size; i++) {
                RecyclerView recyclerView = this.mRecyclerViews.get(i);
                if (recyclerView.getWindowVisibility() == 0) {
                    jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                }
            }
            if (jMax == 0) {
                return;
            }
            prefetch(TimeUnit.MILLISECONDS.toNanos(jMax) + this.mFrameIntervalNs);
        } finally {
            this.mPostTimeNs = 0L;
            TraceCompat.endSection();
        }
    }
}
