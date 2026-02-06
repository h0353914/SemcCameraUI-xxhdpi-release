package com.sonyericsson.android.camera.device;

class CameraDeviceHandler$CameraControllerCallbackImpl$1 implements Runnable {
    final /* synthetic */ CameraDeviceHandler$CameraControllerCallbackImpl this$1;
    final /* synthetic */ CameraDeviceHandler$ErrorCode val$error;

    CameraDeviceHandler$CameraControllerCallbackImpl$1(CameraDeviceHandler$CameraControllerCallbackImpl cameraDeviceHandler$CameraControllerCallbackImpl, CameraDeviceHandler$ErrorCode cameraDeviceHandler$ErrorCode) {
        this.this$1 = cameraDeviceHandler$CameraControllerCallbackImpl;
        this.val$error = cameraDeviceHandler$ErrorCode;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CameraDeviceHandler.access$3100(this.this$1.this$0) != null) {
            CameraDeviceHandler.access$3100(this.this$1.this$0).onDeviceError(this.val$error);
        }
    }
}
