package android.support.v7.widget;

import android.view.View;

class OrientationHelper$2 extends OrientationHelper {
    OrientationHelper$2(RecyclerView$LayoutManager recyclerView$LayoutManager) {
        super(recyclerView$LayoutManager, null);
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getEndAfterPadding() {
        return this.mLayoutManager.getHeight() - this.mLayoutManager.getPaddingBottom();
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getEnd() {
        return this.mLayoutManager.getHeight();
    }

    @Override // android.support.v7.widget.OrientationHelper
    public void offsetChildren(int i) {
        this.mLayoutManager.offsetChildrenVertical(i);
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getStartAfterPadding() {
        return this.mLayoutManager.getPaddingTop();
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getDecoratedMeasurement(View view) {
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        return this.mLayoutManager.getDecoratedMeasuredHeight(view) + recyclerView$LayoutParams.topMargin + recyclerView$LayoutParams.bottomMargin;
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getDecoratedMeasurementInOther(View view) {
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        return this.mLayoutManager.getDecoratedMeasuredWidth(view) + recyclerView$LayoutParams.leftMargin + recyclerView$LayoutParams.rightMargin;
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getDecoratedEnd(View view) {
        return this.mLayoutManager.getDecoratedBottom(view) + ((RecyclerView$LayoutParams) view.getLayoutParams()).bottomMargin;
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getDecoratedStart(View view) {
        return this.mLayoutManager.getDecoratedTop(view) - ((RecyclerView$LayoutParams) view.getLayoutParams()).topMargin;
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getTransformedEndWithDecoration(View view) {
        this.mLayoutManager.getTransformedBoundingBox(view, true, this.mTmpRect);
        return this.mTmpRect.bottom;
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getTransformedStartWithDecoration(View view) {
        this.mLayoutManager.getTransformedBoundingBox(view, true, this.mTmpRect);
        return this.mTmpRect.top;
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getTotalSpace() {
        return (this.mLayoutManager.getHeight() - this.mLayoutManager.getPaddingTop()) - this.mLayoutManager.getPaddingBottom();
    }

    @Override // android.support.v7.widget.OrientationHelper
    public void offsetChild(View view, int i) {
        view.offsetTopAndBottom(i);
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getEndPadding() {
        return this.mLayoutManager.getPaddingBottom();
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getMode() {
        return this.mLayoutManager.getHeightMode();
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getModeInOther() {
        return this.mLayoutManager.getWidthMode();
    }
}
