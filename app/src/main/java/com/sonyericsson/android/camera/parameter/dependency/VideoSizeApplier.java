package com.sonyericsson.android.camera.parameter.dependency;

import com.sonyericsson.android.camera.configuration.UserSettingSelectability;
import com.sonyericsson.android.camera.configuration.parameters.FusionMode;
import com.sonyericsson.android.camera.configuration.parameters.ObjectTracking;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoShutterTrigger;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.device.CameraInfo$CameraId;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;
import com.sonyericsson.android.camera.parameter.ParameterUtil;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;

/* JADX INFO: loaded from: classes.dex */
public class VideoSizeApplier extends DependencyApplier {
    public static final String TAG = "VideoSizeApplier";
    private final VideoSize mValue;

    public VideoSizeApplier(VideoSize videoSize) {
        this.mValue = videoSize;
    }

    @Override // com.sonyericsson.android.camera.parameter.dependency.DependencyApplier
    public void apply(CapturingModeParams capturingModeParams) {
        CameraInfo$CameraId cameraInfo$CameraId = capturingModeParams.getActionMode().mCameraId;
        VideoSize videoSize = (VideoSize) capturingModeParams.mVideoSize.get();
        switch (VideoSizeApplier$1.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize[this.mValue.ordinal()]) {
            case 1:
            case 2:
                applyCollections(cameraInfo$CameraId, videoSize, capturingModeParams);
                break;
            case 3:
                apply60Fps(cameraInfo$CameraId, videoSize, capturingModeParams);
                break;
            case 4:
            case 5:
                apply4k(cameraInfo$CameraId, videoSize, capturingModeParams);
                break;
            case 6:
                apply30Fps(cameraInfo$CameraId, videoSize, capturingModeParams);
                break;
            default:
                applyOther(cameraInfo$CameraId, videoSize, capturingModeParams);
                break;
        }
        if (((FusionMode) capturingModeParams.mFusionMode.get()).getKey().getSelectability() != UserSettingSelectability.FIXED) {
            if (!PlatformCapability.isFusionSupportedWith(cameraInfo$CameraId, videoSize) || capturingModeParams.mVideoHdr.get() == VideoHdr.HDR_ON) {
                ParameterUtil.unavailable(capturingModeParams.mFusionMode, capturingModeParams.mFusionMode.get());
            } else {
                ParameterUtil.reset(capturingModeParams.mFusionMode);
            }
            DependencyApplier dependencyApplierCreate = DependencyApplier.create(capturingModeParams.mFusionMode.get());
            if (dependencyApplierCreate != null) {
                dependencyApplierCreate.apply(capturingModeParams);
            }
        }
    }

    @Override // com.sonyericsson.android.camera.parameter.dependency.DependencyApplier
    public void reset(CapturingModeParams capturingModeParams) {
        if ((this.mValue == VideoSize.FOUR_K_UHD_H264 || this.mValue == VideoSize.FOUR_K_UHD_H265) && capturingModeParams.mVideoHdr.get() != VideoHdr.HDR_ON) {
            ParameterUtil.reset(capturingModeParams.mObjectTracking);
            ParameterUtil.reset(capturingModeParams.mVideoShutterTrigger);
        }
    }

    private void applyCollections(CameraInfo$CameraId cameraInfo$CameraId, VideoSize videoSize, CapturingModeParams capturingModeParams) {
        boolean zIsSteadyShotSupported = VideoStabilizer.isSteadyShotSupported(cameraInfo$CameraId, videoSize);
        boolean zIsIntelligentActiveAvailable = DependencyCheckUtil.isIntelligentActiveAvailable(cameraInfo$CameraId, videoSize, (VideoHdr) capturingModeParams.mVideoHdr.get());
        if (zIsSteadyShotSupported || zIsIntelligentActiveAvailable) {
            ParameterUtil.reset(capturingModeParams.mVideoStabilizer);
        } else {
            ParameterUtil.unavailable(capturingModeParams.mVideoStabilizer, VideoStabilizer.OFF);
        }
        ParameterUtil.unavailable(capturingModeParams.mVideoHdr, VideoHdr.HDR_OFF);
        ParameterUtil.reset(capturingModeParams.mVideoCodec);
        ParameterUtil.reset(capturingModeParams.mVideoShutterTrigger);
        ParameterUtil.reset(capturingModeParams.mObjectTracking);
    }

    private void apply60Fps(CameraInfo$CameraId cameraInfo$CameraId, VideoSize videoSize, CapturingModeParams capturingModeParams) {
        if (VideoStabilizer.isSteadyShotSupported(cameraInfo$CameraId, videoSize)) {
            if (capturingModeParams.mVideoStabilizer.get() == VideoStabilizer.INTELLIGENT_ACTIVE) {
                ParameterUtil.applyRecommendedValue(capturingModeParams.mVideoStabilizer, VideoStabilizer.STEADY_SHOT);
            } else {
                ParameterUtil.reset(capturingModeParams.mVideoStabilizer);
            }
        } else {
            ParameterUtil.unavailable(capturingModeParams.mVideoStabilizer, VideoStabilizer.OFF);
        }
        ParameterUtil.unavailable(capturingModeParams.mVideoHdr, VideoHdr.HDR_OFF);
        ParameterUtil.reset(capturingModeParams.mVideoCodec);
        ParameterUtil.reset(capturingModeParams.mVideoShutterTrigger);
        ParameterUtil.reset(capturingModeParams.mObjectTracking);
    }

    private void apply4k(CameraInfo$CameraId cameraInfo$CameraId, VideoSize videoSize, CapturingModeParams capturingModeParams) {
        ParameterUtil.unavailable(capturingModeParams.mObjectTracking, ObjectTracking.OFF);
        ParameterUtil.unavailable(capturingModeParams.mVideoShutterTrigger, VideoShutterTrigger.OFF);
        if (capturingModeParams.mVideoHdr.get() != VideoHdr.HDR_ON) {
            if (VideoStabilizer.isSteadyShotSupported(cameraInfo$CameraId, videoSize)) {
                if (capturingModeParams.mVideoStabilizer.get() == VideoStabilizer.INTELLIGENT_ACTIVE) {
                    ParameterUtil.applyRecommendedValue(capturingModeParams.mVideoStabilizer, VideoStabilizer.STEADY_SHOT);
                } else {
                    ParameterUtil.reset(capturingModeParams.mVideoStabilizer);
                }
            } else {
                ParameterUtil.unavailable(capturingModeParams.mVideoStabilizer, VideoStabilizer.OFF);
            }
            ParameterUtil.reset(capturingModeParams.mVideoCodec);
        }
        ParameterUtil.reset(capturingModeParams.mVideoHdr);
    }

    private void applyOther(CameraInfo$CameraId cameraInfo$CameraId, VideoSize videoSize, CapturingModeParams capturingModeParams) {
        boolean zIsSteadyShotSupported = VideoStabilizer.isSteadyShotSupported(cameraInfo$CameraId, videoSize);
        boolean zIsIntelligentActiveAvailable = DependencyCheckUtil.isIntelligentActiveAvailable(cameraInfo$CameraId, videoSize, (VideoHdr) capturingModeParams.mVideoHdr.get());
        if (zIsSteadyShotSupported || zIsIntelligentActiveAvailable) {
            ParameterUtil.reset(capturingModeParams.mVideoStabilizer);
        } else {
            ParameterUtil.unavailable(capturingModeParams.mVideoStabilizer, VideoStabilizer.OFF);
        }
        ParameterUtil.unavailable(capturingModeParams.mVideoHdr, VideoHdr.HDR_OFF);
        ParameterUtil.reset(capturingModeParams.mVideoCodec);
        ParameterUtil.reset(capturingModeParams.mVideoShutterTrigger);
        ParameterUtil.reset(capturingModeParams.mObjectTracking);
    }

    private void apply30Fps(CameraInfo$CameraId cameraInfo$CameraId, VideoSize videoSize, CapturingModeParams capturingModeParams) {
        if (capturingModeParams.mVideoHdr.get() != VideoHdr.HDR_ON) {
            boolean zIsSteadyShotSupported = VideoStabilizer.isSteadyShotSupported(cameraInfo$CameraId, videoSize);
            boolean zIsIntelligentActiveAvailable = DependencyCheckUtil.isIntelligentActiveAvailable(cameraInfo$CameraId, videoSize, (VideoHdr) capturingModeParams.mVideoHdr.get());
            if (zIsSteadyShotSupported || zIsIntelligentActiveAvailable) {
                ParameterUtil.reset(capturingModeParams.mVideoStabilizer);
            } else {
                ParameterUtil.unavailable(capturingModeParams.mVideoStabilizer, VideoStabilizer.OFF);
            }
            ParameterUtil.reset(capturingModeParams.mVideoHdr);
            ParameterUtil.reset(capturingModeParams.mVideoCodec);
            ParameterUtil.reset(capturingModeParams.mVideoShutterTrigger);
            return;
        }
        ParameterUtil.unavailable(capturingModeParams.mVideoShutterTrigger, VideoShutterTrigger.OFF);
    }
}
