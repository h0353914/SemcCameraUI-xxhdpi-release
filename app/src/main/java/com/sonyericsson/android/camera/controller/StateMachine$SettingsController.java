package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.AspectRatio;
import com.sonyericsson.android.camera.configuration.parameters.AutoReview;
import com.sonyericsson.android.camera.configuration.parameters.CameraKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.DestinationToSave;
import com.sonyericsson.android.camera.configuration.parameters.DisplayFlash;
import com.sonyericsson.android.camera.configuration.parameters.DistortionCorrection;
import com.sonyericsson.android.camera.configuration.parameters.Ev;
import com.sonyericsson.android.camera.configuration.parameters.Facing;
import com.sonyericsson.android.camera.configuration.parameters.FastCapture;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.FocusRange;
import com.sonyericsson.android.camera.configuration.parameters.FrontAngle;
import com.sonyericsson.android.camera.configuration.parameters.FusionMode;
import com.sonyericsson.android.camera.configuration.parameters.Geotag;
import com.sonyericsson.android.camera.configuration.parameters.GridLine;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.HelpGuide;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.Metering;
import com.sonyericsson.android.camera.configuration.parameters.ObjectTracking;
import com.sonyericsson.android.camera.configuration.parameters.PhotoLight;
import com.sonyericsson.android.camera.configuration.parameters.PredictiveCapture;
import com.sonyericsson.android.camera.configuration.parameters.PredictiveLaunch;
import com.sonyericsson.android.camera.configuration.parameters.ResetSettings;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSound;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSpeed;
import com.sonyericsson.android.camera.configuration.parameters.ShutterTrigger;
import com.sonyericsson.android.camera.configuration.parameters.SideSense;
import com.sonyericsson.android.camera.configuration.parameters.SlowMotion;
import com.sonyericsson.android.camera.configuration.parameters.SoftSkin;
import com.sonyericsson.android.camera.configuration.parameters.TouchCapture;
import com.sonyericsson.android.camera.configuration.parameters.TouchIntention;
import com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable;
import com.sonyericsson.android.camera.configuration.parameters.UserSettingValue;
import com.sonyericsson.android.camera.configuration.parameters.VideoCodec;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoShutterTrigger;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.configuration.parameters.VolumeKey;
import com.sonyericsson.android.camera.configuration.parameters.WhiteBalance;
import com.sonyericsson.android.camera.device.CameraInfo$CameraId;
import com.sonyericsson.android.camera.device.CameraParameters;
import com.sonyericsson.android.camera.parameter.dependency.DependencyCheckUtil;
import com.sonyericsson.android.camera.recorder.RecordingProfile;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.cameracommon.status.EachCameraStatusPublisher;
import com.sonyericsson.cameracommon.status.eachcamera.PhotoLight$Value;
import com.sonyericsson.cameracommon.status.eachcamera.SlowMotion$Value;
import com.sonyericsson.cameracommon.status.eachcamera.VideoRecordingFps;
import com.sonyericsson.cameracommon.status.eachcamera.VideoResolution;
import com.sonyericsson.cameracommon.status.eachcamera.VideoStabilizerStatus;

class StateMachine$SettingsController implements UserSettingApplicable {
    final /* synthetic */ StateMachine this$0;

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(AutoReview autoReview) {
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(CameraKey cameraKey) {
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(Facing facing) {
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(FastCapture fastCapture) {
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(Geotag geotag) {
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(GridLine gridLine) {
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(HelpGuide helpGuide) {
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(PredictiveCapture predictiveCapture) {
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(PredictiveLaunch predictiveLaunch) {
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(ResetSettings resetSettings) {
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(ShutterSound shutterSound) {
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(TouchCapture touchCapture) {
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(VideoCodec videoCodec) {
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(VolumeKey volumeKey) {
    }

    private StateMachine$SettingsController(StateMachine stateMachine) {
        this.this$0 = stateMachine;
    }

    /* synthetic */ StateMachine$SettingsController(StateMachine stateMachine, StateMachine$1 stateMachine$1) {
        this(stateMachine);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(CapturingMode capturingMode) {
        VideoSize videoSize = (VideoSize) StateMachine.access$1800(this.this$0).get(UserSettingKey.VIDEO_SIZE);
        StateMachine.access$2400(this.this$0, isSceneRecognitionValid(capturingMode, videoSize, (VideoHdr) StateMachine.access$1800(this.this$0).get(UserSettingKey.VIDEO_HDR)));
        Float zoom = this.this$0.getZoom();
        if (!capturingMode.isFront() && zoom != null && 0.0f < zoom.floatValue()) {
            StateMachine.access$2500(this.this$0);
        }
        StateMachine.access$2600(this.this$0).setCapturingMode(capturingMode);
        StateMachine.access$2600(this.this$0).setVideoSize(videoSize);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(DisplayFlash displayFlash) {
        StateMachine.access$2600(this.this$0).setDisplayFlashMode(displayFlash);
        notifySettingChanged(displayFlash);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(Ev ev) {
        StateMachine.access$2600(this.this$0).setEv(ev);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(Flash flash) {
        StateMachine.access$2600(this.this$0).setFlashMode(flash);
        notifySettingChanged(flash);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(FrontAngle frontAngle) {
        if (StateMachine.access$1100(this.this$0).getCaptureState() == StateMachine$CaptureState.STATE_CROPPING || !this.this$0.getCurrentCapturingMode().isFront()) {
            return;
        }
        if (CamLog.VERBOSE) {
            CamLog.d("set(FrontAngle) value: " + frontAngle);
        }
        StateMachine.access$2600(this.this$0).setZoom(frontAngle == FrontAngle.CROPPED ? (float) ((((double) PlatformCapability.getWideZoomTargetRatio(CameraInfo$CameraId.FRONT)) - 1.0d) / (((double) PlatformCapability.getMaxZoomRatio(CameraInfo$CameraId.FRONT)) - 1.0d)) : 0.0f);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(FocusMode focusMode) {
        StateMachine.access$2600(this.this$0).setFocusMode(focusMode);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(Hdr hdr) {
        StateMachine.access$2600(this.this$0).setHdr(hdr);
        notifySettingChanged(hdr);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(Iso iso) {
        StateMachine.access$2600(this.this$0).setIso(iso);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(Metering metering) {
        StateMachine.access$2600(this.this$0).setMetering(metering);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(PhotoLight photoLight) {
        StateMachine.access$2600(this.this$0).setFlashMode(photoLight.getBooleanValue() ? Flash.LED_ON : Flash.LED_OFF);
        notifySettingChanged(photoLight);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(Resolution resolution) {
        CapturingMode capturingMode = (CapturingMode) StateMachine.access$1800(this.this$0).get(UserSettingKey.CAPTURING_MODE);
        Float zoom = this.this$0.getZoom();
        if (!capturingMode.isFront() && zoom != null && 0.0f < zoom.floatValue()) {
            StateMachine.access$2500(this.this$0);
        }
        StateMachine.access$2600(this.this$0).setResolution(capturingMode.getCameraId(), resolution);
        if (!capturingMode.isFront()) {
            resetZoom();
        }
        StateMachine.access$2700(this.this$0, capturingMode, true);
        if (StateMachine.access$1200(this.this$0) == null || !StateMachine.access$1200(this.this$0).isSetupHeadupDisplayInvoked()) {
            return;
        }
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_ZOOM_CHANGED, 0);
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE, new Object[0]);
        StateMachine.access$2800(this.this$0).stop();
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(AspectRatio aspectRatio) {
        notifySettingChanged(aspectRatio);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(SelfTimer selfTimer) {
        StateMachine.access$2100(this.this$0, selfTimer);
        if (StateMachine.access$1200(this.this$0) != null && StateMachine.access$1200(this.this$0).isSetupHeadupDisplayInvoked()) {
            StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_SELF_TIMER_CONDITION, selfTimer);
        }
        notifySettingChanged(selfTimer);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(ShutterTrigger shutterTrigger) {
        if (((CapturingMode) StateMachine.access$1800(this.this$0).get(UserSettingKey.CAPTURING_MODE)).getType() == 1) {
            if (StateMachine.access$1200(this.this$0) == null) {
                return;
            } else {
                StateMachine.access$2600(this.this$0).setShutterTrigger(shutterTrigger);
            }
        }
        StateMachine.access$300(this.this$0).handleSettingsChanged(shutterTrigger.isGestureShutterOn());
        if (StateMachine.access$1200(this.this$0) != null && StateMachine.access$1200(this.this$0).isSetupHeadupDisplayInvoked()) {
            StateMachine.access$1200(this.this$0).setupFocusRectangles();
            StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED, new Object[0]);
        }
        if (StateMachine.access$1200(this.this$0) != null) {
            StateMachine.access$1200(this.this$0).setShutterTrigger(shutterTrigger);
        }
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(SoftSkin softSkin) {
        StateMachine.access$2600(this.this$0).setSoftSkin(softSkin);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(VideoStabilizer videoStabilizer) {
        if (((CapturingMode) StateMachine.access$1800(this.this$0).get(UserSettingKey.CAPTURING_MODE)).getType() == 2) {
            if (StateMachine.access$500(this.this$0).isOneShotVideo() && StateMachine.access$500(this.this$0).getExtraOutput() != null && !StateMachine.access$500(this.this$0).getExtraOutput().getScheme().equalsIgnoreCase("file")) {
                if (StateMachine.access$2600(this.this$0).isSteadyShotSupported()) {
                    videoStabilizer = VideoStabilizer.STEADY_SHOT;
                } else {
                    videoStabilizer = VideoStabilizer.OFF;
                }
            }
            StateMachine.access$2600(this.this$0).setVideoStabilizer(videoStabilizer);
        }
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(TouchIntention touchIntention) {
        StateMachine.access$2600(this.this$0).setMetering((Metering) StateMachine.access$1800(this.this$0).get(UserSettingKey.METERING));
        if (StateMachine.access$1200(this.this$0) == null || !StateMachine.access$1200(this.this$0).isSetupHeadupDisplayInvoked() || StateMachine.access$1800(this.this$0).get(UserSettingKey.FOCUS_RANGE) == FocusRange.AF || touchIntention == TouchIntention.FOCUS_AND_EXPOSURE) {
            return;
        }
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE, new Object[0]);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(VideoSize videoSize) {
        CapturingMode capturingMode = (CapturingMode) StateMachine.access$1800(this.this$0).get(UserSettingKey.CAPTURING_MODE);
        VideoHdr videoHdr = (VideoHdr) StateMachine.access$1800(this.this$0).get(UserSettingKey.VIDEO_HDR);
        if (capturingMode == CapturingMode.SLOW_MOTION) {
            StateMachine.access$2600(this.this$0).releaseRecorder();
        }
        StateMachine.access$2400(this.this$0, isSceneRecognitionValid(capturingMode, videoSize, videoHdr));
        StateMachine.access$2600(this.this$0).setPreviewSizeAndFpsRangeForVideo(capturingMode.getCameraId(), videoSize, videoHdr);
        Float zoom = this.this$0.getZoom();
        if (!capturingMode.isFront() && zoom != null && 0.0f < zoom.floatValue()) {
            StateMachine.access$2500(this.this$0);
        }
        if (!capturingMode.isFront()) {
            resetZoom();
        }
        StateMachine.access$2600(this.this$0).setVideoSize(videoSize);
        StateMachine.access$2600(this.this$0).setZoom(0.0f);
        FusionMode fusionMode = (FusionMode) StateMachine.access$1800(this.this$0).get(UserSettingKey.FUSION_MODE);
        if (!DependencyCheckUtil.isFusionAvailableOnVideo(capturingMode.getCameraId(), videoSize, videoHdr)) {
            fusionMode = FusionMode.OFF;
        }
        StateMachine.access$2600(this.this$0).setFusionMode(fusionMode);
        StateMachine.access$2700(this.this$0, capturingMode, true);
        if (StateMachine.access$1200(this.this$0) == null || !StateMachine.access$1200(this.this$0).isSetupHeadupDisplayInvoked()) {
            return;
        }
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_VIDEO_HDR_CONDITION, videoHdr, false);
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_ZOOM_CHANGED, 0);
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE, new Object[0]);
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_UPDATE_FUSION_MODE, fusionMode);
        StateMachine.access$2800(this.this$0).stop();
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(VideoHdr videoHdr) {
        CapturingMode capturingMode = (CapturingMode) StateMachine.access$1800(this.this$0).get(UserSettingKey.CAPTURING_MODE);
        if (this.this$0.getCurrentCapturingMode().isFront() && StateMachine.access$1800(this.this$0).get(UserSettingKey.FRONT_ANGLE) == FrontAngle.CROPPED) {
            StateMachine.access$2500(this.this$0);
        }
        VideoSize videoSize = (VideoSize) StateMachine.access$1800(this.this$0).get(UserSettingKey.VIDEO_SIZE);
        if (videoSize == VideoSize.FOUR_K_UHD_H264) {
            if (videoHdr == VideoHdr.HDR_ON) {
                StateMachine.access$2600(this.this$0).setVideoSize(VideoSize.FOUR_K_UHD_H265);
            } else if (videoHdr == VideoHdr.HDR_OFF) {
                StateMachine.access$2600(this.this$0).setVideoSize(videoSize);
            }
        }
        StateMachine.access$2600(this.this$0).setVideoHdr(videoHdr);
        notifySettingChanged(videoHdr);
        FusionMode fusionMode = (FusionMode) StateMachine.access$1800(this.this$0).get(UserSettingKey.FUSION_MODE);
        if (!DependencyCheckUtil.isFusionAvailableOnVideo(capturingMode.getCameraId(), videoSize, videoHdr)) {
            fusionMode = FusionMode.OFF;
        }
        StateMachine.access$2600(this.this$0).setFusionMode(fusionMode);
        StateMachine.access$2400(this.this$0, videoHdr != VideoHdr.HDR_ON && isSceneRecognitionValid(capturingMode, videoSize, (VideoHdr) StateMachine.access$1800(this.this$0).get(UserSettingKey.VIDEO_HDR)));
        StateMachine.access$2600(this.this$0).setPreviewSizeAndFpsRangeForVideo(capturingMode.getCameraId(), videoSize, videoHdr);
        if (!capturingMode.isFront()) {
            resetZoom();
        }
        StateMachine.access$2700(this.this$0, capturingMode, true);
        if (StateMachine.access$1200(this.this$0) == null || !StateMachine.access$1200(this.this$0).isSetupHeadupDisplayInvoked()) {
            return;
        }
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_VIDEO_HDR_CONDITION, videoHdr, true);
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_ZOOM_CHANGED, 0);
        StateMachine.access$2900(this.this$0);
        if (!StateMachine.access$3000(this.this$0)) {
            StateMachine.access$1300(this.this$0, StateMachine.access$1000(this.this$0, StateMachine.access$400(this.this$0)));
        }
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE, new Object[0]);
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_UPDATE_FUSION_MODE, fusionMode);
        StateMachine.access$2800(this.this$0).stop();
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(VideoShutterTrigger videoShutterTrigger) {
        if (StateMachine.access$1200(this.this$0) != null) {
            StateMachine.access$1200(this.this$0).updateVideoShutterTrigger();
        }
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(WhiteBalance whiteBalance) {
        StateMachine.access$2600(this.this$0).setWhiteBalance(whiteBalance);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void commit() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke");
        }
        StateMachine.access$2600(this.this$0).commit();
        if (StateMachine.access$1200(this.this$0) != null) {
            StateMachine.access$1200(this.this$0).commit();
        }
        CameraParameters parameters = StateMachine.access$2600(this.this$0).getParameters();
        if (parameters != null) {
            CameraInfo$CameraId cameraId = ((CapturingMode) StateMachine.access$1800(this.this$0).get(UserSettingKey.CAPTURING_MODE)).getCameraId();
            EachCameraStatusPublisher eachCameraStatusPublisher = new EachCameraStatusPublisher(StateMachine.access$500(this.this$0), cameraId);
            eachCameraStatusPublisher.putFromParameter(parameters, cameraId, this.this$0.getCurrentCapturingMode().isVideo());
            if (this.this$0.getCurrentCapturingMode().isVideo()) {
                eachCameraStatusPublisher.put(new com.sonyericsson.cameracommon.status.eachcamera.PhotoLight(StateMachine.access$1800(this.this$0).get(UserSettingKey.PHOTO_LIGHT).equals(PhotoLight.ON) ? PhotoLight$Value.ON : PhotoLight$Value.OFF));
            }
            if (this.this$0.getCurrentCapturingMode() == CapturingMode.SLOW_MOTION) {
                switch ((SlowMotion) this.this$0.getUserSetting().get(UserSettingKey.SLOW_MOTION)) {
                    case STANDARD_SLOW_MOTION:
                        eachCameraStatusPublisher.put(new VideoResolution(((SlowMotion) StateMachine.access$1800(this.this$0).get(UserSettingKey.SLOW_MOTION)).getVideoSize().getVideoRect())).put(new VideoRecordingFps(RecordingProfile.getVideoFrameRate(((SlowMotion) StateMachine.access$1800(this.this$0).get(UserSettingKey.SLOW_MOTION)).getVideoSize(), VideoHdr.HDR_OFF))).put(VideoStabilizerStatus.fromCameraParameter(StateMachine.access$1800(this.this$0).get(UserSettingKey.VIDEO_STABILIZER).getValue())).put(new com.sonyericsson.cameracommon.status.eachcamera.SlowMotion(SlowMotion$Value.OFF)).put(new com.sonyericsson.cameracommon.status.eachcamera.Hdr(com.sonyericsson.cameracommon.status.eachcamera.Hdr.fromCameraParameter(VideoHdr.HDR_OFF))).publish();
                        break;
                    case SUPER_SLOW_MOTION:
                    case SUPER_SLOW_SHOT:
                        VideoSize videoSize = (VideoSize) StateMachine.access$1800(this.this$0).get(UserSettingKey.VIDEO_SIZE);
                        eachCameraStatusPublisher.put(new VideoResolution(videoSize.getVideoRect())).put(new VideoRecordingFps(RecordingProfile.getVideoFrameRate(videoSize, VideoHdr.HDR_OFF))).put(VideoStabilizerStatus.fromCameraParameter(StateMachine.access$1800(this.this$0).get(UserSettingKey.VIDEO_STABILIZER).getValue())).put(new com.sonyericsson.cameracommon.status.eachcamera.SlowMotion(SlowMotion$Value.ON)).put(new com.sonyericsson.cameracommon.status.eachcamera.Hdr(com.sonyericsson.cameracommon.status.eachcamera.Hdr.fromCameraParameter(VideoHdr.HDR_OFF))).publish();
                        break;
                }
            }
            eachCameraStatusPublisher.put(new VideoResolution(((VideoSize) StateMachine.access$1800(this.this$0).get(UserSettingKey.VIDEO_SIZE)).getVideoRect())).put(new VideoRecordingFps(RecordingProfile.getVideoFrameRate((VideoSize) StateMachine.access$1800(this.this$0).get(UserSettingKey.VIDEO_SIZE), (VideoHdr) StateMachine.access$1800(this.this$0).get(UserSettingKey.VIDEO_HDR)))).put(VideoStabilizerStatus.fromCameraParameter(StateMachine.access$1800(this.this$0).get(UserSettingKey.VIDEO_STABILIZER).getValue())).put(new com.sonyericsson.cameracommon.status.eachcamera.SlowMotion(SlowMotion$Value.OFF)).put(new com.sonyericsson.cameracommon.status.eachcamera.Hdr(com.sonyericsson.cameracommon.status.eachcamera.Hdr.fromCameraParameter((VideoHdr) StateMachine.access$1800(this.this$0).get(UserSettingKey.VIDEO_HDR)))).publish();
        }
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(ObjectTracking objectTracking) {
        if (StateMachine.access$1800(this.this$0).get(UserSettingKey.FOCUS_RANGE) == FocusRange.AF) {
            set(FocusMode.getDefaultValue((CapturingMode) StateMachine.access$1800(this.this$0).get(UserSettingKey.CAPTURING_MODE)));
        }
        if (StateMachine.access$1200(this.this$0) == null || !StateMachine.access$1200(this.this$0).isSetupHeadupDisplayInvoked()) {
            return;
        }
        StateMachine.access$2800(this.this$0).stop();
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED, new Object[0]);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(FocusRange focusRange) {
        StateMachine.access$2600(this.this$0).setFocusRange(focusRange);
        if (StateMachine.access$1200(this.this$0) != null && StateMachine.access$1200(this.this$0).isSetupHeadupDisplayInvoked()) {
            StateMachine.access$1200(this.this$0).updateFocusIconType(focusRange != FocusRange.AF);
            StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE, new Object[0]);
        }
        if (StateMachine.access$3100(this.this$0)) {
            StateMachine.access$2600(this.this$0).setMetering((Metering) StateMachine.access$1800(this.this$0).get(UserSettingKey.METERING));
        }
        if (focusRange != FocusRange.AF) {
            StateMachine.access$2800(this.this$0).stop();
        }
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(ShutterSpeed shutterSpeed) {
        StateMachine.access$2600(this.this$0).setShutterSpeed(shutterSpeed);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(SlowMotion slowMotion) {
        VideoSize videoSize;
        StateMachine.access$2600(this.this$0).releaseRecorder();
        StateMachine.access$2600(this.this$0).setSlowMotion(slowMotion);
        if (slowMotion != SlowMotion.OFF) {
            CapturingMode capturingMode = (CapturingMode) StateMachine.access$1800(this.this$0).get(UserSettingKey.CAPTURING_MODE);
            if (slowMotion == SlowMotion.STANDARD_SLOW_MOTION) {
                videoSize = slowMotion.getVideoSize();
            } else {
                videoSize = (VideoSize) StateMachine.access$1800(this.this$0).get(UserSettingKey.VIDEO_SIZE);
            }
            StateMachine.access$2400(this.this$0, isSceneRecognitionValid(capturingMode, videoSize, (VideoHdr) StateMachine.access$1800(this.this$0).get(UserSettingKey.VIDEO_HDR)));
            StateMachine.access$2600(this.this$0).setPreviewSizeAndFpsRangeForVideo(capturingMode.getCameraId(), videoSize, VideoHdr.HDR_OFF);
            StateMachine.access$2600(this.this$0).setVideoSize(videoSize);
            if (!capturingMode.isFront()) {
                resetZoom();
            }
        }
        StateMachine.access$1200(this.this$0).updateSlowMotionView(slowMotion);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(DestinationToSave destinationToSave) {
        StateMachine.access$300(this.this$0).setEnabled(StateMachine.access$1000(this.this$0, StateMachine.access$400(this.this$0)));
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(DistortionCorrection distortionCorrection) {
        StateMachine.access$2600(this.this$0).setDistortionCorrection(distortionCorrection);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(FusionMode fusionMode) {
        if (DependencyCheckUtil.isFusionAvailableOnVideo(((CapturingMode) StateMachine.access$1800(this.this$0).get(UserSettingKey.CAPTURING_MODE)).getCameraId(), (VideoSize) StateMachine.access$1800(this.this$0).get(UserSettingKey.VIDEO_SIZE), (VideoHdr) StateMachine.access$1800(this.this$0).get(UserSettingKey.VIDEO_HDR))) {
            StateMachine.access$2600(this.this$0).setFusionMode(fusionMode);
        } else {
            StateMachine.access$2600(this.this$0).setFusionMode(FusionMode.OFF);
        }
        if (StateMachine.access$1200(this.this$0) == null || !StateMachine.access$1200(this.this$0).isSetupHeadupDisplayInvoked()) {
            return;
        }
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_UPDATE_FUSION_MODE, fusionMode);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable
    public void set(SideSense sideSense) {
        switch (this.this$0.getCurrentCapturingMode()) {
            case NORMAL:
            case FRONT_PHOTO:
            case SLOW_MOTION:
            case UNKNOWN:
                break;
            default:
                if (sideSense == SideSense.ON) {
                    StateMachine.access$500(this.this$0).enableSideSense();
                } else {
                    StateMachine.access$500(this.this$0).disableSideSense();
                }
                break;
        }
    }

    private void notifySettingChanged(UserSettingValue userSettingValue) {
        synchronized (this.this$0) {
            if (StateMachine.access$1200(this.this$0) != null && StateMachine.access$1200(this.this$0).isSetupHeadupDisplayInvoked() && StateMachine.access$1100(this.this$0).getCaptureState() != StateMachine$CaptureState.STATE_MODE_CHANGING && StateMachine.access$1100(this.this$0).getCaptureState() != StateMachine$CaptureState.STATE_CAMERA_SWITCHING && StateMachine.access$1100(this.this$0).getCaptureState() != StateMachine$CaptureState.STATE_WAITING_EVF_PREPARED_IN_MODE_CHANGE) {
                StateMachine.access$1200(this.this$0).onSettingChanged(userSettingValue);
            }
        }
    }

    private boolean isSceneRecognitionValid(CapturingMode capturingMode, VideoSize videoSize, VideoHdr videoHdr) {
        switch (capturingMode) {
            case SCENE_RECOGNITION:
            case SUPERIOR_FRONT:
                return true;
            case FRONT_VIDEO:
            case VIDEO:
                return VideoSize.FULL_HD == videoSize && videoHdr != VideoHdr.HDR_ON;
            default:
                return false;
        }
    }

    private void resetZoom() {
        StateMachine.access$2600(this.this$0).setZoom(0.0f);
        StateMachine.access$3200(this.this$0, 0);
    }
}
