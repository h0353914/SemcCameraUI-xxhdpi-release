package com.sonyericsson.android.camera.device;

/* JADX INFO: loaded from: classes.dex */
class CameraDeviceHandler$5 implements Runnable {
    final /* synthetic */ CameraDeviceHandler this$0;

    CameraDeviceHandler$5(CameraDeviceHandler cameraDeviceHandler) {
        this.this$0 = cameraDeviceHandler;
    }

    @Override // java.lang.Runnable
    public void run() {
        CameraDeviceHandler.access$600(this.this$0).changeProviderDeviceStatusToRecording(CameraDeviceHandler.access$2200(this.this$0));
    }
}
