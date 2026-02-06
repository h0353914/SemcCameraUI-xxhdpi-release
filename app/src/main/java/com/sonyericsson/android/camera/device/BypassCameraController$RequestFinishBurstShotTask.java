package com.sonyericsson.android.camera.device;

import android.content.Context;
import android.support.annotation.WorkerThread;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.status.EachCameraStatusPublisher;
import com.sonyericsson.cameracommon.status.eachcamera.BurstShooting;
import com.sonyericsson.cameracommon.status.eachcamera.BurstShooting$Value;

@WorkerThread
class BypassCameraController$RequestFinishBurstShotTask extends CameraDeviceHandler$CameraDeviceAccessTask {
    final /* synthetic */ BypassCameraController this$0;

    /* synthetic */ BypassCameraController$RequestFinishBurstShotTask(BypassCameraController bypassCameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, BypassCameraController$1 bypassCameraController$1) {
        this(bypassCameraController, cameraDeviceHandler$CameraSessionId);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private BypassCameraController$RequestFinishBurstShotTask(BypassCameraController bypassCameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        super(cameraDeviceHandler$CameraSessionId);
        this.this$0 = bypassCameraController;
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    protected boolean verifyCameraDeviceStatus() {
        return getOpenCloseStatusInfo().isOpenBypassCameraTaskPerformed() && !getOpenCloseStatusInfo().isCloseBypassCameraTaskPerformed();
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    public void doCameraDeviceAccess() {
        if (CamLog.DEBUG) {
            CamLog.d("requestFinishBurstShot()");
        }
        BypassCameraController.access$1200(this.this$0).requestFinishBurstShot();
        Context contextAccess$1300 = BypassCameraController.access$1300(this.this$0);
        if (contextAccess$1300 != null) {
            new EachCameraStatusPublisher(contextAccess$1300, BypassCameraController.access$1400(this.this$0).getParameters(getSessionId()).getCameraId()).put(new BurstShooting(BurstShooting$Value.OFF)).publish();
        }
    }
}
