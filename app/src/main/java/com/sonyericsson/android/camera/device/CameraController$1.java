package com.sonyericsson.android.camera.device;

import com.sonyericsson.android.camera.util.CamLog;

class CameraController$1 implements Runnable {
    final /* synthetic */ CameraController this$0;
    final /* synthetic */ AfParametersReflectedChecker val$checker;
    final /* synthetic */ CameraDeviceHandler$CameraSessionId val$sessionId;

    CameraController$1(CameraController cameraController, AfParametersReflectedChecker afParametersReflectedChecker, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        this.this$0 = cameraController;
        this.val$checker = afParametersReflectedChecker;
        this.val$sessionId = cameraDeviceHandler$CameraSessionId;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (CameraController.access$5600(this.this$0)) {
            if (CameraController.access$5700(this.this$0).contains(this.val$checker)) {
                CameraDeviceHandler$CameraSessionInfo openCloseStatusInfo = CameraDeviceHandler$CameraSessionInfo.getOpenCloseStatusInfo(this.val$sessionId);
                if (openCloseStatusInfo == null) {
                    CamLog.d("requestSnapshotReadyAfterAfParametersReflected(): This session is already closed.");
                } else {
                    CameraController.access$1500(this.this$0, this.val$sessionId, openCloseStatusInfo, CameraDeviceHandler$ErrorCode.ERROR_ON_CAMERA_ERROR);
                    CamLog.e("requestSnapshotReadyAfterAfParametersReflected : Failed to reflect the parameters to the device.");
                }
            }
        }
    }
}
