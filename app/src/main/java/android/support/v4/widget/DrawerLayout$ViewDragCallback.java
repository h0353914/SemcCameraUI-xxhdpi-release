package android.support.v4.widget;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class DrawerLayout$ViewDragCallback extends ViewDragHelper$Callback {
    private final int mAbsGravity;
    private ViewDragHelper mDragger;
    private final Runnable mPeekRunnable = new DrawerLayout$ViewDragCallback$1(this);
    final /* synthetic */ DrawerLayout this$0;

    @Override // android.support.v4.widget.ViewDragHelper$Callback
    public boolean onEdgeLock(int i) {
        return false;
    }

    DrawerLayout$ViewDragCallback(DrawerLayout drawerLayout, int i) {
        this.this$0 = drawerLayout;
        this.mAbsGravity = i;
    }

    public void setDragger(ViewDragHelper viewDragHelper) {
        this.mDragger = viewDragHelper;
    }

    public void removeCallbacks() {
        this.this$0.removeCallbacks(this.mPeekRunnable);
    }

    @Override // android.support.v4.widget.ViewDragHelper$Callback
    public boolean tryCaptureView(View view, int i) {
        return this.this$0.isDrawerView(view) && this.this$0.checkDrawerViewAbsoluteGravity(view, this.mAbsGravity) && this.this$0.getDrawerLockMode(view) == 0;
    }

    @Override // android.support.v4.widget.ViewDragHelper$Callback
    public void onViewDragStateChanged(int i) {
        this.this$0.updateDrawerState(this.mAbsGravity, i, this.mDragger.getCapturedView());
    }

    @Override // android.support.v4.widget.ViewDragHelper$Callback
    public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
        int width = view.getWidth();
        float width2 = this.this$0.checkDrawerViewAbsoluteGravity(view, 3) ? (i + width) / width : (this.this$0.getWidth() - i) / width;
        this.this$0.setDrawerViewOffset(view, width2);
        view.setVisibility(width2 == 0.0f ? 4 : 0);
        this.this$0.invalidate();
    }

    @Override // android.support.v4.widget.ViewDragHelper$Callback
    public void onViewCaptured(View view, int i) {
        ((DrawerLayout$LayoutParams) view.getLayoutParams()).isPeeking = false;
        closeOtherDrawer();
    }

    private void closeOtherDrawer() {
        View viewFindDrawerWithGravity = this.this$0.findDrawerWithGravity(this.mAbsGravity == 3 ? 5 : 3);
        if (viewFindDrawerWithGravity != null) {
            this.this$0.closeDrawer(viewFindDrawerWithGravity);
        }
    }

    @Override // android.support.v4.widget.ViewDragHelper$Callback
    public void onViewReleased(View view, float f, float f2) {
        int i;
        float drawerViewOffset = this.this$0.getDrawerViewOffset(view);
        int width = view.getWidth();
        if (this.this$0.checkDrawerViewAbsoluteGravity(view, 3)) {
            i = (f > 0.0f || (f == 0.0f && drawerViewOffset > 0.5f)) ? 0 : -width;
        } else {
            int width2 = this.this$0.getWidth();
            if (f < 0.0f || (f == 0.0f && drawerViewOffset > 0.5f)) {
                width2 -= width;
            }
            i = width2;
        }
        this.mDragger.settleCapturedViewAt(i, view.getTop());
        this.this$0.invalidate();
    }

    @Override // android.support.v4.widget.ViewDragHelper$Callback
    public void onEdgeTouched(int i, int i2) {
        this.this$0.postDelayed(this.mPeekRunnable, 160L);
    }

    void peekDrawer() {
        View viewFindDrawerWithGravity;
        int width;
        int edgeSize = this.mDragger.getEdgeSize();
        boolean z = this.mAbsGravity == 3;
        if (z) {
            viewFindDrawerWithGravity = this.this$0.findDrawerWithGravity(3);
            width = (viewFindDrawerWithGravity != null ? -viewFindDrawerWithGravity.getWidth() : 0) + edgeSize;
        } else {
            viewFindDrawerWithGravity = this.this$0.findDrawerWithGravity(5);
            width = this.this$0.getWidth() - edgeSize;
        }
        if (viewFindDrawerWithGravity != null) {
            if (((!z || viewFindDrawerWithGravity.getLeft() >= width) && (z || viewFindDrawerWithGravity.getLeft() <= width)) || this.this$0.getDrawerLockMode(viewFindDrawerWithGravity) != 0) {
                return;
            }
            DrawerLayout$LayoutParams drawerLayout$LayoutParams = (DrawerLayout$LayoutParams) viewFindDrawerWithGravity.getLayoutParams();
            this.mDragger.smoothSlideViewTo(viewFindDrawerWithGravity, width, viewFindDrawerWithGravity.getTop());
            drawerLayout$LayoutParams.isPeeking = true;
            this.this$0.invalidate();
            closeOtherDrawer();
            this.this$0.cancelChildViewTouch();
        }
    }

    @Override // android.support.v4.widget.ViewDragHelper$Callback
    public void onEdgeDragStarted(int i, int i2) {
        View viewFindDrawerWithGravity;
        if ((i & 1) == 1) {
            viewFindDrawerWithGravity = this.this$0.findDrawerWithGravity(3);
        } else {
            viewFindDrawerWithGravity = this.this$0.findDrawerWithGravity(5);
        }
        if (viewFindDrawerWithGravity == null || this.this$0.getDrawerLockMode(viewFindDrawerWithGravity) != 0) {
            return;
        }
        this.mDragger.captureChildView(viewFindDrawerWithGravity, i2);
    }

    @Override // android.support.v4.widget.ViewDragHelper$Callback
    public int getViewHorizontalDragRange(View view) {
        if (this.this$0.isDrawerView(view)) {
            return view.getWidth();
        }
        return 0;
    }

    @Override // android.support.v4.widget.ViewDragHelper$Callback
    public int clampViewPositionHorizontal(View view, int i, int i2) {
        if (this.this$0.checkDrawerViewAbsoluteGravity(view, 3)) {
            return Math.max(-view.getWidth(), Math.min(i, 0));
        }
        int width = this.this$0.getWidth();
        return Math.max(width - view.getWidth(), Math.min(i, width));
    }

    @Override // android.support.v4.widget.ViewDragHelper$Callback
    public int clampViewPositionVertical(View view, int i, int i2) {
        return view.getTop();
    }
}
