package com.sonyericsson.android.camera.device;

import android.content.Context;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CaptureRequest;
import android.support.annotation.WorkerThread;
import com.sonyericsson.android.camera.configuration.parameters.FastCapture;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingConstants$JpegQuality;
import com.sonyericsson.cameracommon.status.EachCameraStatusPublisher;
import com.sonyericsson.cameracommon.status.GlobalCameraStatusPublisher;
import com.sonyericsson.cameracommon.status.eachcamera.DeviceStatus;
import com.sonyericsson.cameracommon.status.eachcamera.DeviceStatus$Value;
import com.sonyericsson.cameracommon.status.global.BuiltInCameraIds;

/* JADX INFO: loaded from: classes.dex */
@WorkerThread
class CameraController$OpenCameraTask extends CameraDeviceHandler$CameraDeviceAccessTask {
    private final FastCapture mFastCapture;
    final /* synthetic */ CameraController this$0;

    /* synthetic */ CameraController$OpenCameraTask(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, FastCapture fastCapture, CameraController$1 cameraController$1) {
        this(cameraController, cameraDeviceHandler$CameraSessionId, fastCapture);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private CameraController$OpenCameraTask(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, FastCapture fastCapture) {
        super(cameraDeviceHandler$CameraSessionId);
        this.this$0 = cameraController;
        this.mFastCapture = fastCapture;
        setPerformancefLog(PerfLog.OPEN_CAMERA_TASK);
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    protected boolean verifyCameraDeviceStatus() {
        if (getOpenCloseStatusInfo().isCloseCameraTaskRequested()) {
            if (CamLog.DEBUG) {
                CamLog.d("OpenCameraTask : CloseCameraTask is already requested.");
            }
            return false;
        }
        if (!getOpenCloseStatusInfo().isErrorCaused()) {
            return true;
        }
        if (CamLog.DEBUG) {
            CamLog.d("OpenCameraTask : should not open because of error caused.");
        }
        return false;
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    public void doCameraDeviceAccess() {
        getOpenCloseStatusInfo().setPerformed(CameraDeviceHandler$OpenClosePerformStatus.CAMERA_OPENED);
        CameraParameters parameters = CameraController.access$1000(this.this$0).getParameters(getSessionId());
        if (this.mFastCapture != FastCapture.LAUNCH_AND_CAPTURE) {
            CameraController.access$000(this.this$0).onOpenCameraRequested(getSessionId());
        }
        if (CamLog.DEBUG) {
            CamLog.d("OpenCameraTask invoked cameraId:" + parameters.getCameraId());
        }
        CameraController.access$1102(this.this$0, new CameraController$CameraStateCallback(this.this$0, getSessionId(), null));
        try {
            CameraController.access$1400(this.this$0).openCamera(parameters.getCameraId().getCameraDeviceId(), CameraController.access$1100(this.this$0), CameraController.access$1300(this.this$0));
            if (!CameraController.access$1000(this.this$0).awaitLoadSettingsThread()) {
                CamLog.e("OpenCameraTask() : Failed to load setting.");
                CameraController$CameraStateCallback.access$1600(CameraController.access$1100(this.this$0));
                CameraController.access$1500(this.this$0, getSessionId(), getOpenCloseStatusInfo(), CameraDeviceHandler$ErrorCode.ERROR_ON_CAMERA_ERROR);
                return;
            }
            CameraController.access$1700(this.this$0).set(CaptureRequest.JPEG_QUALITY, Byte.valueOf((byte) MediaSavingConstants$JpegQuality.getPlatformQualityFromCameraProfile(2)));
            CameraController.access$1802(this.this$0, CameraController$CameraStateCallback.access$1900(CameraController.access$1100(this.this$0)));
            if (CameraController.access$1800(this.this$0) == null) {
                CamLog.e("OpenCameraTask() : Failed to open camera.");
                CameraController.access$1500(this.this$0, getSessionId(), getOpenCloseStatusInfo(), CameraDeviceHandler$ErrorCode.ERROR_ON_CAMERA_ERROR);
                return;
            }
            this.this$0.setCameraDeviceStatus(CameraDeviceHandler$CameraDeviceStatus.STATUS_OPENED);
            boolean zIsNeedCreatePreviewSession = this.mFastCapture != FastCapture.LAUNCH_AND_CAPTURE ? true : CameraController.access$1000(this.this$0).isNeedCreatePreviewSession();
            if (getOpenCloseStatusInfo().isCloseCameraTaskRequested()) {
                CamLog.d("OpenCameraTask() : CloseCameraTask() is already requested.");
                return;
            }
            if (!isPreProcessing()) {
                CameraController.access$1000(this.this$0).prepareCaptureImageReader();
            }
            CameraController.access$2000(this.this$0).clear();
            if (zIsNeedCreatePreviewSession) {
                this.this$0.createPreviewSession(getSessionId());
            }
            if (this.mFastCapture == FastCapture.LAUNCH_AND_CAPTURE) {
                CameraController.access$000(this.this$0).onOpenCameraRequested(getSessionId());
            }
            Context contextAccess$2100 = CameraController.access$2100(this.this$0);
            if (contextAccess$2100 != null) {
                new EachCameraStatusPublisher(contextAccess$2100, parameters.getCameraId()).put(new DeviceStatus(DeviceStatus$Value.POWER_ON)).publish();
                new GlobalCameraStatusPublisher(contextAccess$2100).put(new BuiltInCameraIds(parameters.getCameraId())).publish();
            }
        } catch (CameraAccessException | IllegalArgumentException | SecurityException e) {
            CamLog.e("OpenCameraTask() : Failed by CameraAccessException", e);
            CameraController.access$1500(this.this$0, getSessionId(), getOpenCloseStatusInfo(), CameraDeviceHandler$ErrorCode.ERROR_ON_CAMERA_ERROR);
        }
    }

    private boolean isPreProcessing() {
        return (CameraController.access$1000(this.this$0).getPreProcessState() == CameraDeviceHandler$PreProcessState.NOT_STARTED || CameraController.access$1000(this.this$0).getPreProcessState() == CameraDeviceHandler$PreProcessState.PRE_CAPTURE_RELEASED) ? false : true;
    }
}
