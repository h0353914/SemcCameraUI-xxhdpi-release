package com.sonyericsson.android.camera.device;

/* JADX INFO: loaded from: classes.dex */
class CameraController$OnFusionResultChangedCallback implements CameraParameters$FusionResultCallback {
    final /* synthetic */ CameraController this$0;

    private CameraController$OnFusionResultChangedCallback(CameraController cameraController) {
        this.this$0 = cameraController;
    }

    /* synthetic */ CameraController$OnFusionResultChangedCallback(CameraController cameraController, CameraController$1 cameraController$1) {
        this(cameraController);
    }

    @Override // com.sonyericsson.android.camera.device.CameraParameters$FusionResultCallback
    public void onFusionResultChanged(CameraParameters$FusionResult cameraParameters$FusionResult) {
        CameraController.access$000(this.this$0).onFusionResultChanged(cameraParameters$FusionResult);
    }
}
