package com.sonyericsson.android.camera.device;

class CameraDeviceHandler$CameraControllerCallbackImpl$2 implements Runnable {
    final /* synthetic */ CameraDeviceHandler$CameraControllerCallbackImpl this$1;

    CameraDeviceHandler$CameraControllerCallbackImpl$2(CameraDeviceHandler$CameraControllerCallbackImpl cameraDeviceHandler$CameraControllerCallbackImpl) {
        this.this$1 = cameraDeviceHandler$CameraControllerCallbackImpl;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CameraDeviceHandler.access$3100(this.this$1.this$0) != null) {
            CameraDeviceHandler.access$3100(this.this$1.this$0).onDeviceError(CameraDeviceHandler$ErrorCode.ERROR_ON_CAMERA_DISCONNECTION);
        }
    }
}
