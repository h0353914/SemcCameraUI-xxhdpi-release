package com.sonyericsson.android.camera.device;

import android.support.annotation.WorkerThread;
import com.sonyericsson.android.camera.util.CamLog;

@WorkerThread
class CameraDeviceHandler$CameraControllerCallbackImpl$OnErrorTask extends CameraDeviceHandler$CameraDeviceAccessTask {
    final /* synthetic */ CameraDeviceHandler$CameraControllerCallbackImpl this$1;

    /* synthetic */ CameraDeviceHandler$CameraControllerCallbackImpl$OnErrorTask(CameraDeviceHandler$CameraControllerCallbackImpl cameraDeviceHandler$CameraControllerCallbackImpl, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CameraDeviceHandler$1 cameraDeviceHandler$1) {
        this(cameraDeviceHandler$CameraControllerCallbackImpl, cameraDeviceHandler$CameraSessionId);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private CameraDeviceHandler$CameraControllerCallbackImpl$OnErrorTask(CameraDeviceHandler$CameraControllerCallbackImpl cameraDeviceHandler$CameraControllerCallbackImpl, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        super(cameraDeviceHandler$CameraSessionId);
        this.this$1 = cameraDeviceHandler$CameraControllerCallbackImpl;
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    protected boolean verifyCameraDeviceStatus() {
        switch (CameraDeviceHandler.access$600(this.this$1.this$0).getCameraDeviceStatus()) {
            case STATUS_RELEASED:
            case STATUS_OPENED:
            case STATUS_READY:
                if (!getOpenCloseStatusInfo().isCloseCameraTaskRequested()) {
                    return true;
                }
                CamLog.d("OnErrorTask : CloseCameraTask is already requested.");
                return false;
            case STATUS_ERROR:
            case STATUS_EVICTED:
                return false;
            default:
                throw new IllegalStateException("Failed due to wrong status in OnErrorTask. status: " + CameraDeviceHandler.access$600(this.this$1.this$0).getCameraDeviceStatus());
        }
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    public void doCameraDeviceAccess() {
        CameraDeviceHandler.access$600(this.this$1.this$0).setCameraDeviceStatus(CameraDeviceHandler$CameraDeviceStatus.STATUS_ERROR);
        CameraDeviceHandler.access$2900(this.this$1.this$0).post(new CameraDeviceHandler$CameraControllerCallbackImpl$OnErrorTask$1(this));
    }
}
