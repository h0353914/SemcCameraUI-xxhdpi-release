package android.support.v7.widget;

import android.graphics.PointF;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;

public class LinearSnapHelper extends SnapHelper {
    private static final float INVALID_DISTANCE = 1.0f;

    @Nullable
    private OrientationHelper mHorizontalHelper;

    @Nullable
    private OrientationHelper mVerticalHelper;

    @Override // android.support.v7.widget.SnapHelper
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v7.widget.SnapHelper
    public int findTargetSnapPosition(RecyclerView$LayoutManager recyclerView$LayoutManager, int i, int i2) {
        int itemCount;
        View viewFindSnapView;
        int position;
        int i3;
        PointF pointFComputeScrollVectorForPosition;
        int iEstimateNextPositionDiffForFling;
        int iEstimateNextPositionDiffForFling2;
        if (!(recyclerView$LayoutManager instanceof RecyclerView$SmoothScroller$ScrollVectorProvider) || (itemCount = recyclerView$LayoutManager.getItemCount()) == 0 || (viewFindSnapView = findSnapView(recyclerView$LayoutManager)) == null || (position = recyclerView$LayoutManager.getPosition(viewFindSnapView)) == -1 || (pointFComputeScrollVectorForPosition = ((RecyclerView$SmoothScroller$ScrollVectorProvider) recyclerView$LayoutManager).computeScrollVectorForPosition(itemCount - 1)) == null) {
            return -1;
        }
        if (recyclerView$LayoutManager.canScrollHorizontally()) {
            iEstimateNextPositionDiffForFling = estimateNextPositionDiffForFling(recyclerView$LayoutManager, getHorizontalHelper(recyclerView$LayoutManager), i, 0);
            if (pointFComputeScrollVectorForPosition.x < 0.0f) {
                iEstimateNextPositionDiffForFling = -iEstimateNextPositionDiffForFling;
            }
        } else {
            iEstimateNextPositionDiffForFling = 0;
        }
        if (recyclerView$LayoutManager.canScrollVertically()) {
            iEstimateNextPositionDiffForFling2 = estimateNextPositionDiffForFling(recyclerView$LayoutManager, getVerticalHelper(recyclerView$LayoutManager), 0, i2);
            if (pointFComputeScrollVectorForPosition.y < 0.0f) {
                iEstimateNextPositionDiffForFling2 = -iEstimateNextPositionDiffForFling2;
            }
        } else {
            iEstimateNextPositionDiffForFling2 = 0;
        }
        if (!recyclerView$LayoutManager.canScrollVertically()) {
            iEstimateNextPositionDiffForFling2 = iEstimateNextPositionDiffForFling;
        }
        if (iEstimateNextPositionDiffForFling2 == 0) {
            return -1;
        }
        int i4 = position + iEstimateNextPositionDiffForFling2;
        if (i4 < 0) {
            i4 = 0;
        }
        return i4 >= itemCount ? i3 : i4;
    }

    @Override // android.support.v7.widget.SnapHelper
    public View findSnapView(RecyclerView$LayoutManager recyclerView$LayoutManager) {
        if (recyclerView$LayoutManager.canScrollVertically()) {
            return findCenterView(recyclerView$LayoutManager, getVerticalHelper(recyclerView$LayoutManager));
        }
        if (recyclerView$LayoutManager.canScrollHorizontally()) {
            return findCenterView(recyclerView$LayoutManager, getHorizontalHelper(recyclerView$LayoutManager));
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

    private int estimateNextPositionDiffForFling(RecyclerView$LayoutManager recyclerView$LayoutManager, OrientationHelper orientationHelper, int i, int i2) {
        int[] iArrCalculateScrollDistance = calculateScrollDistance(i, i2);
        float fComputeDistancePerChild = computeDistancePerChild(recyclerView$LayoutManager, orientationHelper);
        if (fComputeDistancePerChild <= 0.0f) {
            return 0;
        }
        return Math.round((Math.abs(iArrCalculateScrollDistance[0]) > Math.abs(iArrCalculateScrollDistance[1]) ? iArrCalculateScrollDistance[0] : iArrCalculateScrollDistance[1]) / fComputeDistancePerChild);
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

    private float computeDistancePerChild(RecyclerView$LayoutManager recyclerView$LayoutManager, OrientationHelper orientationHelper) {
        int childCount = recyclerView$LayoutManager.getChildCount();
        if (childCount == 0) {
            return 1.0f;
        }
        View view = null;
        int i = Integer.MAX_VALUE;
        int i2 = Integer.MIN_VALUE;
        View view2 = null;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = recyclerView$LayoutManager.getChildAt(i3);
            int position = recyclerView$LayoutManager.getPosition(childAt);
            if (position != -1) {
                if (position < i) {
                    view = childAt;
                    i = position;
                }
                if (position > i2) {
                    view2 = childAt;
                    i2 = position;
                }
            }
        }
        if (view == null || view2 == null) {
            return 1.0f;
        }
        int iMax = Math.max(orientationHelper.getDecoratedEnd(view), orientationHelper.getDecoratedEnd(view2)) - Math.min(orientationHelper.getDecoratedStart(view), orientationHelper.getDecoratedStart(view2));
        if (iMax == 0) {
            return 1.0f;
        }
        return (1.0f * iMax) / ((i2 - i) + 1);
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
