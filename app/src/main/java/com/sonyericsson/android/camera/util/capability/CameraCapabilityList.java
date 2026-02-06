package com.sonyericsson.android.camera.util.capability;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.util.Range;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CameraCapabilityList {
    public static final String TAG = "CameraCapabilityList";
    public final CapabilityItem<Rect> ACTIVE_ARRAY_SIZE;
    public final CapabilityItem<List<String>> AE;
    public final CapabilityItem<List<String>> BURST;
    public final CapabilityItem<List<String>> DISTORTION_CORRECTION;
    public final CapabilityItem<Integer> EV_MAX;
    public final CapabilityItem<Integer> EV_MIN;
    public final CapabilityItem<Float> EV_STEP;
    public final CapabilityItem<List<String>> FLASH;
    public final CapabilityItem<List<String>> FOCUS_AREA;
    public final CapabilityItem<List<String>> FOCUS_MODE;
    public final CapabilityItem<List<int[]>> FPS_RANGE;
    public final CapabilityItem<Range<Integer>> FUSION_ISO_RANGE;
    public final CapabilityItem<List<String>> FUSION_MODE;
    public final CapabilityItem<List<Rect>> FUSION_SUPPORTED_PICTURE_SIZES;
    public final CapabilityItem<List<VideoConfiguration>> FUSION_SUPPORTED_VIDEO_CONFIGURATION;
    public final CapabilityItem<List<String>> HDR;
    public final CapabilityItem<Boolean> HDR_VIDEO_SUPPORTED;
    public final CapabilityItem<List<VideoConfiguration>> INTELLIGENT_ACTIVE_CONFIGURATION;
    public final CapabilityItem<Range<Integer>> ISO_RANGE;
    public final CapabilityItem<Integer> LENS_FACING;
    public final CapabilityItem<Float> MACRO_FOCUS_RANGE;
    public final CapabilityItem<Boolean> MANUAL_FOCUS;
    public final CapabilityItem<List<Rect>> MANUAL_ISO_SUPPORTED_PICTURE_SIZE;
    public final CapabilityItem<Integer> MAX_AWB_AB;
    public final CapabilityItem<Integer> MAX_NUM_FACE;
    public final CapabilityItem<Integer> MAX_NUM_FOCUS_AREA;
    public final CapabilityItem<Long> MAX_SHUTTER_SPEED;
    public final CapabilityItem<Integer> MAX_SOFT_SKIN_LEVEL;
    public final CapabilityItem<Float> MAX_ZOOM_RATIO;
    public final CapabilityItem<List<String>> METERING;
    public final CapabilityItem<Integer> MIN_AWB_AB;
    public final CapabilityItem<Long> MIN_SHUTTER_SPEED;
    public final CapabilityItem<Long> MIN_SHUTTER_SPEED_LIMIT;
    public final CapabilityItem<Integer> MIN_SOFT_SKIN_LEVEL;
    public final CapabilityItem<Boolean> OBJECT_TRACKING;
    public final CapabilityItem<List<Rect>> PICTURE_SIZE;
    public final CapabilityItem<List<String>> POWER_SAVING_MODE;
    public final CapabilityItem<List<String>> PREDICTIVE_CAPTURE;
    public final CapabilityItem<List<Rect>> PREVIEW_SIZE;
    public final CapabilityItem<Rect> PREVIEW_SIZE_FOR_HDR_VIDEO;
    public final CapabilityItem<Rect> PREVIEW_SIZE_FOR_STILL;
    public final CapabilityItem<Rect> PREVIEW_SIZE_FOR_VIDEO;
    public final CapabilityItem<ResolutionOptions> RESOLUTION_CAPABILITY;
    public final CapabilityItem<Boolean> SCENE_RECOGNITION;
    public final CapabilityItem<String> SENSOR_NAME;
    public final CapabilityItem<List<String>> SHUTTER_SPEED_VALUES;
    public final CapabilityItem<Boolean> SMILE_DETECTION;
    public final CapabilityItem<List<VideoConfiguration>> STEADY_SHOT_CONFIGURATION;
    public final CapabilityItem<List<Rect>> STILL_HDR_SUPPORTED_PICTURE_SIZE;
    public final CapabilityItem<List<VideoConfiguration>> SUPER_SLOW_CONFIGURATION;
    public final CapabilityItem<List<String>> SUPER_SLOW_VALUES;
    public final CapabilityItem<Boolean> TRACKING_FOCUS_DURING_LOCK;
    public final CapabilityItem<List<VideoConfiguration>> VIDEO_CONFIGURATION;
    public final CapabilityItem<List<String>> VIDEO_STABILIZER;
    public final CapabilityItem<List<String>> WHITE_BALANCE;
    public final CapabilityItem<Float> WIDE_ZOOM_TARGET_RATIO;
    private final List<CapabilityItem<?>> mValues;

    public CameraCapabilityList(Context context, SharedPreferences sharedPreferences) {
        this.EV_MAX = new IntegerCapabilityItem("max-exposure-compensation", sharedPreferences);
        this.EV_MIN = new IntegerCapabilityItem("min-exposure-compensation", sharedPreferences);
        this.EV_STEP = new FloatCapabilityItem("exposure-compensation-step", sharedPreferences);
        this.FLASH = new StringListCapabilityItem("flash-mode", sharedPreferences);
        this.FOCUS_MODE = new StringListCapabilityItem("focus-mode", sharedPreferences);
        this.FPS_RANGE = new IntArrayListCapabilityItem("preview-fps-range", sharedPreferences);
        this.MAX_NUM_FACE = new IntegerCapabilityItem("max-num-detected-faces", sharedPreferences);
        this.MAX_NUM_FOCUS_AREA = new IntegerCapabilityItem("max-num-focus-areas", sharedPreferences);
        this.MAX_ZOOM_RATIO = new FloatCapabilityItem("max-zoom-ratio", sharedPreferences);
        this.WIDE_ZOOM_TARGET_RATIO = new FloatCapabilityItem("wide-zoom-target-ratio", sharedPreferences);
        this.PICTURE_SIZE = new RectListCapabilityItem("picture-size", sharedPreferences);
        this.MANUAL_ISO_SUPPORTED_PICTURE_SIZE = new RectListCapabilityItem("sony-manual-iso-size-values", sharedPreferences);
        this.STILL_HDR_SUPPORTED_PICTURE_SIZE = new RectListCapabilityItem("sony-still-hdr-size-values", sharedPreferences);
        this.PREVIEW_SIZE = new RectListCapabilityItem("preview-size", sharedPreferences);
        this.PREVIEW_SIZE_FOR_STILL = new RectCapabilityItem("sony-preferred-preview-size-for-still", sharedPreferences);
        this.PREVIEW_SIZE_FOR_VIDEO = new RectCapabilityItem("sony-preferred-preview-size-for-video", sharedPreferences);
        this.PREVIEW_SIZE_FOR_HDR_VIDEO = new RectCapabilityItem("sony-preferred-preview-size-for-hdr-video", sharedPreferences);
        this.VIDEO_CONFIGURATION = new VideoConfigurationListCapabilityItem("video-size", sharedPreferences);
        this.WHITE_BALANCE = new StringListCapabilityItem("whitebalance", sharedPreferences);
        this.AE = new StringListCapabilityItem("sony-ae-mode-values", sharedPreferences);
        this.PREDICTIVE_CAPTURE = new StringListCapabilityItem("climax-recognition-values", sharedPreferences);
        this.BURST = new StringListCapabilityItem("burst-values", sharedPreferences);
        this.FOCUS_AREA = new StringListCapabilityItem("sony-focus-area-values", sharedPreferences);
        this.HDR = new StringListCapabilityItem("sony-is-values", sharedPreferences);
        this.ISO_RANGE = new IntegerRangeCapabilityItem("sony-iso-range", sharedPreferences);
        this.METERING = new StringListCapabilityItem("sony-metering-mode-values", sharedPreferences);
        this.OBJECT_TRACKING = new BooleanCapabilityItem("sony-object-tracking-supported", sharedPreferences);
        this.TRACKING_FOCUS_DURING_LOCK = new BooleanCapabilityItem("sony-tracking-focus-during-lock-supported", sharedPreferences);
        this.SCENE_RECOGNITION = new BooleanCapabilityItem("sony-scene-detect-supported", sharedPreferences);
        this.SMILE_DETECTION = new BooleanCapabilityItem("sony-smile-detect-values", sharedPreferences);
        this.VIDEO_STABILIZER = new StringListCapabilityItem("sony-vs-values", sharedPreferences);
        this.STEADY_SHOT_CONFIGURATION = new VideoConfigurationListCapabilityItem("sony-vs-steady-shot-config", sharedPreferences);
        this.INTELLIGENT_ACTIVE_CONFIGURATION = new VideoConfigurationListCapabilityItem("sony-vs-intelligent-active-config", sharedPreferences);
        this.MAX_SOFT_SKIN_LEVEL = new IntegerCapabilityItem("sony-max-soft-skin-level", sharedPreferences);
        this.MIN_SOFT_SKIN_LEVEL = new IntegerCapabilityItem("sony-min-soft-skin-level", sharedPreferences);
        this.MAX_AWB_AB = new IntegerCapabilityItem("sony-max-awb-compensation-ab", sharedPreferences);
        this.MIN_AWB_AB = new IntegerCapabilityItem("sony-min-awb-compensation-ab", sharedPreferences);
        this.MACRO_FOCUS_RANGE = new FloatCapabilityItem("sony-manual-focus-for-macro", sharedPreferences);
        this.MANUAL_FOCUS = new BooleanCapabilityItem("manual-focus-supported", sharedPreferences);
        this.MAX_SHUTTER_SPEED = new LongCapabilityItem("sony-max-shutter-speed", sharedPreferences);
        this.MIN_SHUTTER_SPEED = new LongCapabilityItem("sony-min-shutter-speed", sharedPreferences);
        this.SHUTTER_SPEED_VALUES = new StringListCapabilityItem("sony-shutter-speed-values", sharedPreferences);
        this.POWER_SAVING_MODE = new StringListCapabilityItem("sony-power-save-mode-values", sharedPreferences);
        this.MIN_SHUTTER_SPEED_LIMIT = new LongCapabilityItem("sony-min-shutter-speed-limit", sharedPreferences);
        this.SUPER_SLOW_CONFIGURATION = new VideoConfigurationListCapabilityItem("sony-super-slow-config", sharedPreferences);
        this.SUPER_SLOW_VALUES = new StringListCapabilityItem("super-slow-values", sharedPreferences);
        this.FUSION_MODE = new StringListCapabilityItem("sony-fusion", sharedPreferences);
        this.FUSION_SUPPORTED_PICTURE_SIZES = new RectListCapabilityItem("sony-fusion-supported-picture-size-values", sharedPreferences);
        this.FUSION_SUPPORTED_VIDEO_CONFIGURATION = new VideoConfigurationListCapabilityItem("sony-fusion-supported-video-config", sharedPreferences);
        this.FUSION_ISO_RANGE = new IntegerRangeCapabilityItem("sony-fusion-iso-range", sharedPreferences);
        this.ACTIVE_ARRAY_SIZE = new RectCapabilityItem("active-array-size", sharedPreferences);
        this.LENS_FACING = new IntegerCapabilityItem("lens-facing", sharedPreferences);
        this.SENSOR_NAME = new StringCapabilityItem("sensor-name", sharedPreferences);
        this.HDR_VIDEO_SUPPORTED = new BooleanCapabilityItem("hdr-video-supported", sharedPreferences);
        this.DISTORTION_CORRECTION = new StringListCapabilityItem("distortion-correction", sharedPreferences);
        this.mValues = createList();
        this.RESOLUTION_CAPABILITY = new ResolutionCapabilityItem(getResolutionOptions(context));
    }

    public CameraCapabilityList(Context context, CameraStaticParameters cameraStaticParameters, BypassCameraStaticParameters bypassCameraStaticParameters) {
        boolean z;
        this.EV_MAX = new IntegerCapabilityItem("max-exposure-compensation", Integer.valueOf(cameraStaticParameters.getMaxExposureCompensation()));
        this.EV_MIN = new IntegerCapabilityItem("min-exposure-compensation", Integer.valueOf(cameraStaticParameters.getMinExposureCompensation()));
        this.EV_STEP = new FloatCapabilityItem("exposure-compensation-step", Float.valueOf(cameraStaticParameters.getExposureCompensationStep()));
        this.FLASH = new StringListCapabilityItem("flash-mode", cameraStaticParameters.getSupportedFlashModes());
        this.FOCUS_MODE = new StringListCapabilityItem("focus-mode", cameraStaticParameters.getSupportedFocusModes());
        this.FPS_RANGE = new IntArrayListCapabilityItem("preview-fps-range", cameraStaticParameters.getSupportedPreviewFpsRange());
        this.MAX_NUM_FACE = new IntegerCapabilityItem("max-num-detected-faces", Integer.valueOf(cameraStaticParameters.getMaxNumDetectedFaces()));
        this.MAX_NUM_FOCUS_AREA = new IntegerCapabilityItem("max-num-focus-areas", Integer.valueOf(cameraStaticParameters.getMaxNumFocusAreas()));
        this.MAX_ZOOM_RATIO = new FloatCapabilityItem("max-zoom-ratio", Float.valueOf(cameraStaticParameters.getMaxZoomRatio()));
        this.WIDE_ZOOM_TARGET_RATIO = new FloatCapabilityItem("wide-zoom-target-ratio", Float.valueOf(cameraStaticParameters.getWideZoomTargetRatio()));
        this.PICTURE_SIZE = new RectListCapabilityItem("picture-size", cameraStaticParameters.getSupportedPictureSizes());
        this.MANUAL_ISO_SUPPORTED_PICTURE_SIZE = new RectListCapabilityItem("sony-manual-iso-size-values", cameraStaticParameters.getManualIsoSupportedPictureSizes());
        this.STILL_HDR_SUPPORTED_PICTURE_SIZE = new RectListCapabilityItem("sony-still-hdr-size-values", cameraStaticParameters.getStillHdrSupportedPictureSizes());
        this.PREVIEW_SIZE = new RectListCapabilityItem("preview-size", cameraStaticParameters.getSupportedPreviewSizes());
        this.PREVIEW_SIZE_FOR_STILL = new RectCapabilityItem("sony-preferred-preview-size-for-still", cameraStaticParameters.getPreferredPreviewSizeForStill());
        this.PREVIEW_SIZE_FOR_VIDEO = new RectCapabilityItem("sony-preferred-preview-size-for-video", cameraStaticParameters.getPreferredPreviewSizeForVideo());
        this.PREVIEW_SIZE_FOR_HDR_VIDEO = new RectCapabilityItem("sony-preferred-preview-size-for-hdr-video", cameraStaticParameters.getPreferredPreviewSizeForHdrVideo());
        List<VideoConfiguration> supportedVideoConfiguration = cameraStaticParameters.getSupportedVideoConfiguration();
        List<VideoConfiguration> supportedHighFrameRateVideoConfiguration = bypassCameraStaticParameters.getSupportedHighFrameRateVideoConfiguration();
        ArrayList arrayList = new ArrayList();
        if (supportedHighFrameRateVideoConfiguration != null && !supportedHighFrameRateVideoConfiguration.isEmpty()) {
            for (VideoConfiguration videoConfiguration : supportedHighFrameRateVideoConfiguration) {
                Iterator<VideoConfiguration> it = supportedVideoConfiguration.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    VideoConfiguration next = it.next();
                    if (next.mWidth == videoConfiguration.mWidth && next.mHeight == videoConfiguration.mHeight) {
                        next.mFps = videoConfiguration.mFps;
                        z = true;
                        break;
                    }
                }
                if (!z) {
                    arrayList.add(videoConfiguration);
                }
            }
        }
        supportedVideoConfiguration.addAll(arrayList);
        this.VIDEO_CONFIGURATION = new VideoConfigurationListCapabilityItem("video-size", supportedVideoConfiguration);
        this.WHITE_BALANCE = new StringListCapabilityItem("whitebalance", cameraStaticParameters.getSupportedWhiteBalance());
        this.AE = new StringListCapabilityItem("sony-ae-mode-values", cameraStaticParameters.getSupportedAeModes());
        this.PREDICTIVE_CAPTURE = new StringListCapabilityItem("climax-recognition-values", bypassCameraStaticParameters.getSupportedClimaxRecognition());
        this.BURST = new StringListCapabilityItem("burst-values", bypassCameraStaticParameters.getSupportedBurst());
        this.FOCUS_AREA = new StringListCapabilityItem("sony-focus-area-values", cameraStaticParameters.getSupportedFocusAreaModes());
        this.HDR = new StringListCapabilityItem("sony-is-values", cameraStaticParameters.getSupportedStillHdrValues());
        this.ISO_RANGE = new IntegerRangeCapabilityItem("sony-iso-range", cameraStaticParameters.getSupportedIsoRange());
        this.METERING = new StringListCapabilityItem("sony-metering-mode-values", cameraStaticParameters.getSupportedAeRegionModes());
        this.OBJECT_TRACKING = new BooleanCapabilityItem("sony-object-tracking-supported", Boolean.valueOf(cameraStaticParameters.isObjectTrackingSupported()));
        this.TRACKING_FOCUS_DURING_LOCK = new BooleanCapabilityItem("sony-tracking-focus-during-lock-supported", Boolean.valueOf(cameraStaticParameters.isTrackingFocusDuringLockSupported()));
        this.SCENE_RECOGNITION = new BooleanCapabilityItem("sony-scene-detect-supported", Boolean.valueOf(cameraStaticParameters.isSceneDetectionSupported() && cameraStaticParameters.isConditionDetectionSupported()));
        this.SMILE_DETECTION = new BooleanCapabilityItem("sony-smile-detect-values", Boolean.valueOf(cameraStaticParameters.isSmileDetectionAvailable()));
        this.VIDEO_STABILIZER = new StringListCapabilityItem("sony-vs-values", bypassCameraStaticParameters.getSupportedVideoStabilizer());
        this.STEADY_SHOT_CONFIGURATION = new VideoConfigurationListCapabilityItem("sony-vs-steady-shot-config", bypassCameraStaticParameters.getSupportedSteadyShotConfiguration());
        this.INTELLIGENT_ACTIVE_CONFIGURATION = new VideoConfigurationListCapabilityItem("sony-vs-intelligent-active-config", bypassCameraStaticParameters.getSupportedIntelligentActiveConfiguration());
        this.MAX_SOFT_SKIN_LEVEL = new IntegerCapabilityItem("sony-max-soft-skin-level", Integer.valueOf(cameraStaticParameters.getMaxSoftSkinLevel()));
        this.MIN_SOFT_SKIN_LEVEL = new IntegerCapabilityItem("sony-min-soft-skin-level", Integer.valueOf(cameraStaticParameters.getMinSoftSkinLevel()));
        this.MAX_AWB_AB = new IntegerCapabilityItem("sony-max-awb-compensation-ab", Integer.valueOf(cameraStaticParameters.getMaxAwbColorCompensationAb()));
        this.MIN_AWB_AB = new IntegerCapabilityItem("sony-min-awb-compensation-ab", Integer.valueOf(cameraStaticParameters.getMinAwbColorCompensationAb()));
        this.MACRO_FOCUS_RANGE = new FloatCapabilityItem("sony-manual-focus-for-macro", Float.valueOf(cameraStaticParameters.getMacroValueForManualFocus()));
        this.MANUAL_FOCUS = new BooleanCapabilityItem("manual-focus-supported", Boolean.valueOf(cameraStaticParameters.isManualFocusSupported()));
        this.MAX_SHUTTER_SPEED = new LongCapabilityItem("sony-max-shutter-speed", Long.valueOf(cameraStaticParameters.getMaxShutterSpeed()));
        this.MIN_SHUTTER_SPEED = new LongCapabilityItem("sony-min-shutter-speed", Long.valueOf(cameraStaticParameters.getMinShutterSpeed()));
        this.SHUTTER_SPEED_VALUES = new StringListCapabilityItem("sony-shutter-speed-values", cameraStaticParameters.getSupportedShutterSpeedValues());
        this.POWER_SAVING_MODE = new StringListCapabilityItem("sony-power-save-mode-values", cameraStaticParameters.getSupportedPowerSaveModes());
        this.MIN_SHUTTER_SPEED_LIMIT = new LongCapabilityItem("sony-min-shutter-speed-limit", Long.valueOf(cameraStaticParameters.getMinExposureTimeLimit()));
        this.SUPER_SLOW_CONFIGURATION = new VideoConfigurationListCapabilityItem("sony-super-slow-config", bypassCameraStaticParameters.getSupportedSuperSlowConfiguration());
        this.SUPER_SLOW_VALUES = new StringListCapabilityItem("super-slow-values", bypassCameraStaticParameters.getSupportedSuperSlowmotion());
        this.FUSION_MODE = new StringListCapabilityItem("sony-fusion", cameraStaticParameters.getSupportedFusionModes());
        this.FUSION_SUPPORTED_PICTURE_SIZES = new RectListCapabilityItem("sony-fusion-supported-picture-size-values", cameraStaticParameters.getFusionSupportedPictureSizes());
        this.FUSION_SUPPORTED_VIDEO_CONFIGURATION = new VideoConfigurationListCapabilityItem("sony-fusion-supported-video-config", cameraStaticParameters.getFusionSupportedVideoConfiguration());
        this.FUSION_ISO_RANGE = new IntegerRangeCapabilityItem("sony-fusion-iso-range", cameraStaticParameters.getSupportedFusionIsoRange());
        this.ACTIVE_ARRAY_SIZE = new RectCapabilityItem("active-array-size", cameraStaticParameters.getActiveArraySize());
        this.LENS_FACING = new IntegerCapabilityItem("lens-facing", Integer.valueOf(cameraStaticParameters.getLensFacing()));
        this.SENSOR_NAME = new StringCapabilityItem("sensor-name", cameraStaticParameters.getSensorName());
        this.HDR_VIDEO_SUPPORTED = new BooleanCapabilityItem("hdr-video-supported", Boolean.valueOf(bypassCameraStaticParameters.isVideoHdrSupported()));
        this.DISTORTION_CORRECTION = new StringListCapabilityItem("distortion-correction", cameraStaticParameters.getSupportedDistortionCorrection());
        this.mValues = createList();
        this.RESOLUTION_CAPABILITY = new ResolutionCapabilityItem(getResolutionOptions(context));
    }

    private List<CapabilityItem<?>> createList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.AE);
        arrayList.add(this.PREDICTIVE_CAPTURE);
        arrayList.add(this.BURST);
        arrayList.add(this.EV_MAX);
        arrayList.add(this.EV_MIN);
        arrayList.add(this.EV_STEP);
        arrayList.add(this.FLASH);
        arrayList.add(this.FOCUS_AREA);
        arrayList.add(this.FOCUS_MODE);
        arrayList.add(this.FPS_RANGE);
        arrayList.add(this.HDR);
        arrayList.add(this.ISO_RANGE);
        arrayList.add(this.MAX_NUM_FACE);
        arrayList.add(this.MAX_NUM_FOCUS_AREA);
        arrayList.add(this.MAX_ZOOM_RATIO);
        arrayList.add(this.WIDE_ZOOM_TARGET_RATIO);
        arrayList.add(this.METERING);
        arrayList.add(this.OBJECT_TRACKING);
        arrayList.add(this.TRACKING_FOCUS_DURING_LOCK);
        arrayList.add(this.PICTURE_SIZE);
        arrayList.add(this.MANUAL_ISO_SUPPORTED_PICTURE_SIZE);
        arrayList.add(this.STILL_HDR_SUPPORTED_PICTURE_SIZE);
        arrayList.add(this.PREVIEW_SIZE);
        arrayList.add(this.PREVIEW_SIZE_FOR_STILL);
        arrayList.add(this.PREVIEW_SIZE_FOR_VIDEO);
        arrayList.add(this.PREVIEW_SIZE_FOR_HDR_VIDEO);
        arrayList.add(this.SCENE_RECOGNITION);
        arrayList.add(this.SMILE_DETECTION);
        arrayList.add(this.VIDEO_CONFIGURATION);
        arrayList.add(this.VIDEO_STABILIZER);
        arrayList.add(this.WHITE_BALANCE);
        arrayList.add(this.STEADY_SHOT_CONFIGURATION);
        arrayList.add(this.INTELLIGENT_ACTIVE_CONFIGURATION);
        arrayList.add(this.MAX_SOFT_SKIN_LEVEL);
        arrayList.add(this.MIN_SOFT_SKIN_LEVEL);
        arrayList.add(this.MAX_AWB_AB);
        arrayList.add(this.MIN_AWB_AB);
        arrayList.add(this.MACRO_FOCUS_RANGE);
        arrayList.add(this.MANUAL_FOCUS);
        arrayList.add(this.MAX_SHUTTER_SPEED);
        arrayList.add(this.MIN_SHUTTER_SPEED);
        arrayList.add(this.SHUTTER_SPEED_VALUES);
        arrayList.add(this.POWER_SAVING_MODE);
        arrayList.add(this.MIN_SHUTTER_SPEED_LIMIT);
        arrayList.add(this.SUPER_SLOW_VALUES);
        arrayList.add(this.SUPER_SLOW_CONFIGURATION);
        arrayList.add(this.FUSION_MODE);
        arrayList.add(this.FUSION_SUPPORTED_PICTURE_SIZES);
        arrayList.add(this.FUSION_SUPPORTED_VIDEO_CONFIGURATION);
        arrayList.add(this.FUSION_ISO_RANGE);
        arrayList.add(this.ACTIVE_ARRAY_SIZE);
        arrayList.add(this.LENS_FACING);
        arrayList.add(this.SENSOR_NAME);
        arrayList.add(this.HDR_VIDEO_SUPPORTED);
        arrayList.add(this.DISTORTION_CORRECTION);
        return arrayList;
    }

    public List<CapabilityItem<?>> values() {
        return this.mValues;
    }

    private ResolutionOptions getResolutionOptions(Context context) {
        return new ResolutionOptions(context, this.SENSOR_NAME.get(), this.PICTURE_SIZE.get());
    }
}
