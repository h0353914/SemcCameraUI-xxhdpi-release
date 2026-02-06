package com.sonyericsson.android.camera.device;

import android.content.Context;
import android.hardware.camera2.CameraAccessException;
import android.support.annotation.WorkerThread;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.status.EachCameraStatusPublisher;
import com.sonyericsson.cameracommon.status.GlobalCameraStatusPublisher;

@WorkerThread
class CameraController$CloseCameraTask extends CameraDeviceHandler$CameraDeviceAccessTask {
    final /* synthetic */ CameraController this$0;

    /* synthetic */ CameraController$CloseCameraTask(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CameraController$1 cameraController$1) {
        this(cameraController, cameraDeviceHandler$CameraSessionId);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private CameraController$CloseCameraTask(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        super(cameraDeviceHandler$CameraSessionId);
        this.this$0 = cameraController;
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    protected boolean verifyCameraDeviceStatus() {
        return getOpenCloseStatusInfo().isOpenCameraTaskPerformed();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    public void doCameraDeviceAccess() {
        getOpenCloseStatusInfo().setPerformed(CameraDeviceHandler$OpenClosePerformStatus.CAMERA_CLOSED);
        CameraController.access$1000(this.this$0).releaseRecorderOnCameraClosed();
        CamLog.d("CloseCameraTask() : Current device status = " + this.this$0.getCameraDeviceStatus());
        try {
            switch (CameraController$2.$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus[this.this$0.getCameraDeviceStatus().ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
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
                        break;
                    } catch (CameraAccessException e) {
                        CamLog.e("CloseCameraTask() : Failed by CameraAccessException", e);
                    } catch (IllegalStateException e2) {
                        CamLog.e("CloseCameraTask() : Failed by IllegalStateException", e2);
                        if (CameraController.access$1000(this.this$0).isIgnoreCameraError() && !getOpenCloseStatusInfo().isErrorCaused()) {
                            throw new IllegalStateException(e2);
                        }
                    }
                    CameraController.access$2700(this.this$0);
                    CameraController.access$2800(this.this$0);
                    if (CameraController.access$1800(this.this$0) != null) {
                        CameraController.access$1800(this.this$0).close();
                        CameraController.access$1802(this.this$0, null);
                    }
                    this.this$0.setCameraDeviceStatus(CameraDeviceHandler$CameraDeviceStatus.STATUS_RELEASED);
                default:
                    Context contextAccess$2100 = CameraController.access$2100(this.this$0);
                    if (contextAccess$2100 != null) {
                        new EachCameraStatusPublisher(contextAccess$2100, CameraController.access$1000(this.this$0).getParameters(getSessionId()).getCameraId()).putDefaultAll().publish();
                        new GlobalCameraStatusPublisher(contextAccess$2100).putDefaultAll().publish();
                    }
                    if (CameraController.access$1000(this.this$0).getPreProcessState() == CameraDeviceHandler$PreProcessState.NOT_STARTED || CameraController.access$1000(this.this$0).getPreProcessState() == CameraDeviceHandler$PreProcessState.PRE_CAPTURE_DONE) {
                        CameraController.access$1000(this.this$0).changePreProcessStateTo(CameraDeviceHandler$PreProcessState.NOT_STARTED);
                    } else {
                        CameraController.access$1000(this.this$0).changePreProcessStateTo(CameraDeviceHandler$PreProcessState.PRE_CAPTURE_RELEASED);
                    }
                    CameraController$CameraStateCallback.access$2900(CameraController.access$1100(this.this$0));
                    CameraController.access$1102(this.this$0, null);
                    return;
            }
        } finally {
            CameraController.access$2202(this.this$0, null);
            CameraController.access$2302(this.this$0, null);
            CameraController.access$2402(this.this$0, null);
            CameraController.access$2502(this.this$0, null);
            CameraController.access$2602(this.this$0, null);
        }
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    public void postCameraDeviceAccess() {
        this.mLatch.countDown();
    }
}
