package com.sonyericsson.android.camera.device;

class CameraDeviceHandler$BypassCameraControllerCallbackImpl$1 implements Runnable {
    final /* synthetic */ CameraDeviceHandler$BypassCameraControllerCallbackImpl this$1;
    final /* synthetic */ boolean val$success;

    CameraDeviceHandler$BypassCameraControllerCallbackImpl$1(CameraDeviceHandler$BypassCameraControllerCallbackImpl cameraDeviceHandler$BypassCameraControllerCallbackImpl, boolean z) {
        this.this$1 = cameraDeviceHandler$BypassCameraControllerCallbackImpl;
        this.val$success = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CameraDeviceHandler.access$3100(this.this$1.this$0) != null) {
            CameraDeviceHandler.access$3100(this.this$1.this$0).onPrepareBurstDone(this.val$success);
        }
    }
}
