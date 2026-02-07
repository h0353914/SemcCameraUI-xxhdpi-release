package com.sonyericsson.android.camera.device;

/* JADX INFO: loaded from: classes.dex */
class CameraDeviceHandler$2 implements Runnable {
    final /* synthetic */ CameraDeviceHandler this$0;

    CameraDeviceHandler$2(CameraDeviceHandler cameraDeviceHandler) {
        this.this$0 = cameraDeviceHandler;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CameraDeviceHandler.access$1400(this.this$0) != null) {
            CameraDeviceHandler.access$1400(this.this$0).release();
            CameraDeviceHandler.access$1402(this.this$0, null);
        }
    }
}
