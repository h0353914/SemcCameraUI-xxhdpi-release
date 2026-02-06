package android.support.v7.widget;

import android.view.View;

class LinearLayoutManager$AnchorInfo {
    int mCoordinate;
    boolean mLayoutFromEnd;
    OrientationHelper mOrientationHelper;
    int mPosition;
    boolean mValid;

    LinearLayoutManager$AnchorInfo() {
        reset();
    }

    void reset() {
        this.mPosition = -1;
        this.mCoordinate = Integer.MIN_VALUE;
        this.mLayoutFromEnd = false;
        this.mValid = false;
    }

    void assignCoordinateFromPadding() {
        int startAfterPadding;
        if (this.mLayoutFromEnd) {
            startAfterPadding = this.mOrientationHelper.getEndAfterPadding();
        } else {
            startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
        }
        this.mCoordinate = startAfterPadding;
    }

    public String toString() {
        return "AnchorInfo{mPosition=" + this.mPosition + ", mCoordinate=" + this.mCoordinate + ", mLayoutFromEnd=" + this.mLayoutFromEnd + ", mValid=" + this.mValid + '}';
    }

    boolean isViewValidAsAnchor(View view, RecyclerView$State recyclerView$State) {
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        return !recyclerView$LayoutParams.isItemRemoved() && recyclerView$LayoutParams.getViewLayoutPosition() >= 0 && recyclerView$LayoutParams.getViewLayoutPosition() < recyclerView$State.getItemCount();
    }

    public void assignFromViewAndKeepVisibleRect(View view, int i) {
        int totalSpaceChange = this.mOrientationHelper.getTotalSpaceChange();
        if (totalSpaceChange >= 0) {
            assignFromView(view, i);
            return;
        }
        this.mPosition = i;
        if (this.mLayoutFromEnd) {
            int endAfterPadding = (this.mOrientationHelper.getEndAfterPadding() - totalSpaceChange) - this.mOrientationHelper.getDecoratedEnd(view);
            this.mCoordinate = this.mOrientationHelper.getEndAfterPadding() - endAfterPadding;
            if (endAfterPadding > 0) {
                int decoratedMeasurement = this.mCoordinate - this.mOrientationHelper.getDecoratedMeasurement(view);
                int startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
                int iMin = decoratedMeasurement - (startAfterPadding + Math.min(this.mOrientationHelper.getDecoratedStart(view) - startAfterPadding, 0));
                if (iMin < 0) {
                    this.mCoordinate += Math.min(endAfterPadding, -iMin);
                    return;
                }
                return;
            }
            return;
        }
        int decoratedStart = this.mOrientationHelper.getDecoratedStart(view);
        int startAfterPadding2 = decoratedStart - this.mOrientationHelper.getStartAfterPadding();
        this.mCoordinate = decoratedStart;
        if (startAfterPadding2 > 0) {
            int endAfterPadding2 = (this.mOrientationHelper.getEndAfterPadding() - Math.min(0, (this.mOrientationHelper.getEndAfterPadding() - totalSpaceChange) - this.mOrientationHelper.getDecoratedEnd(view))) - (decoratedStart + this.mOrientationHelper.getDecoratedMeasurement(view));
            if (endAfterPadding2 < 0) {
                this.mCoordinate -= Math.min(startAfterPadding2, -endAfterPadding2);
            }
        }
    }

    public void assignFromView(View view, int i) {
        if (this.mLayoutFromEnd) {
            this.mCoordinate = this.mOrientationHelper.getDecoratedEnd(view) + this.mOrientationHelper.getTotalSpaceChange();
        } else {
            this.mCoordinate = this.mOrientationHelper.getDecoratedStart(view);
        }
        this.mPosition = i;
    }
}
