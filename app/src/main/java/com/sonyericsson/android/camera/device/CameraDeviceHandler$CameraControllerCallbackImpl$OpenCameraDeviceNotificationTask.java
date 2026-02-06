package com.sonyericsson.android.camera.device;

import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;

class CameraDeviceHandler$CameraControllerCallbackImpl$OpenCameraDeviceNotificationTask implements Runnable {
    private final CameraDeviceHandler$CameraSessionId mSessionId;
    final /* synthetic */ CameraDeviceHandler$CameraControllerCallbackImpl this$1;

    /* synthetic */ CameraDeviceHandler$CameraControllerCallbackImpl$OpenCameraDeviceNotificationTask(CameraDeviceHandler$CameraControllerCallbackImpl cameraDeviceHandler$CameraControllerCallbackImpl, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CameraDeviceHandler$1 cameraDeviceHandler$1) {
        this(cameraDeviceHandler$CameraControllerCallbackImpl, cameraDeviceHandler$CameraSessionId);
    }

    private CameraDeviceHandler$CameraControllerCallbackImpl$OpenCameraDeviceNotificationTask(CameraDeviceHandler$CameraControllerCallbackImpl cameraDeviceHandler$CameraControllerCallbackImpl, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        this.this$1 = cameraDeviceHandler$CameraControllerCallbackImpl;
        this.mSessionId = cameraDeviceHandler$CameraSessionId;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CameraDeviceHandler.access$3100(this.this$1.this$0) != null) {
            CameraDeviceHandler.access$3100(this.this$1.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_ON_CAMERA_DEVICE_OPENED, this.mSessionId);
        }
    }
}
