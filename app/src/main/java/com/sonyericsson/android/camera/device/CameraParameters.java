package com.sonyericsson.android.camera.device;

import android.graphics.Rect;
import android.location.Location;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Range;
import com.sonyericsson.android.camera.configuration.parameters.ShutterTrigger;
import com.sonyericsson.android.camera.configuration.parameters.SlowMotion;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CameraParameters {
    public static final String AE_MODE_AUTO = "auto";
    public static final String AE_MODE_ISO_PRIO = "iso-prio";
    public static final String AE_MODE_SEMI_AUTO = "semi-auto";
    public static final String AE_MODE_SHUTTER_PRIO = "shutter-prio";
    public static final String AE_REGION_MODE_CENTER_WEIGHTED = "center-weighted";
    public static final String AE_REGION_MODE_FACE = "face";
    public static final String AE_REGION_MODE_FRAME_AVERAGE = "frame-average";
    public static final String AE_REGION_MODE_MULTI = "multi";
    public static final String AE_REGION_MODE_SPOT = "spot";
    public static final String AE_REGION_MODE_USER_REGION = "user";
    public static final int AE_REGION_WEIGHT = 1;
    public static final String CLIMAX_RECOGNITION_AUTO = "auto";
    public static final String CLIMAX_RECOGNITION_OFF = "off";
    public static final String CLIMAX_RECOGNITION_ON = "on";
    private static final String DEFAULT_AE_MODE = "auto";
    private static final String DEFAULT_AE_REGION = "center-weighted";
    private static final String DEFAULT_AF_AREA = "center";
    private static final String DEFAULT_AF_MODE = "auto";
    private static final int DEFAULT_AWB_COLOR_COMPENSATION_AB = 0;
    private static final int DEFAULT_AWB_COLOR_COMPENSATION_GM = 0;
    private static final String DEFAULT_CLIMAX_RECOGNITION = "auto";
    private static final String DEFAULT_DISTORTION_CORRECTION = "off";
    private static final int DEFAULT_EXPOSURE_COMPENSATION = 0;
    private static final long DEFAULT_EXPOSURE_TIME_LIMIT = 0;
    private static final String DEFAULT_FLASH_MODE = "off";
    private static final String DEFAULT_FUSION_MODE = "off";
    private static final Location DEFAULT_GPS_DATA = null;
    private static final int DEFAULT_ISO = 50;
    private static final int DEFAULT_JPEG_QUALITY = 19;
    private static final int DEFAULT_MAX_PREVIEW_FPS = 30;
    private static final int DEFAULT_MIN_PREVIEW_FPS = 0;
    private static final String DEFAULT_POWER_MODE = "off";
    private static final int DEFAULT_ROTATION = 0;
    private static final long DEFAULT_SHUTTER_SPEED = 4000000;
    private static final int DEFAULT_SOFT_SKIN = 0;
    private static final String DEFAULT_STILL_HDR = "off";
    private static final String DEFAULT_WHITE_BALANCE = "off";
    public static final float DEFAULT_ZOOM_RATIO = 0.0f;
    public static final String DISPLAY_FLASH_MODE_AUTO = "display-auto";
    public static final String DISPLAY_FLASH_MODE_ON = "display-on";
    public static final String DISTORTION_CORRECTION_OFF = "off";
    public static final String DISTORTION_CORRECTION_ON = "on";
    public static final String FLASH_MODE_AUTO = "auto";
    public static final String FLASH_MODE_OFF = "off";
    public static final String FLASH_MODE_ON = "on";
    public static final String FLASH_MODE_RED_EYE = "red-eye";
    public static final String FLASH_MODE_TORCH = "torch";
    public static final String FOCUS_AREA_CENTER = "center";
    public static final String FOCUS_AREA_FACE = "face";
    public static final String FOCUS_AREA_MULTI = "multi";
    public static final String FOCUS_AREA_USER = "user";
    public static final String FOCUS_MODE_AUTO = "auto";
    public static final String FOCUS_MODE_CONTINUOUS_PICTURE = "continuous-picture";
    public static final String FOCUS_MODE_CONTINUOUS_VIDEO = "continuous-video";
    public static final String FOCUS_MODE_FIXED = "fixed";
    public static final String FOCUS_MODE_INFINITY = "infinity";
    public static final String FOCUS_MODE_MANUAL = "manual";
    public static final int FOCUS_REGION_WEIGHT = 1;
    public static final String FUSION_MODE_AUTO = "auto";
    public static final String FUSION_MODE_OFF = "off";
    public static final String FUSION_MODE_ON = "on";
    public static final String KEY_ACTIVE_ARRAY_SIZE = "active-array-size";
    public static final String KEY_DISTORTION_CORRECTION = "distortion-correction";
    public static final String KEY_EXPOSURE_COMPENSATION_STEP = "exposure-compensation-step";
    public static final String KEY_EX_AE_MODE = "sony-ae-mode";
    public static final String KEY_EX_AWB_COMPENSATION_AB = "sony-awb-compensation-ab";
    public static final String KEY_EX_CLIMAX_RECOGNITION = "climax-recognition";
    public static final String KEY_EX_FOCUS_AREA = "sony-focus-area";
    public static final String KEY_EX_FUSION_MODE = "sony-fusion-mode";
    public static final String KEY_EX_FUSION_SUPPORTED_PICTURE_SIZES = "sony-fusion-supported-picture-size-values";
    public static final String KEY_EX_FUSION_SUPPORTED_VIDEO_CONFIGURATION = "sony-fusion-supported-video-config";
    public static final String KEY_EX_IMAGE_STABILIZER = "sony-is";
    public static final String KEY_EX_INTELLIGENT_ACTIVE_CONFIGURATION = "sony-vs-intelligent-active-config";
    public static final String KEY_EX_ISO = "sony-iso";
    public static final String KEY_EX_MANUAL_FOCUS = "sony-manual-focus";
    public static final String KEY_EX_MANUAL_FOCUS_FOR_MACRO = "sony-manual-focus-for-macro";
    public static final String KEY_EX_MANUAL_ISO_SUPPORTED_SIZES = "sony-manual-iso-size-values";
    public static final String KEY_EX_MAX_AWB_COMPENSATION_AB = "sony-max-awb-compensation-ab";
    public static final String KEY_EX_MAX_SHUTTER_SPEED = "sony-max-shutter-speed";
    public static final String KEY_EX_MAX_SOFT_SKIN_LEVEL = "sony-max-soft-skin-level";
    public static final String KEY_EX_METERING_MODE = "sony-metering-mode";
    public static final String KEY_EX_MIN_AWB_COMPENSATION_AB = "sony-min-awb-compensation-ab";
    public static final String KEY_EX_MIN_SHUTTER_SPEED = "sony-min-shutter-speed";
    public static final String KEY_EX_MIN_SHUTTER_SPEED_LIMIT = "sony-min-shutter-speed-limit";
    public static final String KEY_EX_MIN_SOFT_SKIN_LEVEL = "sony-min-soft-skin-level";
    public static final String KEY_EX_OBJECT_TRACKING_SUPPORTED = "sony-object-tracking-supported";
    public static final String KEY_EX_POWER_SAVE_MODE = "sony-power-save-mode";
    public static final String KEY_EX_SCENE_DETECTION_SUPPORTED = "sony-scene-detect-supported";
    public static final String KEY_EX_SHUTTER_SPEED = "sony-shutter-speed";
    public static final String KEY_EX_SHUTTER_SPEED_LIMIT = "sony-shutter-speed-limit";
    public static final String KEY_EX_SMILE_DETECTION = "sony-smile-detect";
    public static final String KEY_EX_SOFT_SKIN_LEVEL = "sony-soft-skin-level";
    public static final String KEY_EX_STEADY_SHOT_CONFIGURATION = "sony-vs-steady-shot-config";
    public static final String KEY_EX_STILL_HDR_SUPPORTED_SIZES = "sony-still-hdr-size-values";
    public static final String KEY_EX_SUPER_SLOW = "sony-super-slow";
    public static final String KEY_EX_SUPER_SLOW_CONFIGURATION = "sony-super-slow-config";
    public static final String KEY_EX_SUPER_SLOW_FRAME_NUM = "sony-super-slow-framenum";
    public static final String KEY_EX_SUPER_SLOW_VALUES = "sony-super-slow-values";
    public static final String KEY_EX_SUPPORTED_AE_MODES = "sony-ae-mode-values";
    public static final String KEY_EX_SUPPORTED_FOCUS_AREAS = "sony-focus-area-values";
    public static final String KEY_EX_SUPPORTED_FUSION_ISO_RANGE = "sony-fusion-iso-range";
    public static final String KEY_EX_SUPPORTED_FUSION_MODES = "sony-fusion";
    public static final String KEY_EX_SUPPORTED_IMAGE_STABILIZERS = "sony-is-values";
    public static final String KEY_EX_SUPPORTED_ISO_RANGE = "sony-iso-range";
    public static final String KEY_EX_SUPPORTED_METERING_MODES = "sony-metering-mode-values";
    public static final String KEY_EX_SUPPORTED_POWER_SAVE_MODE = "sony-power-save-mode-values";
    public static final String KEY_EX_SUPPORTED_SHUTTER_SPEED = "sony-shutter-speed-values";
    public static final String KEY_EX_SUPPORTED_SMILE_DETECTIONS = "sony-smile-detect-values";
    public static final String KEY_EX_SUPPORTED_VIDEO_STABILIZERS = "sony-vs-values";
    public static final String KEY_EX_TRACKING_FOCUS_DURING_LOCK_SUPPORTED = "sony-tracking-focus-during-lock-supported";
    public static final String KEY_EX_VIDEO_STABILIZER = "sony-vs";
    public static final String KEY_FLASH_MODE = "flash-mode";
    public static final String KEY_FOCUS_AREAS = "focus-areas";
    public static final String KEY_FOCUS_MODE = "focus-mode";
    public static final String KEY_HDR_VIDEO_SUPPORTED = "hdr-video-supported";
    public static final String KEY_LENS_FACING = "lens-facing";
    public static final String KEY_MANUAL_FOCUS_SUPPORTED = "manual-focus-supported";
    public static final String KEY_MAX_EXPOSURE_COMPENSATION = "max-exposure-compensation";
    public static final String KEY_MAX_NUM_DETECTED_FACES = "max-num-detected-faces";
    public static final String KEY_MAX_NUM_FOCUS_AREAS = "max-num-focus-areas";
    public static final String KEY_MAX_ZOOM_RATIO = "max-zoom-ratio";
    public static final String KEY_MIN_EXPOSURE_COMPENSATION = "min-exposure-compensation";
    public static final String KEY_PICTURE_SIZE = "picture-size";
    public static final String KEY_PREFERRED_PREVIEW_SIZE_FOR_HDR_VIDEO = "sony-preferred-preview-size-for-hdr-video";
    public static final String KEY_PREFERRED_PREVIEW_SIZE_FOR_STILL = "sony-preferred-preview-size-for-still";
    public static final String KEY_PREFERRED_PREVIEW_SIZE_FOR_VIDEO = "sony-preferred-preview-size-for-video";
    public static final String KEY_PREVIEW_FPS_RANGE = "preview-fps-range";
    public static final String KEY_PREVIEW_SIZE = "preview-size";
    public static final String KEY_SCENE_MODE = "scene-mode";
    public static final String KEY_SENSOR_NAME = "sensor-name";
    public static final String KEY_VIDEO_SIZE = "video-size";
    public static final String KEY_WHITE_BALANCE = "whitebalance";
    public static final String KEY_WIDE_ZOOM_TARGET_RATIO = "wide-zoom-target-ratio";
    public static final int MAX_ZOOM_STEP = 120;
    public static final String POWER_SAVING_MODE_LOW_POWER = "low";
    public static final String POWER_SAVING_MODE_OFF = "off";
    public static final String POWER_SAVING_MODE_ULTRA_LOW_POWER = "ultra-low";
    public static final int PREVIEW_FPS_MAX_INDEX = 1;
    public static final int PREVIEW_FPS_MIN_INDEX = 0;
    public static final String SCENE_MODE_ACTION = "action";
    public static final String SCENE_MODE_AUTO = "auto";
    public static final String SCENE_MODE_BABY = "baby";
    public static final String SCENE_MODE_BACKLIGHT = "backlight";
    public static final String SCENE_MODE_BACKLIGHT_PORTRAIT = "backlight-portrait";
    public static final String SCENE_MODE_BARCODE = "barcode";
    public static final String SCENE_MODE_BEACH = "beach";
    public static final String SCENE_MODE_CANDLELIGHT = "candlelight";
    public static final String SCENE_MODE_DARK = "dark";
    public static final String SCENE_MODE_DISH = "dish";
    public static final String SCENE_MODE_DOCUMENT = "document";
    public static final String SCENE_MODE_FIREWORKS = "fireworks";
    public static final String SCENE_MODE_HDR = "hdr";
    public static final String SCENE_MODE_LANDSCAPE = "landscape";
    public static final String SCENE_MODE_NIGHT = "night";
    public static final String SCENE_MODE_NIGHT_PORTRAIT = "night-portrait";
    public static final String SCENE_MODE_PARTY = "party";
    public static final String SCENE_MODE_PORTRAIT = "portrait";
    public static final String SCENE_MODE_SNOW = "snow";
    public static final String SCENE_MODE_SPORTS = "sports";
    public static final String SCENE_MODE_SPOTLIGHT = "spot-light";
    public static final String SCENE_MODE_STEADYPHOTO = "steadyphoto";
    public static final String SCENE_MODE_SUNSET = "sunset";
    public static final String SCENE_MODE_THEATRE = "theatre";
    public static final String SMILE_CAPTURE_OFF = "off";
    public static final String SMILE_CAPTURE_ON = "on";
    public static final String STILL_HDR_AUTO = "auto";
    public static final String STILL_HDR_OFF = "off";
    public static final String STILL_HDR_ON = "on-still-hdr";
    private static final String TAG = "CameraParameters";
    public static final String VIDEO_HDR_OFF = "off";
    public static final String VIDEO_HDR_ON = "on-video-hdr";
    public static final String VS_OFF = "off";
    public static final String VS_ON = "on";
    public static final String VS_ON_INTELLIGENT_ACTIVE = "intelligent_active";
    public static final String VS_ON_STEADY_SHOT = "on";
    public static final String WHITE_BALANCE_AUTO = "auto";
    public static final String WHITE_BALANCE_CLOUDY_DAYLIGHT = "cloudy-daylight";
    public static final String WHITE_BALANCE_DAYLIGHT = "daylight";
    public static final String WHITE_BALANCE_FLUORESCENT = "fluorescent";
    public static final String WHITE_BALANCE_INCANDESCENT = "incandescent";
    public static final String WHITE_BALANCE_OFF = "off";
    private CameraInfo$CameraId mCameraId;
    private ShutterTrigger mShutterTrigger;
    private SlowMotion mSlowMotion;
    private VideoHdr mVideoHdr;
    private VideoSize mVideoSize;
    public static final Float MANUAL_FOCUS_1M = Float.valueOf(1.0f);
    public static final Float MANUAL_FOCUS_INFINITY = Float.valueOf(0.0f);
    private static final float DEFAULT_FOCUS_RANGE = MANUAL_FOCUS_1M.floatValue();
    private static final List<Rect> DEFAULT_FOCUS_RECTS = new ArrayList(Arrays.asList(new Rect()));
    private static final Range<Integer> DEFAULT_PREVIEW_FPS_RANGE = new Range<>(0, 30);
    private float mZoomRatio = 0.0f;
    private int mMaxCaptureNum = 1;
    private List<Rect> mFocusRects = DEFAULT_FOCUS_RECTS;
    private Range<Integer> mPreviewFpsRange = DEFAULT_PREVIEW_FPS_RANGE;
    private Location mGpsData = DEFAULT_GPS_DATA;
    private int mRotation = 0;
    private Rect mMeteringArea = new Rect();
    private boolean mNeedApply = false;
    private boolean mNeedCreatePreviewSession = false;
    private final Map<String, Object> mParameters = new HashMap();

    public CameraParameters(CameraInfo$CameraId cameraInfo$CameraId) {
        this.mCameraId = CameraInfo$CameraId.BACK;
        this.mCameraId = cameraInfo$CameraId;
        this.mParameters.put("focus-mode", "auto");
        this.mParameters.put("sony-focus-area", "center");
        this.mParameters.put("sony-manual-focus", Float.valueOf(DEFAULT_FOCUS_RANGE));
        this.mParameters.put("sony-iso", 50);
        this.mParameters.put("sony-shutter-speed", 4000000L);
        this.mParameters.put("sony-ae-mode", "auto");
        this.mParameters.put("flash-mode", "off");
        this.mParameters.put("whitebalance", "off");
        this.mParameters.put("sony-is", "off");
        this.mParameters.put("sony-metering-mode", "center-weighted");
        this.mParameters.put("sony-power-save-mode", "off");
        this.mParameters.put("sony-awb-compensation-ab", 0);
        this.mParameters.put("climax-recognition", "auto");
        this.mParameters.put("sony-shutter-speed-limit", 0L);
        this.mParameters.put("sony-soft-skin-level", 0);
        this.mParameters.put("exposure-compensation-step", 0);
        this.mParameters.put("sony-fusion-mode", "off");
        this.mParameters.put("distortion-correction", "off");
        this.mParameters.put("preview-size", new Rect(0, 0, 1280, 720));
        this.mParameters.put("picture-size", new Rect(0, 0, 1280, 720));
    }

    public CameraInfo$CameraId getCameraId() {
        return this.mCameraId;
    }

    public void setPowerMode(String str) {
        setKeyValue("sony-power-save-mode", str);
    }

    public String getPowerMode() {
        return (String) getKeyValue("sony-power-save-mode");
    }

    public void setExposureTimeLimit(long j) {
        setKeyValue("sony-shutter-speed-limit", Long.valueOf(j));
    }

    public long getExposureTimeLimit() {
        return ((Long) getKeyValue("sony-shutter-speed-limit")).longValue();
    }

    public void setFocusRange(float f) {
        setKeyValue("sony-manual-focus", Float.valueOf(f));
    }

    public float getFocusRange() {
        return ((Float) getKeyValue("sony-manual-focus")).floatValue();
    }

    public void setFocusMode(String str) {
        setKeyValue("focus-mode", str);
    }

    public String getFocusMode() {
        return (String) getKeyValue("focus-mode");
    }

    public void setFocusRectangles(@Nullable List<Rect> list) {
        if (list == null) {
            list = new ArrayList<>();
            list.add(new Rect());
        }
        boolean z = false;
        if (this.mFocusRects.size() != list.size()) {
            z = true;
            break;
        }
        for (int i = 0; i < this.mFocusRects.size(); i++) {
            if (!this.mFocusRects.get(i).equals(list.get(i))) {
                z = true;
                break;
            }
        }
        if (z) {
            this.mFocusRects = list;
            this.mNeedApply = true;
        }
    }

    public List<Rect> getFocusRectangles() {
        for (Rect rect : this.mFocusRects) {
            if (CamLog.VERBOSE) {
                CamLog.d("getFocusRectangles() : rectangle = " + rect);
            }
        }
        return this.mFocusRects;
    }

    public void setFocusArea(String str) {
        setKeyValue("sony-focus-area", str);
    }

    public String getFocusArea() {
        return (String) getKeyValue("sony-focus-area");
    }

    public void setExposureCompensation(int i) {
        setKeyValue("exposure-compensation-step", Integer.valueOf(i));
    }

    public int getExposureCompensation() {
        return ((Integer) getKeyValue("exposure-compensation-step")).intValue();
    }

    public void setMeteringMode(String str) {
        setKeyValue("sony-metering-mode", str);
    }

    public String getMeteringMode() {
        return (String) getKeyValue("sony-metering-mode");
    }

    public void setMeteringArea(List<Rect> list) {
        if (list == null || list.size() < 1) {
            return;
        }
        if (CamLog.VERBOSE) {
            CamLog.d("setMeteringArea() : value = " + list.get(0));
        }
        int iCenterX = list.get(0).centerX();
        int iCenterY = list.get(0).centerY();
        Rect rect = new Rect(iCenterX, iCenterY, iCenterX + 1, iCenterY + 1);
        if (rect.left == this.mMeteringArea.left && rect.top == this.mMeteringArea.top && rect.right == this.mMeteringArea.right && rect.bottom == this.mMeteringArea.bottom) {
            return;
        }
        this.mNeedApply = true;
        this.mMeteringArea = rect;
    }

    public Rect getMeteringArea() {
        if (CamLog.VERBOSE) {
            CamLog.d("getMeteringArea() : " + this.mMeteringArea);
        }
        return this.mMeteringArea;
    }

    public void setAeMode(String str) {
        setKeyValue("sony-ae-mode", str);
    }

    public String getAeMode() {
        return (String) getKeyValue("sony-ae-mode");
    }

    public void setWhiteBalance(String str) {
        setKeyValue("whitebalance", str);
    }

    public String getWhiteBalance() {
        return (String) getKeyValue("whitebalance");
    }

    public void setShutterSpeed(long j) {
        setKeyValue("sony-shutter-speed", Long.valueOf(j));
    }

    public long getShutterSpeed() {
        return ((Long) getKeyValue("sony-shutter-speed")).longValue();
    }

    public void setIso(int i) {
        setKeyValue("sony-iso", Integer.valueOf(i));
    }

    public int getIso() {
        return ((Integer) getKeyValue("sony-iso")).intValue();
    }

    public void setFlashMode(String str) {
        setKeyValue("flash-mode", str);
    }

    public String getFlashMode() {
        return (String) getKeyValue("flash-mode");
    }

    public void setStillHdr(String str) {
        setKeyValue("sony-is", str);
    }

    public String getStillHdr() {
        return (String) getKeyValue("sony-is");
    }

    public void setZoom(float f) {
        if (CamLog.VERBOSE) {
            CamLog.d("setZoom() : zoomRatio = " + f);
        }
        if (f != this.mZoomRatio) {
            this.mNeedApply = true;
            this.mZoomRatio = f;
        }
    }

    public float getZoom() {
        return this.mZoomRatio;
    }

    public void setAwbColorCompensationAb(int i) {
        setKeyValue("sony-awb-compensation-ab", Integer.valueOf(i));
    }

    public int getAwbColorCompensationAb() {
        return ((Integer) getKeyValue("sony-awb-compensation-ab")).intValue();
    }

    public void setSoftSkin(int i) {
        setKeyValue("sony-soft-skin-level", Integer.valueOf(i));
    }

    public int getSoftSkin() {
        return ((Integer) getKeyValue("sony-soft-skin-level")).intValue();
    }

    public void setPreviewFpsRange(int i, int i2) {
        if (CamLog.VERBOSE) {
            CamLog.d("setPreviewFpsRange() : min = " + i + ", max = " + i2);
        }
        if (((Integer) this.mPreviewFpsRange.getLower()).intValue() == i && ((Integer) this.mPreviewFpsRange.getUpper()).intValue() == i2) {
            return;
        }
        this.mNeedApply = true;
        this.mPreviewFpsRange = new Range<>(Integer.valueOf(i), Integer.valueOf(i2));
    }

    public Range<Integer> getFpsRange() {
        return this.mPreviewFpsRange;
    }

    public void setPreviewSize(Rect rect) {
        if (setKeyValue("preview-size", rect)) {
            this.mNeedCreatePreviewSession = true;
        }
    }

    public Rect getPreviewSize() {
        return (Rect) getKeyValue("preview-size");
    }

    public void setPictureSize(Rect rect) {
        if (setKeyValue("picture-size", rect)) {
            this.mNeedCreatePreviewSession = true;
        }
    }

    public Rect getPictureSize() {
        return (Rect) getKeyValue("picture-size");
    }

    public void setPredictiveCaptureNum(int i) {
        if (this.mMaxCaptureNum != i) {
            this.mMaxCaptureNum = i;
            this.mNeedCreatePreviewSession = true;
            this.mNeedApply = true;
        }
    }

    public int getPredictiveCaptureNum() {
        return this.mMaxCaptureNum;
    }

    public void setVideoSize(VideoSize videoSize) {
        if (this.mVideoSize != videoSize) {
            this.mVideoSize = videoSize;
            this.mNeedCreatePreviewSession = true;
            this.mNeedApply = true;
        }
    }

    public VideoSize getVideoSize() {
        return this.mVideoSize;
    }

    public void setVideoStabilizer(String str) {
        setKeyValue("sony-vs", str);
    }

    public void setVideoHdr(VideoHdr videoHdr) {
        if (this.mVideoHdr != videoHdr) {
            this.mVideoHdr = videoHdr;
            this.mNeedCreatePreviewSession = true;
            this.mNeedApply = true;
        }
    }

    public VideoHdr getVideoHdr() {
        return this.mVideoHdr;
    }

    public String getVideoStabilizer() {
        return (String) getKeyValue("sony-vs");
    }

    public void setShutterTrigger(ShutterTrigger shutterTrigger) {
        if (this.mShutterTrigger != shutterTrigger) {
            this.mShutterTrigger = shutterTrigger;
            this.mNeedCreatePreviewSession = true;
            this.mNeedApply = true;
        }
    }

    public ShutterTrigger getShutterTrigger() {
        return this.mShutterTrigger;
    }

    public void setGpsData(Location location) {
        if (CamLog.VERBOSE) {
            CamLog.d("setGpsData() : location = " + location);
        }
        if (location != this.mGpsData) {
            this.mNeedApply = true;
            this.mGpsData = location;
        }
    }

    public Location getGpsData() {
        return this.mGpsData;
    }

    public void removeGpsData() {
        setGpsData(null);
    }

    public void setSlowMotion(SlowMotion slowMotion) {
        if (this.mSlowMotion != slowMotion) {
            this.mSlowMotion = slowMotion;
            this.mNeedCreatePreviewSession = true;
            this.mNeedApply = true;
        }
    }

    public SlowMotion getSlowMotion() {
        return this.mSlowMotion;
    }

    public void setPredictiveCapture(String str) {
        setKeyValue("climax-recognition", str);
    }

    public String getPredictiveCapture() {
        return (String) getKeyValue("climax-recognition");
    }

    public void setFusionMode(String str) {
        setKeyValue("sony-fusion-mode", str);
    }

    public String getFusionMode() {
        return (String) getKeyValue("sony-fusion-mode");
    }

    public void setDistortionCorrection(String str) {
        setKeyValue("distortion-correction", str);
    }

    public String getDistortionCorrection() {
        return (String) getKeyValue("distortion-correction");
    }

    public void setRotation(int i) {
        if (CamLog.VERBOSE) {
            CamLog.d("setRotation() : orientation = " + i);
        }
        if (i != this.mRotation) {
            this.mNeedApply = true;
            this.mRotation = i;
        }
    }

    public int getRotation() {
        return this.mRotation;
    }

    public void requestApply() {
        this.mNeedApply = true;
    }

    public boolean needApply() {
        return this.mNeedApply;
    }

    public void applied() {
        this.mNeedApply = false;
    }

    public boolean needCreatePreviewSession() {
        return this.mNeedCreatePreviewSession;
    }

    public void forceRequestCreatePreviewSession() {
        this.mNeedCreatePreviewSession = true;
    }

    public void createPreviewSessionRequestDone() {
        this.mNeedCreatePreviewSession = false;
    }

    private boolean setKeyValue(@NonNull String str, @Nullable Object obj) {
        if (CamLog.VERBOSE) {
            CamLog.d("setKeyValue : key = " + str + ", value = " + obj);
        }
        Object obj2 = this.mParameters.get(str);
        boolean z = obj2 != null ? !obj2.equals(obj) : obj != null;
        if (z) {
            if (CamLog.VERBOSE) {
                CamLog.d("setKeyValue : value is changed from " + obj2 + " to " + obj);
            }
            this.mParameters.put(str, obj);
            this.mNeedApply = true;
        }
        return z;
    }

    @Nullable
    private Object getKeyValue(@NonNull String str) {
        return this.mParameters.get(str);
    }
}
