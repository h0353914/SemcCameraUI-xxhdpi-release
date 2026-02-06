package com.sonyericsson.android.camera.device;

import android.support.annotation.WorkerThread;
import com.sonyericsson.android.camera.util.CamLog;

@WorkerThread
class BypassCameraController$RequestSnapshotReadyTask extends CameraDeviceHandler$CameraDeviceAccessTask {
    final /* synthetic */ BypassCameraController this$0;

    /* synthetic */ BypassCameraController$RequestSnapshotReadyTask(BypassCameraController bypassCameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, BypassCameraController$1 bypassCameraController$1) {
        this(bypassCameraController, cameraDeviceHandler$CameraSessionId);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private BypassCameraController$RequestSnapshotReadyTask(BypassCameraController bypassCameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        super(cameraDeviceHandler$CameraSessionId);
        this.this$0 = bypassCameraController;
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    protected boolean verifyCameraDeviceStatus() {
        return (!getOpenCloseStatusInfo().isOpenBypassCameraTaskPerformed() || getOpenCloseStatusInfo().isErrorCaused() || getOpenCloseStatusInfo().isCloseBypassCameraTaskPerformed()) ? false : true;
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    public void doCameraDeviceAccess() {
        BypassCameraController.access$1500(this.this$0, true);
        if (CamLog.DEBUG) {
            CamLog.d("requestSnapshotReady()");
        }
        BypassCameraController.access$3502(this.this$0, true);
        BypassCameraController.access$1200(this.this$0).requestSnapshotReady();
    }
}
