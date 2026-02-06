package com.sonyericsson.android.camera.device;

import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$PrepareBurstCallback;

class BypassCameraController$PrepareBurstCallbackImpl implements BypassCamera$PrepareBurstCallback {
    final /* synthetic */ BypassCameraController this$0;

    private BypassCameraController$PrepareBurstCallbackImpl(BypassCameraController bypassCameraController) {
        this.this$0 = bypassCameraController;
    }

    /* synthetic */ BypassCameraController$PrepareBurstCallbackImpl(BypassCameraController bypassCameraController, BypassCameraController$1 bypassCameraController$1) {
        this(bypassCameraController);
    }

    @Override // com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$PrepareBurstCallback
    public void onPrepareBurstDone(boolean z) {
        BypassCameraController.access$000(this.this$0).onPrepareBurstDone(z);
    }
}
