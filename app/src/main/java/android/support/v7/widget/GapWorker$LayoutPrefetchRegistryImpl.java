package android.support.v7.widget;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
class GapWorker$LayoutPrefetchRegistryImpl implements RecyclerView$LayoutManager$LayoutPrefetchRegistry {
    int mCount;
    int[] mPrefetchArray;
    int mPrefetchDx;
    int mPrefetchDy;

    GapWorker$LayoutPrefetchRegistryImpl() {
    }

    void setPrefetchVector(int i, int i2) {
        this.mPrefetchDx = i;
        this.mPrefetchDy = i2;
    }

    void collectPrefetchPositionsFromView(RecyclerView recyclerView, boolean z) {
        this.mCount = 0;
        if (this.mPrefetchArray != null) {
            Arrays.fill(this.mPrefetchArray, -1);
        }
        RecyclerView$LayoutManager recyclerView$LayoutManager = recyclerView.mLayout;
        if (recyclerView.mAdapter == null || recyclerView$LayoutManager == null || !recyclerView$LayoutManager.isItemPrefetchEnabled()) {
            return;
        }
        if (z) {
            if (!recyclerView.mAdapterHelper.hasPendingUpdates()) {
                recyclerView$LayoutManager.collectInitialPrefetchPositions(recyclerView.mAdapter.getItemCount(), this);
            }
        } else if (!recyclerView.hasPendingAdapterUpdates()) {
            recyclerView$LayoutManager.collectAdjacentPrefetchPositions(this.mPrefetchDx, this.mPrefetchDy, recyclerView.mState, this);
        }
        if (this.mCount > recyclerView$LayoutManager.mPrefetchMaxCountObserved) {
            recyclerView$LayoutManager.mPrefetchMaxCountObserved = this.mCount;
            recyclerView$LayoutManager.mPrefetchMaxObservedInInitialPrefetch = z;
            recyclerView.mRecycler.updateViewCacheSize();
        }
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager$LayoutPrefetchRegistry
    public void addPosition(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("Layout positions must be non-negative");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("Pixel distance must be non-negative");
        }
        int i3 = this.mCount * 2;
        if (this.mPrefetchArray == null) {
            this.mPrefetchArray = new int[4];
            Arrays.fill(this.mPrefetchArray, -1);
        } else if (i3 >= this.mPrefetchArray.length) {
            int[] iArr = this.mPrefetchArray;
            this.mPrefetchArray = new int[i3 * 2];
            System.arraycopy(iArr, 0, this.mPrefetchArray, 0, iArr.length);
        }
        this.mPrefetchArray[i3] = i;
        this.mPrefetchArray[i3 + 1] = i2;
        this.mCount++;
    }

    boolean lastPrefetchIncludedPosition(int i) {
        if (this.mPrefetchArray != null) {
            int i2 = this.mCount * 2;
            for (int i3 = 0; i3 < i2; i3 += 2) {
                if (this.mPrefetchArray[i3] == i) {
                    return true;
                }
            }
        }
        return false;
    }

    void clearPrefetchPositions() {
        if (this.mPrefetchArray != null) {
            Arrays.fill(this.mPrefetchArray, -1);
        }
        this.mCount = 0;
    }
}
