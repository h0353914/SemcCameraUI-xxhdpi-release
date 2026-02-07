package com.sonyericsson.android.camera.device;

import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;

/* JADX INFO: loaded from: classes.dex */
class CameraDeviceHandler$BypassCameraControllerCallbackImpl$CloseCameraDeviceNotificationTask implements Runnable {
    final /* synthetic */ CameraDeviceHandler$BypassCameraControllerCallbackImpl this$1;

    private CameraDeviceHandler$BypassCameraControllerCallbackImpl$CloseCameraDeviceNotificationTask(CameraDeviceHandler$BypassCameraControllerCallbackImpl cameraDeviceHandler$BypassCameraControllerCallbackImpl) {
        this.this$1 = cameraDeviceHandler$BypassCameraControllerCallbackImpl;
    }

    /* synthetic */ CameraDeviceHandler$BypassCameraControllerCallbackImpl$CloseCameraDeviceNotificationTask(CameraDeviceHandler$BypassCameraControllerCallbackImpl cameraDeviceHandler$BypassCameraControllerCallbackImpl, CameraDeviceHandler$1 cameraDeviceHandler$1) {
        this(cameraDeviceHandler$BypassCameraControllerCallbackImpl);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CameraDeviceHandler.access$3100(this.this$1.this$0) != null) {
            CameraDeviceHandler.access$3100(this.this$1.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_ON_CAMERA_DEVICE_CLOSED, new Object[0]);
        }
    }
}
