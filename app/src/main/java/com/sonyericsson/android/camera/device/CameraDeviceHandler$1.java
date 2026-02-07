package com.sonyericsson.android.camera.device;

/* JADX INFO: loaded from: classes.dex */
class CameraDeviceHandler$1 implements Runnable {
    final /* synthetic */ CameraDeviceHandler this$0;

    CameraDeviceHandler$1(CameraDeviceHandler cameraDeviceHandler) {
        this.this$0 = cameraDeviceHandler;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CameraDeviceHandler.access$1400(this.this$0) == null) {
            CameraDeviceHandler.access$1402(this.this$0, new CameraActionSound());
            CameraDeviceHandler.access$1400(this.this$0).load(2);
            CameraDeviceHandler.access$1400(this.this$0).load(3);
            CameraDeviceHandler.access$1400(this.this$0).load(0);
        }
    }
}
