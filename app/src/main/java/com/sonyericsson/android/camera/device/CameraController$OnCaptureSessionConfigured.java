package com.sonyericsson.android.camera.device;

import android.hardware.camera2.CameraCaptureSession;
import android.support.annotation.WorkerThread;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.Iterator;

@WorkerThread
class CameraController$OnCaptureSessionConfigured extends CameraDeviceHandler$CameraDeviceAccessTask {
    private final CameraCaptureSession mResult;
    private final CameraController$ConfigStateCallback mSender;
    final /* synthetic */ CameraController this$0;

    /* synthetic */ CameraController$OnCaptureSessionConfigured(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CameraCaptureSession cameraCaptureSession, CameraController$ConfigStateCallback cameraController$ConfigStateCallback, CameraController$1 cameraController$1) {
        this(cameraController, cameraDeviceHandler$CameraSessionId, cameraCaptureSession, cameraController$ConfigStateCallback);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private CameraController$OnCaptureSessionConfigured(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CameraCaptureSession cameraCaptureSession, CameraController$ConfigStateCallback cameraController$ConfigStateCallback) {
        super(cameraDeviceHandler$CameraSessionId);
        this.this$0 = cameraController;
        this.mResult = cameraCaptureSession;
        this.mSender = cameraController$ConfigStateCallback;
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    protected boolean verifyCameraDeviceStatus() {
        if (getOpenCloseStatusInfo().isCloseCameraTaskRequested()) {
            return false;
        }
        if (this.this$0.getCameraDeviceStatus() == CameraDeviceHandler$CameraDeviceStatus.STATUS_OPENED) {
            return true;
        }
        if (CamLog.DEBUG) {
            CamLog.d("CurrentDeviceState is not OPENED.");
        }
        return false;
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    public void doCameraDeviceAccess() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked sessionId:" + getSessionId());
        }
        if (CameraController.access$3900(this.this$0) != this.mSender) {
            if (CamLog.DEBUG) {
                CamLog.d("This callback is invalid.");
                return;
            }
            return;
        }
        if (this.mResult == null) {
            CameraController.access$1500(this.this$0, getSessionId(), getOpenCloseStatusInfo(), CameraDeviceHandler$ErrorCode.ERROR_ON_CONFIGURE_FAILED);
            CameraController.access$2000(this.this$0).clear();
            return;
        }
        CameraController.access$4602(this.this$0, true);
        CameraController.access$4702(this.this$0, 0);
        this.this$0.setCameraDeviceStatus(CameraDeviceHandler$CameraDeviceStatus.STATUS_READY);
        CameraController.access$2202(this.this$0, this.mResult);
        CameraController.access$2302(this.this$0, new CaptureRequestDumper(CameraController.access$4800(), CameraController.access$2200(this.this$0)));
        if (CameraController.access$2500(this.this$0) != null) {
            this.this$0.setRepeatingRequestInternal(getSessionId(), false);
        }
        Iterator it = CameraController.access$2000(this.this$0).iterator();
        while (it.hasNext()) {
            CameraController.access$1000(this.this$0).postCameraDeviceThread((CameraController$OneShotCaptureTask) it.next());
            if (CamLog.DEBUG) {
                CamLog.d("Pending OneShotCaptureTask is posted.");
            }
        }
        CameraController.access$2000(this.this$0).clear();
    }
}
