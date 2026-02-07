package com.sonyericsson.android.camera.device;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.params.SessionConfiguration;
import android.support.annotation.WorkerThread;
import android.view.SurfaceHolder;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
@WorkerThread
class CameraController$CreateCaptureSessionTask extends CameraDeviceHandler$CameraDeviceAccessTask {
    private CameraController$PreviewSessionRequest mRequest;
    final /* synthetic */ CameraController this$0;

    /* synthetic */ CameraController$CreateCaptureSessionTask(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CameraController$PreviewSessionRequest cameraController$PreviewSessionRequest, CameraController$1 cameraController$1) {
        this(cameraController, cameraDeviceHandler$CameraSessionId, cameraController$PreviewSessionRequest);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private CameraController$CreateCaptureSessionTask(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CameraController$PreviewSessionRequest cameraController$PreviewSessionRequest) {
        super(cameraDeviceHandler$CameraSessionId);
        this.this$0 = cameraController;
        this.mRequest = cameraController$PreviewSessionRequest;
        setPerformancefLog(PerfLog.CREATE_CAPTURE_SESSION_TASK);
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    protected boolean verifyCameraDeviceStatus() {
        switch (CameraController$2.$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus[this.this$0.getCameraDeviceStatus().ordinal()]) {
            case 1:
            case 2:
                return false;
            case 3:
            case 4:
                return true;
            case 5:
                if (getOpenCloseStatusInfo().isErrorCaused() || getOpenCloseStatusInfo().isCloseCameraTaskRequested()) {
                    return false;
                }
                this.this$0.triggerRestartPreview(getSessionId(), true);
                return false;
            default:
                throw new IllegalStateException("Failed due to wrong status in CreateCaptureSessionTask. status: " + this.this$0.getCameraDeviceStatus());
        }
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    protected void postCameraDeviceAccess() {
        switch (CameraController$2.$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus[this.this$0.getCameraDeviceStatus().ordinal()]) {
            case 1:
            case 2:
            case 5:
                CameraController.access$2000(this.this$0).clear();
                break;
        }
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    public void doCameraDeviceAccess() {
        if (CamLog.DEBUG) {
            CamLog.d("CreateCaptureSessionTask invoked isVideo:" + CameraController.access$1000(this.this$0).isVideo());
        }
        CameraParameters parameters = CameraController.access$1000(this.this$0).getParameters(getSessionId());
        this.this$0.setCameraDeviceStatus(CameraDeviceHandler$CameraDeviceStatus.STATUS_OPENED);
        if (CamLog.DEBUG) {
            CamLog.d("CreateCaptureSessionTask executed request:" + this.mRequest);
        }
        if (CameraController.access$1000(this.this$0).isVideo()) {
            int iWidth = parameters.getPreviewSize().width();
            int iHeight = parameters.getPreviewSize().height();
            if (CameraController$PreviewSessionRequest.access$3500(this.mRequest)) {
                CameraController.access$2800(this.this$0);
            } else {
                CameraController.access$3600(this.this$0, iWidth, iHeight);
            }
            CameraController.access$2700(this.this$0);
        } else {
            CameraController.access$2800(this.this$0);
            if (CameraController$PreviewSessionRequest.access$3700(this.mRequest)) {
                CameraController.access$3800(this.this$0, parameters.getPreviewSize().width(), parameters.getPreviewSize().height());
            } else {
                CameraController.access$2700(this.this$0);
            }
        }
        CameraController.access$2202(this.this$0, null);
        CameraController.access$2302(this.this$0, null);
        CameraController.access$3902(this.this$0, new CameraController$ConfigStateCallback(this.this$0, getSessionId(), null));
        CameraController.access$2402(this.this$0, new OutputConfiguration(PlatformDependencyResolver.getSurfaceSize(parameters.getPreviewSize(), CameraController$PreviewSessionRequest.access$3500(this.mRequest)), SurfaceHolder.class));
        ArrayList arrayList = new ArrayList();
        arrayList.add(CameraController.access$2400(this.this$0));
        if (CameraController.access$4100(this.this$0) != null) {
            arrayList.add(new OutputConfiguration(CameraController.access$4100(this.this$0).getSurface()));
        }
        if (CameraController.access$4200(this.this$0) != null) {
            arrayList.add(new OutputConfiguration(CameraController.access$4200(this.this$0).getSurface()));
        }
        try {
            CameraController.access$1800(this.this$0).createCaptureSession(new SessionConfiguration(CameraController$PreviewSessionRequest.access$4300(this.mRequest), arrayList, CameraController.access$4400(this.this$0), CameraController.access$3900(this.this$0)));
        } catch (CameraAccessException e) {
            CamLog.e("CreateCaptureSessionTask() : Failed by CameraAccessException", e);
            if (!CameraController.access$1000(this.this$0).isIgnoreCameraError() || getOpenCloseStatusInfo().isErrorCaused()) {
                CamLog.w("Failed in createCaptureSession", e);
                return;
            }
            throw new RuntimeException("Failed in createCaptureSession by CameraAccessException. Reason:", e.getCause());
        }
    }
}
