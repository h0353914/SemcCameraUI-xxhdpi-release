package android.support.v7.widget;

import android.graphics.PointF;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class PagerSnapHelper extends SnapHelper {
    private static final int MAX_SCROLL_ON_FLING_DURATION = 100;

    @Nullable
    private OrientationHelper mHorizontalHelper;

    @Nullable
    private OrientationHelper mVerticalHelper;

    @Override // android.support.v7.widget.SnapHelper
    @Nullable
    public int[] calculateDistanceToFinalSnap(@NonNull RecyclerView$LayoutManager recyclerView$LayoutManager, @NonNull View view) {
        int[] iArr = new int[2];
        if (recyclerView$LayoutManager.canScrollHorizontally()) {
            iArr[0] = distanceToCenter(recyclerView$LayoutManager, view, getHorizontalHelper(recyclerView$LayoutManager));
        } else {
            iArr[0] = 0;
        }
        if (recyclerView$LayoutManager.canScrollVertically()) {
            iArr[1] = distanceToCenter(recyclerView$LayoutManager, view, getVerticalHelper(recyclerView$LayoutManager));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @Override // android.support.v7.widget.SnapHelper
    @Nullable
    public View findSnapView(RecyclerView$LayoutManager recyclerView$LayoutManager) {
        if (recyclerView$LayoutManager.canScrollVertically()) {
            return findCenterView(recyclerView$LayoutManager, getVerticalHelper(recyclerView$LayoutManager));
        }
        if (recyclerView$LayoutManager.canScrollHorizontally()) {
            return findCenterView(recyclerView$LayoutManager, getHorizontalHelper(recyclerView$LayoutManager));
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v7.widget.SnapHelper
    public int findTargetSnapPosition(RecyclerView$LayoutManager recyclerView$LayoutManager, int i, int i2) {
        int position;
        PointF pointFComputeScrollVectorForPosition;
        int itemCount = recyclerView$LayoutManager.getItemCount();
        if (itemCount == 0) {
            return -1;
        }
        View viewFindStartView = null;
        if (recyclerView$LayoutManager.canScrollVertically()) {
            viewFindStartView = findStartView(recyclerView$LayoutManager, getVerticalHelper(recyclerView$LayoutManager));
        } else if (recyclerView$LayoutManager.canScrollHorizontally()) {
            viewFindStartView = findStartView(recyclerView$LayoutManager, getHorizontalHelper(recyclerView$LayoutManager));
        }
        if (viewFindStartView == null || (position = recyclerView$LayoutManager.getPosition(viewFindStartView)) == -1) {
            return -1;
        }
        boolean z = false;
        boolean z2 = !recyclerView$LayoutManager.canScrollHorizontally() ? i2 <= 0 : i <= 0;
        if ((recyclerView$LayoutManager instanceof RecyclerView$SmoothScroller$ScrollVectorProvider) && (pointFComputeScrollVectorForPosition = ((RecyclerView$SmoothScroller$ScrollVectorProvider) recyclerView$LayoutManager).computeScrollVectorForPosition(itemCount - 1)) != null && (pointFComputeScrollVectorForPosition.x < 0.0f || pointFComputeScrollVectorForPosition.y < 0.0f)) {
            z = true;
        }
        return z ? z2 ? position - 1 : position : z2 ? position + 1 : position;
    }

    @Override // android.support.v7.widget.SnapHelper
    protected LinearSmoothScroller createSnapScroller(RecyclerView$LayoutManager recyclerView$LayoutManager) {
        if (recyclerView$LayoutManager instanceof RecyclerView$SmoothScroller$ScrollVectorProvider) {
            return new PagerSnapHelper$1(this, this.mRecyclerView.getContext());
        }
        return null;
    }

    private int distanceToCenter(@NonNull RecyclerView$LayoutManager recyclerView$LayoutManager, @NonNull View view, OrientationHelper orientationHelper) {
        int end;
        int decoratedStart = orientationHelper.getDecoratedStart(view) + (orientationHelper.getDecoratedMeasurement(view) / 2);
        if (recyclerView$LayoutManager.getClipToPadding()) {
            end = orientationHelper.getStartAfterPadding() + (orientationHelper.getTotalSpace() / 2);
        } else {
            end = orientationHelper.getEnd() / 2;
        }
        return decoratedStart - end;
    }

    @Nullable
    private View findCenterView(RecyclerView$LayoutManager recyclerView$LayoutManager, OrientationHelper orientationHelper) {
        int end;
        int childCount = recyclerView$LayoutManager.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        if (recyclerView$LayoutManager.getClipToPadding()) {
            end = orientationHelper.getStartAfterPadding() + (orientationHelper.getTotalSpace() / 2);
        } else {
            end = orientationHelper.getEnd() / 2;
        }
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView$LayoutManager.getChildAt(i2);
            int iAbs = Math.abs((orientationHelper.getDecoratedStart(childAt) + (orientationHelper.getDecoratedMeasurement(childAt) / 2)) - end);
            if (iAbs < i) {
                view = childAt;
                i = iAbs;
            }
        }
        return view;
    }

    @Nullable
    private View findStartView(RecyclerView$LayoutManager recyclerView$LayoutManager, OrientationHelper orientationHelper) {
        int childCount = recyclerView$LayoutManager.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView$LayoutManager.getChildAt(i2);
            int decoratedStart = orientationHelper.getDecoratedStart(childAt);
            if (decoratedStart < i) {
                view = childAt;
                i = decoratedStart;
            }
        }
        return view;
    }

    @NonNull
    private OrientationHelper getVerticalHelper(@NonNull RecyclerView$LayoutManager recyclerView$LayoutManager) {
        if (this.mVerticalHelper == null || this.mVerticalHelper.mLayoutManager != recyclerView$LayoutManager) {
            this.mVerticalHelper = OrientationHelper.createVerticalHelper(recyclerView$LayoutManager);
        }
        return this.mVerticalHelper;
    }

    @NonNull
    private OrientationHelper getHorizontalHelper(@NonNull RecyclerView$LayoutManager recyclerView$LayoutManager) {
        if (this.mHorizontalHelper == null || this.mHorizontalHelper.mLayoutManager != recyclerView$LayoutManager) {
            this.mHorizontalHelper = OrientationHelper.createHorizontalHelper(recyclerView$LayoutManager);
        }
        return this.mHorizontalHelper;
    }
}
