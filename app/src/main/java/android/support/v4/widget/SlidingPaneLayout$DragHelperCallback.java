package android.support.v4.widget;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class SlidingPaneLayout$DragHelperCallback extends ViewDragHelper$Callback {
    final /* synthetic */ SlidingPaneLayout this$0;

    SlidingPaneLayout$DragHelperCallback(SlidingPaneLayout slidingPaneLayout) {
        this.this$0 = slidingPaneLayout;
    }

    @Override // android.support.v4.widget.ViewDragHelper$Callback
    public boolean tryCaptureView(View view, int i) {
        if (this.this$0.mIsUnableToDrag) {
            return false;
        }
        return ((SlidingPaneLayout$LayoutParams) view.getLayoutParams()).slideable;
    }

    @Override // android.support.v4.widget.ViewDragHelper$Callback
    public void onViewDragStateChanged(int i) {
        if (this.this$0.mDragHelper.getViewDragState() == 0) {
            if (this.this$0.mSlideOffset == 0.0f) {
                this.this$0.updateObscuredViewsVisibility(this.this$0.mSlideableView);
                this.this$0.dispatchOnPanelClosed(this.this$0.mSlideableView);
                this.this$0.mPreservedOpenState = false;
            } else {
                this.this$0.dispatchOnPanelOpened(this.this$0.mSlideableView);
                this.this$0.mPreservedOpenState = true;
            }
        }
    }

    @Override // android.support.v4.widget.ViewDragHelper$Callback
    public void onViewCaptured(View view, int i) {
        this.this$0.setAllChildrenVisible();
    }

    @Override // android.support.v4.widget.ViewDragHelper$Callback
    public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
        this.this$0.onPanelDragged(i);
        this.this$0.invalidate();
    }

    @Override // android.support.v4.widget.ViewDragHelper$Callback
    public void onViewReleased(View view, float f, float f2) {
        int paddingLeft;
        SlidingPaneLayout$LayoutParams slidingPaneLayout$LayoutParams = (SlidingPaneLayout$LayoutParams) view.getLayoutParams();
        if (this.this$0.isLayoutRtlSupport()) {
            int paddingRight = this.this$0.getPaddingRight() + slidingPaneLayout$LayoutParams.rightMargin;
            if (f < 0.0f || (f == 0.0f && this.this$0.mSlideOffset > 0.5f)) {
                paddingRight += this.this$0.mSlideRange;
            }
            paddingLeft = (this.this$0.getWidth() - paddingRight) - this.this$0.mSlideableView.getWidth();
        } else {
            paddingLeft = slidingPaneLayout$LayoutParams.leftMargin + this.this$0.getPaddingLeft();
            if (f > 0.0f || (f == 0.0f && this.this$0.mSlideOffset > 0.5f)) {
                paddingLeft += this.this$0.mSlideRange;
            }
        }
        this.this$0.mDragHelper.settleCapturedViewAt(paddingLeft, view.getTop());
        this.this$0.invalidate();
    }

    @Override // android.support.v4.widget.ViewDragHelper$Callback
    public int getViewHorizontalDragRange(View view) {
        return this.this$0.mSlideRange;
    }

    @Override // android.support.v4.widget.ViewDragHelper$Callback
    public int clampViewPositionHorizontal(View view, int i, int i2) {
        SlidingPaneLayout$LayoutParams slidingPaneLayout$LayoutParams = (SlidingPaneLayout$LayoutParams) this.this$0.mSlideableView.getLayoutParams();
        if (this.this$0.isLayoutRtlSupport()) {
            int width = this.this$0.getWidth() - ((this.this$0.getPaddingRight() + slidingPaneLayout$LayoutParams.rightMargin) + this.this$0.mSlideableView.getWidth());
            return Math.max(Math.min(i, width), width - this.this$0.mSlideRange);
        }
        int paddingLeft = this.this$0.getPaddingLeft() + slidingPaneLayout$LayoutParams.leftMargin;
        return Math.min(Math.max(i, paddingLeft), this.this$0.mSlideRange + paddingLeft);
    }

    @Override // android.support.v4.widget.ViewDragHelper$Callback
    public int clampViewPositionVertical(View view, int i, int i2) {
        return view.getTop();
    }

    @Override // android.support.v4.widget.ViewDragHelper$Callback
    public void onEdgeDragStarted(int i, int i2) {
        this.this$0.mDragHelper.captureChildView(this.this$0.mSlideableView, i2);
    }
}
