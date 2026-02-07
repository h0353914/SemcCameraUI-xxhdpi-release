package android.support.v7.widget;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class OrientationHelper$1 extends OrientationHelper {
    OrientationHelper$1(RecyclerView$LayoutManager recyclerView$LayoutManager) {
        super(recyclerView$LayoutManager, null);
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getEndAfterPadding() {
        return this.mLayoutManager.getWidth() - this.mLayoutManager.getPaddingRight();
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getEnd() {
        return this.mLayoutManager.getWidth();
    }

    @Override // android.support.v7.widget.OrientationHelper
    public void offsetChildren(int i) {
        this.mLayoutManager.offsetChildrenHorizontal(i);
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getStartAfterPadding() {
        return this.mLayoutManager.getPaddingLeft();
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getDecoratedMeasurement(View view) {
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        return this.mLayoutManager.getDecoratedMeasuredWidth(view) + recyclerView$LayoutParams.leftMargin + recyclerView$LayoutParams.rightMargin;
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getDecoratedMeasurementInOther(View view) {
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        return this.mLayoutManager.getDecoratedMeasuredHeight(view) + recyclerView$LayoutParams.topMargin + recyclerView$LayoutParams.bottomMargin;
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getDecoratedEnd(View view) {
        return this.mLayoutManager.getDecoratedRight(view) + ((RecyclerView$LayoutParams) view.getLayoutParams()).rightMargin;
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getDecoratedStart(View view) {
        return this.mLayoutManager.getDecoratedLeft(view) - ((RecyclerView$LayoutParams) view.getLayoutParams()).leftMargin;
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getTransformedEndWithDecoration(View view) {
        this.mLayoutManager.getTransformedBoundingBox(view, true, this.mTmpRect);
        return this.mTmpRect.right;
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getTransformedStartWithDecoration(View view) {
        this.mLayoutManager.getTransformedBoundingBox(view, true, this.mTmpRect);
        return this.mTmpRect.left;
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getTotalSpace() {
        return (this.mLayoutManager.getWidth() - this.mLayoutManager.getPaddingLeft()) - this.mLayoutManager.getPaddingRight();
    }

    @Override // android.support.v7.widget.OrientationHelper
    public void offsetChild(View view, int i) {
        view.offsetLeftAndRight(i);
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getEndPadding() {
        return this.mLayoutManager.getPaddingRight();
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getMode() {
        return this.mLayoutManager.getWidthMode();
    }

    @Override // android.support.v7.widget.OrientationHelper
    public int getModeInOther() {
        return this.mLayoutManager.getHeightMode();
    }
}
