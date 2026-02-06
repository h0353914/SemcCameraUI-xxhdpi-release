package com.sonyericsson.android.camera.device;

import android.hardware.camera2.CameraAccessException;
import android.support.annotation.WorkerThread;
import com.sonyericsson.android.camera.util.CamLog;

@WorkerThread
class CameraController$StopPreviewTask extends CameraDeviceHandler$CameraDeviceAccessTask {
    final /* synthetic */ CameraController this$0;

    /* synthetic */ CameraController$StopPreviewTask(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CameraController$1 cameraController$1) {
        this(cameraController, cameraDeviceHandler$CameraSessionId);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private CameraController$StopPreviewTask(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        super(cameraDeviceHandler$CameraSessionId);
        this.this$0 = cameraController;
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    protected boolean verifyCameraDeviceStatus() {
        switch (CameraController$2.$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus[this.this$0.getCameraDeviceStatus().ordinal()]) {
            case 1:
            case 2:
            case 5:
                this.mLatch.countDown();
                return false;
            case 3:
            case 4:
                if (!getOpenCloseStatusInfo().isCloseCameraTaskRequested()) {
                    return true;
                }
                CamLog.d("StopPreviewTask : CloseCameraTask is already requested.");
                this.mLatch.countDown();
                return false;
            default:
                throw new IllegalStateException("Failed due to wrong status in StopPreviewTask. status: " + this.this$0.getCameraDeviceStatus());
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
            } catch (CameraAccessException | IllegalStateException e) {
                CamLog.e("StopPreviewTask: Close session failed: ", e);
            }
            this.mLatch.countDown();
        } finally {
            CameraController.access$2202(this.this$0, null);
            CameraController.access$2302(this.this$0, null);
            CameraController.access$2402(this.this$0, null);
            CameraController.access$2502(this.this$0, null);
            CameraController.access$2602(this.this$0, null);
        }
    }
}
