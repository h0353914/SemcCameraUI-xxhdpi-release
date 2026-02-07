package com.sonyericsson.android.camera.view;

import android.graphics.Point;
import android.graphics.Rect;
import android.widget.RelativeLayout$LayoutParams;
import com.sonyericsson.android.camera.controller.GestureShutter$WindowHost;
import com.sonyericsson.android.camera.view.baselayout.LayoutDependencyResolver;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$GestureShutterListener implements GestureShutter$WindowHost {
    private GestureShutterView mGestureShutterView;
    final /* synthetic */ ViewFinderImpl this$0;

    private ViewFinderImpl$GestureShutterListener(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
        this.mGestureShutterView = null;
    }

    /* synthetic */ ViewFinderImpl$GestureShutterListener(ViewFinderImpl viewFinderImpl, ViewFinderImpl$1 viewFinderImpl$1) {
        this(viewFinderImpl);
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$WindowHost
    public GestureShutterView getGestureShutterView() {
        setupGestureShutterView();
        return this.mGestureShutterView;
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$WindowHost
    public void showGestureShutterView() {
        hideGestureShutterView();
        setupGestureShutterView();
        ViewFinderImpl.access$700(this.this$0).getLazyInflatedUiComponentContainerBack().addView(this.mGestureShutterView);
        ViewFinderImpl.access$700(this.this$0).getLazyInflatedUiComponentContainerBack().bringChildToFront(this.mGestureShutterView);
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$WindowHost
    public void hideGestureShutterView() {
        if (this.mGestureShutterView != null) {
            ViewFinderImpl.access$700(this.this$0).getLazyInflatedUiComponentContainerBack().removeView(this.mGestureShutterView);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$WindowHost
    public Point getPreviewSize() {
        return LayoutOrientationResolver.getInstance().getPointAccordingToLayoutOrientation(new Point(ViewFinderImpl.access$700(this.this$0).getPreviewContainer().getWidth(), ViewFinderImpl.access$700(this.this$0).getPreviewContainer().getHeight()));
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$WindowHost
    public Rect getViewFinderSize() {
        return LayoutDependencyResolver.getViewFinderSize(ViewFinderImpl.access$500(this.this$0));
    }

    private void setupGestureShutterView() {
        if (this.mGestureShutterView == null) {
            RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(-1, -1);
            this.mGestureShutterView = new GestureShutterView(ViewFinderImpl.access$7500(this.this$0));
            this.mGestureShutterView.setLayoutParams(relativeLayout$LayoutParams);
        }
    }
}
