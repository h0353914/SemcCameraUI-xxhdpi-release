package com.sonyericsson.android.camera.device;

import android.support.annotation.WorkerThread;
import com.sonyericsson.android.camera.configuration.parameters.PredictiveCapture;
import com.sonyericsson.android.camera.configuration.parameters.SlowMotion;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.recorder.RecordingProfile;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$PhotoMode;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$SuperSlowMode;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$SuperSlowRecordingParameters;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$VideoMode;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCameraTimeoutException;

/* JADX INFO: loaded from: classes.dex */
@WorkerThread
class BypassCameraController$ChangeBypassCameraModeTask extends CameraDeviceHandler$CameraDeviceAccessTask {
    final /* synthetic */ BypassCameraController this$0;

    /* synthetic */ BypassCameraController$ChangeBypassCameraModeTask(BypassCameraController bypassCameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, BypassCameraController$1 bypassCameraController$1) {
        this(bypassCameraController, cameraDeviceHandler$CameraSessionId);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private BypassCameraController$ChangeBypassCameraModeTask(BypassCameraController bypassCameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        super(cameraDeviceHandler$CameraSessionId);
        this.this$0 = bypassCameraController;
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    public boolean verifyCameraDeviceStatus() {
        return getOpenCloseStatusInfo().isOpenBypassCameraTaskPerformed() && !getOpenCloseStatusInfo().isCloseBypassCameraTaskPerformed();
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    public void doCameraDeviceAccess() {
        CameraParameters parameters = BypassCameraController.access$1400(this.this$0).getParameters(getSessionId());
        SlowMotion slowMotion = parameters.getSlowMotion();
        if (!BypassCameraController.access$1400(this.this$0).isVideo()) {
            if (CamLog.DEBUG) {
                CamLog.d("changeToPhotoMode() preview:" + parameters.getPreviewSize() + " picture:" + parameters.getPictureSize() + " captureNum:" + PredictiveCapture.AUTO.getCaptureNum());
            }
            try {
                BypassCameraController.access$1200(this.this$0).changeToPhotoMode(BypassCamera$PhotoMode.NORMAL, BypassCameraController.access$2800(this.this$0, parameters.getPreviewSize()), BypassCameraController.access$2800(this.this$0, parameters.getPictureSize()), PredictiveCapture.AUTO.getCaptureNum());
            } catch (BypassCameraTimeoutException unused) {
                BypassCameraController.access$2900(this.this$0, getSessionId());
            }
            if (CamLog.DEBUG) {
                CamLog.d("setConfig() climax:" + BypassCameraController.access$2000(this.this$0).get("climax-recognition"));
            }
            BypassCameraController.access$1200(this.this$0).setConfig(BypassCameraController.access$2000(this.this$0));
            return;
        }
        if (slowMotion == SlowMotion.SUPER_SLOW_MOTION || slowMotion == SlowMotion.SUPER_SLOW_SHOT) {
            BypassCamera$SuperSlowMode superSlowVideoMode = getSuperSlowVideoMode(slowMotion);
            VideoSize videoSize = parameters.getVideoSize();
            BypassCamera$SuperSlowRecordingParameters bypassCamera$SuperSlowRecordingParametersCreateSuperSlowRecordingParameters = createSuperSlowRecordingParameters();
            int videoFrameRate = RecordingProfile.getVideoFrameRate(videoSize, VideoHdr.HDR_OFF);
            if (CamLog.DEBUG) {
                CamLog.d("changeToSuperSlowMode() mode:" + superSlowVideoMode + " preview:" + parameters.getPreviewSize() + " video:" + videoSize.getVideoRect() + " framerate:" + videoFrameRate + " superSlowFps:" + bypassCamera$SuperSlowRecordingParametersCreateSuperSlowRecordingParameters.fps + " superSlowFrameNum:" + bypassCamera$SuperSlowRecordingParametersCreateSuperSlowRecordingParameters.frameNum);
            }
            try {
                BypassCameraController.access$1200(this.this$0).changeToSuperSlowMode(superSlowVideoMode, BypassCameraController.access$2800(this.this$0, parameters.getPreviewSize()), BypassCameraController.access$2800(this.this$0, videoSize.getVideoRect()), videoFrameRate, bypassCamera$SuperSlowRecordingParametersCreateSuperSlowRecordingParameters);
                return;
            } catch (BypassCameraTimeoutException unused2) {
                BypassCameraController.access$2900(this.this$0, getSessionId());
                return;
            }
        }
        VideoSize videoSize2 = parameters.getVideoSize();
        VideoHdr videoHdr = parameters.getVideoHdr();
        BypassCamera$VideoMode bypassCamera$VideoModeAccess$2700 = BypassCameraController.access$2700(this.this$0, parameters.getCameraId(), parameters.getVideoStabilizer(), parameters.getVideoHdr());
        int videoFrameRate2 = RecordingProfile.getVideoFrameRate(videoSize2, videoHdr);
        if (CamLog.DEBUG) {
            CamLog.d("changeToVideoMode() mode:" + bypassCamera$VideoModeAccess$2700 + " preview:" + parameters.getPreviewSize() + " video:" + videoSize2.getVideoRect() + " framerate:" + videoFrameRate2);
        }
        try {
            BypassCameraController.access$1200(this.this$0).changeToVideoMode(bypassCamera$VideoModeAccess$2700, BypassCameraController.access$2800(this.this$0, parameters.getPreviewSize()), BypassCameraController.access$2800(this.this$0, videoSize2.getVideoRect()), videoFrameRate2);
        } catch (BypassCameraTimeoutException unused3) {
            BypassCameraController.access$2900(this.this$0, getSessionId());
        }
    }

    private BypassCamera$SuperSlowMode getSuperSlowVideoMode(SlowMotion slowMotion) {
        if (slowMotion == SlowMotion.SUPER_SLOW_MOTION) {
            return BypassCamera$SuperSlowMode.SUPER_SLOW_MOTION;
        }
        if (slowMotion == SlowMotion.SUPER_SLOW_SHOT) {
            return BypassCamera$SuperSlowMode.SUPER_SLOW_SHOT;
        }
        throw new IllegalArgumentException("value is not super slow, value = " + slowMotion);
    }

    private BypassCamera$SuperSlowRecordingParameters createSuperSlowRecordingParameters() {
        CameraParameters parameters = BypassCameraController.access$1400(this.this$0).getParameters(getSessionId());
        return new BypassCamera$SuperSlowRecordingParameters((int) PlatformCapability.getSuperSlowFrameRate(parameters.getCameraId(), parameters.getVideoSize()), (int) PlatformCapability.getSuperSlowFrameNum(parameters.getCameraId(), parameters.getVideoSize()));
    }
}
