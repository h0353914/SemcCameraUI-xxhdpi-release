package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.CameraActivity$LayoutOrientation;
import com.sonyericsson.android.camera.CameraActivity$LayoutOrientationChangedListener;

class GestureShutter$3 implements CameraActivity$LayoutOrientationChangedListener {
    final /* synthetic */ GestureShutter this$0;

    GestureShutter$3(GestureShutter gestureShutter) {
        this.this$0 = gestureShutter;
    }

    @Override // com.sonyericsson.android.camera.CameraActivity$LayoutOrientationChangedListener
    public void onLayoutOrientationChanged(CameraActivity$LayoutOrientation cameraActivity$LayoutOrientation) {
        if (cameraActivity$LayoutOrientation != GestureShutter.access$100(this.this$0)) {
            GestureShutter.access$102(this.this$0, cameraActivity$LayoutOrientation);
            if (GestureShutter.access$200(this.this$0) != null) {
                GestureShutter.access$200(this.this$0).setLayoutOrientation(GestureShutter.access$100(this.this$0));
            }
        }
    }
}
