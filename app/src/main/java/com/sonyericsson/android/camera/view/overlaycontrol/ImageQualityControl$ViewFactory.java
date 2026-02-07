package com.sonyericsson.android.camera.view.overlaycontrol;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import com.sonyericsson.android.camera.view.baselayout.LayoutDependencyResolver$ScreenAspect;
import com.sonyericsson.android.camera.view.overlaycontrol.imagequality.ImageQualityControlView;

/* JADX INFO: loaded from: classes.dex */
class ImageQualityControl$ViewFactory {
    private static final String VIEW_TAG = "Imagequalitycontrol-view";
    private final Rect mContainerRect;
    private final ViewGroup mParent;
    private final LayoutDependencyResolver$ScreenAspect mScreenAspect;
    final /* synthetic */ ImageQualityControl this$0;

    public ImageQualityControl$ViewFactory(ImageQualityControl imageQualityControl, ViewGroup viewGroup, Rect rect, LayoutDependencyResolver$ScreenAspect layoutDependencyResolver$ScreenAspect) {
        this.this$0 = imageQualityControl;
        this.mParent = viewGroup;
        this.mContainerRect = rect;
        this.mScreenAspect = layoutDependencyResolver$ScreenAspect;
    }

    public ImageQualityControlView create() {
        View viewFindViewWithTag = this.mParent.findViewWithTag("Imagequalitycontrol-view");
        if (viewFindViewWithTag != null) {
            if (ImageQualityControl.access$000(this.this$0)) {
                ImageQualityControl.access$100(this.this$0).onSlideStopped();
            }
            this.mParent.removeView(viewFindViewWithTag);
        }
        ImageQualityControlView imageQualityControlViewCreate = ImageQualityControlView.create(this.mParent, this.mContainerRect, this.mScreenAspect);
        imageQualityControlViewCreate.setTag("Imagequalitycontrol-view");
        imageQualityControlViewCreate.setAdapter(ImageQualityControl.access$200(this.this$0, this.mParent.getContext()));
        imageQualityControlViewCreate.setOnImageQualityControlDialogTabSelectListener(new ImageQualityControl$ViewFactory$1(this));
        return imageQualityControlViewCreate;
    }
}
