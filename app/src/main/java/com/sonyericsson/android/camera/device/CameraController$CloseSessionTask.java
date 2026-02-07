package com.sonyericsson.android.camera.device;

import android.hardware.camera2.CameraAccessException;
import android.support.annotation.WorkerThread;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
@WorkerThread
class CameraController$CloseSessionTask extends CameraDeviceHandler$CameraDeviceAccessTask {
    final /* synthetic */ CameraController this$0;

    /* synthetic */ CameraController$CloseSessionTask(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CameraController$1 cameraController$1) {
        this(cameraController, cameraDeviceHandler$CameraSessionId);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private CameraController$CloseSessionTask(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        super(cameraDeviceHandler$CameraSessionId);
        this.this$0 = cameraController;
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    protected boolean verifyCameraDeviceStatus() {
        switch (CameraController$2.$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus[this.this$0.getCameraDeviceStatus().ordinal()]) {
            case 1:
            case 2:
            case 4:
                return false;
            case 3:
                return true;
            case 5:
                if (getOpenCloseStatusInfo().isCloseCameraTaskRequested()) {
                    CamLog.d("CloseSessionTask : CloseCameraTask is already requested.");
                }
                if (getOpenCloseStatusInfo().isErrorCaused()) {
                    CamLog.d("CloseSessionTask : Could not execute due to error caused.");
                }
                return false;
            default:
                throw new IllegalStateException("Failed due to wrong status in CloseSessionTask. status: " + this.this$0.getCameraDeviceStatus());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    public void doCameraDeviceAccess() {
        this.this$0.setCameraDeviceStatus(CameraDeviceHandler$CameraDeviceStatus.STATUS_OPENED);
        try {
            try {
                if (CameraController.access$2200(this.this$0) != null) {
                    if (CamLog.DEBUG) {
                        CamLog.d("stopRepeating()");
                    }
                    CameraController.access$2200(this.this$0).stopRepeating();
                    if (!CameraController.access$1000(this.this$0).isSnapshotRunning()) {
                        CameraController.access$2200(this.this$0).abortCaptures();
                    }
                    CameraController.access$2200(this.this$0).close();
                }
            } catch (CameraAccessException e) {
                CamLog.e("CloseSessionTask: Close session failed: ", e);
            }
        } finally {
            CameraController.access$2202(this.this$0, null);
            CameraController.access$2302(this.this$0, null);
        }
    }
}
