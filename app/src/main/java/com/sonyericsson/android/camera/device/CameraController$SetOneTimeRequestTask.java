package com.sonyericsson.android.camera.device;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CaptureRequest;
import android.support.annotation.WorkerThread;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
@WorkerThread
class CameraController$SetOneTimeRequestTask extends CameraDeviceHandler$CameraDeviceAccessTask {
    private final CameraController$CaptureSessionCallback mCaptureSessionCallback;
    private final CaptureRequestHolder mRequestHolder;
    private final Object mTag;
    final /* synthetic */ CameraController this$0;

    /* synthetic */ CameraController$SetOneTimeRequestTask(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CaptureRequestHolder captureRequestHolder, Object obj, CameraController$1 cameraController$1) {
        this(cameraController, cameraDeviceHandler$CameraSessionId, captureRequestHolder, obj);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private CameraController$SetOneTimeRequestTask(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CaptureRequestHolder captureRequestHolder, Object obj) {
        super(cameraDeviceHandler$CameraSessionId);
        this.this$0 = cameraController;
        this.mRequestHolder = captureRequestHolder;
        this.mCaptureSessionCallback = new CameraController$CaptureSessionCallback(cameraController, cameraDeviceHandler$CameraSessionId, (CameraController$1) null);
        this.mTag = obj;
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    protected boolean verifyCameraDeviceStatus() {
        switch (CameraController$2.$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus[this.this$0.getCameraDeviceStatus().ordinal()]) {
            case 1:
            case 2:
            case 4:
            case 5:
                return false;
            case 3:
                return true;
            default:
                throw new IllegalStateException("Failed due to wrong status in SetOneTimeRequestTask. status: " + this.this$0.getCameraDeviceStatus());
        }
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    public void doCameraDeviceAccess() {
        if (CameraController.access$2500(this.this$0) == null) {
            CamLog.d("SetOneTimeRequestTask : mPreviewSurface is null.");
            return;
        }
        if (!CameraController.access$2500(this.this$0).isValid()) {
            this.this$0.setCameraDeviceStatus(CameraDeviceHandler$CameraDeviceStatus.STATUS_OPENED);
            CamLog.d("SetOneTimeRequestTask : mPreviewSurface is invalid.(before creating capture request)");
            return;
        }
        if (CameraController.access$2400(this.this$0) != null && CameraController.access$2400(this.this$0).getSurface() == null) {
            CameraController.access$2400(this.this$0).addSurface(CameraController.access$2500(this.this$0));
            try {
                CameraController.access$2200(this.this$0).finalizeOutputConfigurations(Arrays.asList(CameraController.access$2400(this.this$0)));
                CameraController.access$2402(this.this$0, null);
            } catch (CameraAccessException unused) {
                CamLog.e("SetOneTimeRequestTask: finalizeOutputConfigurations failed.");
                CameraController.access$1500(this.this$0, getSessionId(), getOpenCloseStatusInfo(), CameraDeviceHandler$ErrorCode.ERROR_ON_CAMERA_ERROR);
                return;
            }
        }
        CaptureRequest captureRequestCreateCaptureRequest = this.mRequestHolder.createCaptureRequest(CameraController.access$1800(this.this$0), 1, this.mTag, CameraController.access$2500(this.this$0));
        if (captureRequestCreateCaptureRequest == null) {
            CamLog.i("SetOneTimeRequestTask : CaptureRequest cannot be created.");
            return;
        }
        if (!CameraController.access$2500(this.this$0).isValid()) {
            this.this$0.setCameraDeviceStatus(CameraDeviceHandler$CameraDeviceStatus.STATUS_OPENED);
            CamLog.d("SetOneTimeRequestTask : mPreviewSurface is invalid.(before performing capture)");
            return;
        }
        try {
            if (CamLog.DEBUG) {
                CamLog.d("capture()");
            }
            CameraController.access$2200(this.this$0).capture(captureRequestCreateCaptureRequest, this.mCaptureSessionCallback, CameraController.access$1000(this.this$0).getDeviceThreadHandler());
            if (CamLog.DEBUG) {
                CameraController.access$2300(this.this$0).update(captureRequestCreateCaptureRequest);
                CameraController.access$2300(this.this$0).dump();
            }
        } catch (CameraAccessException e) {
            if (!CameraController.access$1000(this.this$0).isIgnoreCameraError() || getOpenCloseStatusInfo().isErrorCaused()) {
                CamLog.w("Failed in SetOneTimeRequestTask", e);
                return;
            }
            if (!CameraController.access$2500(this.this$0).isValid()) {
                this.this$0.setCameraDeviceStatus(CameraDeviceHandler$CameraDeviceStatus.STATUS_OPENED);
                CamLog.d("SetOneTimeRequestTask : mPreviewSurface is invalid.(after performing capture)");
            } else {
                throw new RuntimeException("Failed in SetOneTimeRequestTask by CameraAccessException. Reason:" + e.getReason());
            }
        } catch (IllegalArgumentException e2) {
            CamLog.w("Failed in SetOneTimeRequestTask.", e2);
        }
    }
}
