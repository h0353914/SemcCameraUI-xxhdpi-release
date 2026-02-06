package com.sonyericsson.android.camera.device;

import android.support.annotation.WorkerThread;

@WorkerThread
class CameraDeviceHandler$CameraControllerCallbackImpl$OnDisconnectedTask extends CameraDeviceHandler$CameraDeviceAccessTask {
    final /* synthetic */ CameraDeviceHandler$CameraControllerCallbackImpl this$1;

    /* synthetic */ CameraDeviceHandler$CameraControllerCallbackImpl$OnDisconnectedTask(CameraDeviceHandler$CameraControllerCallbackImpl cameraDeviceHandler$CameraControllerCallbackImpl, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CameraDeviceHandler$1 cameraDeviceHandler$1) {
        this(cameraDeviceHandler$CameraControllerCallbackImpl, cameraDeviceHandler$CameraSessionId);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private CameraDeviceHandler$CameraControllerCallbackImpl$OnDisconnectedTask(CameraDeviceHandler$CameraControllerCallbackImpl cameraDeviceHandler$CameraControllerCallbackImpl, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        super(cameraDeviceHandler$CameraSessionId);
        this.this$1 = cameraDeviceHandler$CameraControllerCallbackImpl;
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    protected boolean verifyCameraDeviceStatus() {
        switch (CameraDeviceHandler.access$600(this.this$1.this$0).getCameraDeviceStatus()) {
            case STATUS_RELEASED:
            case STATUS_OPENED:
            case STATUS_READY:
                return !getOpenCloseStatusInfo().isCloseCameraTaskRequested();
            case STATUS_ERROR:
            case STATUS_EVICTED:
                return false;
            default:
                throw new IllegalStateException("Failed due to wrong status in OnDisconnectedTask. status: " + CameraDeviceHandler.access$600(this.this$1.this$0).getCameraDeviceStatus());
        }
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    public void doCameraDeviceAccess() {
        CameraDeviceHandler.access$600(this.this$1.this$0).setCameraDeviceStatus(CameraDeviceHandler$CameraDeviceStatus.STATUS_EVICTED);
        CameraDeviceHandler.access$2900(this.this$1.this$0).post(new CameraDeviceHandler$CameraControllerCallbackImpl$OnDisconnectedTask$1(this));
    }
}
