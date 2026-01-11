.class public Lcom/sonyericsson/android/camera/device/CameraParameters;
.super Ljava/lang/Object;
.source "CameraParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$FinishBurstResultCallback;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$AutoNightResultCallback;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$AutoHdrResultCallback;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResultCallback;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResultCallback;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;
    }
.end annotation


# static fields
.field public static final AE_METERING_RECTANGLE_HEIGHT:I = 0x1f8

.field public static final AE_METERING_RECTANGLE_WIDTH:I = 0x1f8

.field public static final AE_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final AE_MODE_ISO_PRIO:Ljava/lang/String; = "iso-prio"

.field public static final AE_MODE_SEMI_AUTO:Ljava/lang/String; = "semi-auto"

.field public static final AE_MODE_SHUTTER_PRIO:Ljava/lang/String; = "shutter-prio"

.field public static final AE_REGION_MODE_CENTER_WEIGHTED:Ljava/lang/String; = "center-weighted"

.field public static final AE_REGION_MODE_FACE:Ljava/lang/String; = "face"

.field public static final AE_REGION_MODE_FRAME_AVERAGE:Ljava/lang/String; = "frame-average"

.field public static final AE_REGION_MODE_MULTI:Ljava/lang/String; = "multi"

.field public static final AE_REGION_MODE_SPOT:Ljava/lang/String; = "spot"

.field public static final AE_REGION_MODE_USER_REGION:Ljava/lang/String; = "user"

.field public static final AE_REGION_WEIGHT:I = 0x1

.field public static final AF_RECTANGLE_HEIGHT:I = 0x1f8

.field public static final AF_RECTANGLE_WIDTH:I = 0x1f8

.field public static final AI_CLEAR_FACE_OFF:Ljava/lang/String; = "off"

.field public static final AI_CLEAR_FACE_ON:Ljava/lang/String; = "on"

.field public static final AWB_COLOR_COMPENSATION_INVALID:I = -0x64

.field public static final AWB_COLOR_COMPENSATION_MAX:I = 0x7

.field public static final AWB_COLOR_COMPENSATION_MIN:I = -0x7

.field public static final BACKLIGHT_CORRECTION_AUTO:Ljava/lang/String; = "auto"

.field public static final BACKLIGHT_CORRECTION_OFF:Ljava/lang/String; = "off"

.field public static final BOKEH_MODE_OFF:Ljava/lang/String; = "off"

.field public static final BOKEH_MODE_ON:Ljava/lang/String; = "on"

.field public static final CAMERA_MODE_FRONT:Ljava/lang/String; = "front-camera"

.field public static final CAMERA_MODE_FRONT_SCENCE_RECOGNITION:Ljava/lang/String; = "front-scene-recognition"

.field public static final CAMERA_MODE_FRONT_VIDEO:Ljava/lang/String; = "front-video"

.field public static final CAMERA_MODE_FRONT_WIDE:Ljava/lang/String; = "front-wide-camera"

.field public static final CAMERA_MODE_FRONT_WIDE_SCENCE_RECOGNITION:Ljava/lang/String; = "front-wide-scene-recognition"

.field public static final CAMERA_MODE_FRONT_WIDE_VIDEO:Ljava/lang/String; = "front-wide-video"

.field public static final CAMERA_MODE_NORMAL:Ljava/lang/String; = "normal"

.field public static final CAMERA_MODE_SCENCE_RECOGNITION:Ljava/lang/String; = "scene-recognition"

.field public static final CAMERA_MODE_SLOW_MOTION:Ljava/lang/String; = "slow-motion"

.field public static final CAMERA_MODE_VIDEO:Ljava/lang/String; = "video-camera"

.field public static final CLIMAX_RECOGNITION_AUTO:Ljava/lang/String; = "auto"

.field public static final CLIMAX_RECOGNITION_OFF:Ljava/lang/String; = "off"

.field public static final CLIMAX_RECOGNITION_ON:Ljava/lang/String; = "on"

.field private static final DEFAULT_AE_MODE:Ljava/lang/String; = "auto"

.field private static final DEFAULT_AE_REGION:Ljava/lang/String; = "center-weighted"

.field private static final DEFAULT_AF_AREA:Ljava/lang/String; = "center"

.field private static final DEFAULT_AF_MODE:Ljava/lang/String; = "auto"

.field private static final DEFAULT_AWB_COLOR_COMPENSATION_AB:I = -0x64

.field private static final DEFAULT_AWB_COLOR_COMPENSATION_GM:I = 0x0

.field private static final DEFAULT_BOKEH_MODE:Ljava/lang/String; = "off"

.field private static final DEFAULT_BOKEH_STRENGTH:F = 0.5f

.field private static final DEFAULT_CLIMAX_RECOGNITION:Ljava/lang/String; = "auto"

.field private static final DEFAULT_DISTORTION_CORRECTION:Ljava/lang/String; = "off"

.field private static final DEFAULT_EXPOSURE_COMPENSATION:I = 0x0

.field private static final DEFAULT_EXPOSURE_TIME_LIMIT:J = 0x0L

.field private static final DEFAULT_FLASH_BEFORE_COUNTDOWN:Ljava/lang/String; = "off"

.field private static final DEFAULT_FLASH_MODE:Ljava/lang/String; = "off"

.field private static final DEFAULT_FOCUS_RANGE:F

.field private static final DEFAULT_FOCUS_RECTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_FUSION_MODE:Ljava/lang/String; = "off"

.field private static final DEFAULT_GPS_DATA:Landroid/location/Location;

.field private static final DEFAULT_ISO:I = 0x32

.field private static final DEFAULT_JPEG_QUALITY:I = 0x13

.field private static final DEFAULT_MAX_PREVIEW_FPS:I = 0x1e

.field private static final DEFAULT_MIN_PREVIEW_FPS:I = 0x0

.field private static final DEFAULT_NIGHT_MODE:Ljava/lang/String; = "auto"

.field private static final DEFAULT_POWER_MODE:Ljava/lang/String; = "off"

.field private static final DEFAULT_PREVIEW_FPS_RANGE:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ROTATION:I = 0x0

.field private static final DEFAULT_SHUTTER_SPEED:J = 0x3d0900L

.field private static final DEFAULT_SOFT_SKIN:I = 0x0

.field private static final DEFAULT_STILL_HDR:Ljava/lang/String; = "off"

.field private static final DEFAULT_WHITE_BALANCE:Ljava/lang/String; = "off"

.field public static final DISABLE_BG_PROCESS_OFF:Ljava/lang/String; = "off"

.field public static final DISABLE_BG_PROCESS_ON:Ljava/lang/String; = "on"

.field public static final DISPLAY_FLASH_MODE_AUTO:Ljava/lang/String; = "display-auto"

.field public static final DISPLAY_FLASH_MODE_ON:Ljava/lang/String; = "display-on"

.field public static final DISTORTION_CORRECTION_OFF:Ljava/lang/String; = "off"

.field public static final DISTORTION_CORRECTION_ON:Ljava/lang/String; = "on"

.field public static final FLASH_BEFORE_COUNTDOWN_OFF:Ljava/lang/String; = "off"

.field public static final FLASH_BEFORE_COUNTDOWN_ON:Ljava/lang/String; = "on"

.field public static final FLASH_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final FLASH_MODE_NIGHT_PORTRAIT:Ljava/lang/String; = "night_portrait"

.field public static final FLASH_MODE_OFF:Ljava/lang/String; = "off"

.field public static final FLASH_MODE_ON:Ljava/lang/String; = "on"

.field public static final FLASH_MODE_RED_EYE:Ljava/lang/String; = "red-eye"

.field public static final FLASH_MODE_TORCH:Ljava/lang/String; = "torch"

.field public static final FOCUS_AREA_CENTER:Ljava/lang/String; = "center"

.field public static final FOCUS_AREA_FACE:Ljava/lang/String; = "face"

.field public static final FOCUS_AREA_MULTI:Ljava/lang/String; = "multi"

.field public static final FOCUS_AREA_USER:Ljava/lang/String; = "user"

.field public static final FOCUS_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final FOCUS_MODE_CONTINUOUS_PICTURE:Ljava/lang/String; = "continuous-picture"

.field public static final FOCUS_MODE_CONTINUOUS_VIDEO:Ljava/lang/String; = "continuous-video"

.field public static final FOCUS_MODE_FIXED:Ljava/lang/String; = "fixed"

.field public static final FOCUS_MODE_INFINITY:Ljava/lang/String; = "infinity"

.field public static final FOCUS_MODE_MANUAL:Ljava/lang/String; = "manual"

.field public static final FOCUS_REGION_WEIGHT_AUTO:I = 0x0

.field public static final FOCUS_REGION_WEIGHT_MANUAL:I = 0x1

.field public static final FUSION_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final FUSION_MODE_OFF:Ljava/lang/String; = "off"

.field public static final FUSION_MODE_ON:Ljava/lang/String; = "on"

.field public static final KEY_ACTIVE_ARRAY_SIZE:Ljava/lang/String; = "active-array-size"

.field public static final KEY_BOKEH_MODE:Ljava/lang/String; = "sony-bokeh-mode"

.field public static final KEY_BOKEH_STRENGTH:Ljava/lang/String; = "sony-bokeh-strength"

.field public static final KEY_DISABLE_BG_PROCESS:Ljava/lang/String; = "sony-disable-bg-process"

.field public static final KEY_DISTORTION_CORRECTION:Ljava/lang/String; = "distortion-correction"

.field public static final KEY_EXPOSURE_COMPENSATION_STEP:Ljava/lang/String; = "exposure-compensation-step"

.field public static final KEY_EX_AE_MODE:Ljava/lang/String; = "sony-ae-mode"

.field public static final KEY_EX_AI_CLEAR_FACE:Ljava/lang/String; = "sony-ai-clear-face"

.field public static final KEY_EX_AWB_COMPENSATION_AB:Ljava/lang/String; = "sony-awb-compensation-ab"

.field public static final KEY_EX_CLIMAX_RECOGNITION:Ljava/lang/String; = "climax-recognition"

.field public static final KEY_EX_FOCUS_AREA:Ljava/lang/String; = "sony-focus-area"

.field public static final KEY_EX_FUSION_MODE:Ljava/lang/String; = "sony-fusion-mode"

.field public static final KEY_EX_FUSION_SUPPORTED_PICTURE_SIZES:Ljava/lang/String; = "sony-fusion-supported-picture-size-values"

.field public static final KEY_EX_FUSION_SUPPORTED_VIDEO_CONFIGURATION:Ljava/lang/String; = "sony-fusion-supported-video-config"

.field public static final KEY_EX_IMAGE_STABILIZER:Ljava/lang/String; = "sony-is"

.field public static final KEY_EX_INTELLIGENT_ACTIVE_CONFIGURATION:Ljava/lang/String; = "sony-vs-intelligent-active-config"

.field public static final KEY_EX_ISO:Ljava/lang/String; = "sony-iso"

.field public static final KEY_EX_LOGICAL_MULTI_CAMERA_BOKEH_CONTINUOUS_SUPPORTED:Ljava/lang/String; = "sony-logical-multi-camera-bokeh-continuous-supported"

.field public static final KEY_EX_LOGICAL_MULTI_CAMERA_BOKEH_STILL_SUPPORTED:Ljava/lang/String; = "sony-logical-multi-camera-bokeh-still-supported"

.field public static final KEY_EX_LOGICAL_MULTI_CAMERA_OPTICAL_ZOOM_SUPPORTED:Ljava/lang/String; = "sony-logical-multi-camera-optical-zoom-supported"

.field public static final KEY_EX_MANUAL_FOCUS:Ljava/lang/String; = "sony-manual-focus"

.field public static final KEY_EX_MANUAL_FOCUS_FOR_MACRO:Ljava/lang/String; = "sony-manual-focus-for-macro"

.field public static final KEY_EX_MANUAL_ISO_SUPPORTED_SIZES:Ljava/lang/String; = "sony-manual-iso-size-values"

.field public static final KEY_EX_MAX_AWB_COMPENSATION_AB:Ljava/lang/String; = "sony-max-awb-compensation-ab"

.field public static final KEY_EX_MAX_SHUTTER_SPEED:Ljava/lang/String; = "sony-max-shutter-speed"

.field public static final KEY_EX_MAX_SOFT_SKIN_LEVEL:Ljava/lang/String; = "sony-max-soft-skin-level"

.field public static final KEY_EX_METERING_MODE:Ljava/lang/String; = "sony-metering-mode"

.field public static final KEY_EX_MIN_AWB_COMPENSATION_AB:Ljava/lang/String; = "sony-min-awb-compensation-ab"

.field public static final KEY_EX_MIN_SHUTTER_SPEED:Ljava/lang/String; = "sony-min-shutter-speed"

.field public static final KEY_EX_MIN_SHUTTER_SPEED_LIMIT:Ljava/lang/String; = "sony-min-shutter-speed-limit"

.field public static final KEY_EX_MIN_SOFT_SKIN_LEVEL:Ljava/lang/String; = "sony-min-soft-skin-level"

.field public static final KEY_EX_NORMAL_SLOW_CONFIGURATION:Ljava/lang/String; = "sony-normal-slow-config"

.field public static final KEY_EX_OBJECT_TRACKING_SUPPORTED:Ljava/lang/String; = "sony-object-tracking-supported"

.field public static final KEY_EX_POWER_SAVE_MODE:Ljava/lang/String; = "sony-power-save-mode"

.field public static final KEY_EX_SCENE_DETECTION_SUPPORTED:Ljava/lang/String; = "sony-scene-detect-supported"

.field public static final KEY_EX_SHUTTER_SPEED:Ljava/lang/String; = "sony-shutter-speed"

.field public static final KEY_EX_SHUTTER_SPEED_LIMIT:Ljava/lang/String; = "sony-shutter-speed-limit"

.field public static final KEY_EX_SMILE_DETECTION:Ljava/lang/String; = "sony-smile-detect"

.field public static final KEY_EX_SOFT_SKIN_LEVEL:Ljava/lang/String; = "sony-soft-skin-level"

.field public static final KEY_EX_SONY_CAMERA_MODE:Ljava/lang/String; = "sony-camera-mode"

.field public static final KEY_EX_STEADY_SHOT_CONFIGURATION:Ljava/lang/String; = "sony-vs-steady-shot-config"

.field public static final KEY_EX_STILL_HDR_SUPPORTED_SIZES:Ljava/lang/String; = "sony-still-hdr-size-values"

.field public static final KEY_EX_SUPER_RESOLUTION_ZOOM:Ljava/lang/String; = "sony-super-resolution-zoom"

.field public static final KEY_EX_SUPER_SLOW:Ljava/lang/String; = "sony-super-slow"

.field public static final KEY_EX_SUPER_SLOW_CONFIGURATION:Ljava/lang/String; = "sony-super-slow-config"

.field public static final KEY_EX_SUPER_SLOW_FRAME_NUM:Ljava/lang/String; = "sony-super-slow-framenum"

.field public static final KEY_EX_SUPER_SLOW_VALUES:Ljava/lang/String; = "sony-super-slow-values"

.field public static final KEY_EX_SUPPORTED_AE_MODES:Ljava/lang/String; = "sony-ae-mode-values"

.field public static final KEY_EX_SUPPORTED_FACE_DETECTIONS:Ljava/lang/String; = "sony-face-detect-values"

.field public static final KEY_EX_SUPPORTED_FOCUS_AREAS:Ljava/lang/String; = "sony-focus-area-values"

.field public static final KEY_EX_SUPPORTED_FUSION_ISO_RANGE:Ljava/lang/String; = "sony-fusion-iso-range"

.field public static final KEY_EX_SUPPORTED_FUSION_MODES:Ljava/lang/String; = "sony-fusion"

.field public static final KEY_EX_SUPPORTED_IMAGE_STABILIZERS:Ljava/lang/String; = "sony-is-values"

.field public static final KEY_EX_SUPPORTED_ISO_RANGE:Ljava/lang/String; = "sony-iso-range"

.field public static final KEY_EX_SUPPORTED_METERING_MODES:Ljava/lang/String; = "sony-metering-mode-values"

.field public static final KEY_EX_SUPPORTED_POWER_SAVE_MODE:Ljava/lang/String; = "sony-power-save-mode-values"

.field public static final KEY_EX_SUPPORTED_SHUTTER_SPEED:Ljava/lang/String; = "sony-shutter-speed-values"

.field public static final KEY_EX_SUPPORTED_SMILE_DETECTIONS:Ljava/lang/String; = "sony-smile-detect-values"

.field public static final KEY_EX_SUPPORTED_VIDEO_OIS:Ljava/lang/String; = "sony-vo-values"

.field public static final KEY_EX_SUPPORTED_VIDEO_STABILIZERS:Ljava/lang/String; = "sony-vs-values"

.field public static final KEY_EX_TRACKING_FOCUS_DURING_LOCK_SUPPORTED:Ljava/lang/String; = "sony-tracking-focus-during-lock-supported"

.field public static final KEY_EX_VIDEO_BACKLIGHT_CORRECTION:Ljava/lang/String; = "sony-backlight-correction-values"

.field public static final KEY_EX_VIDEO_STABILIZER:Ljava/lang/String; = "sony-vs"

.field public static final KEY_EX_VIDEO_SUPER_RESOLUTION_ZOOM:Ljava/lang/String; = "sony-video-super-resolution-zoom"

.field public static final KEY_FLASH_BEFORE_COUNTDOWN:Ljava/lang/String; = "is-flash-before-countdown"

.field public static final KEY_FLASH_MODE:Ljava/lang/String; = "flash-mode"

.field public static final KEY_FOCUS_AREAS:Ljava/lang/String; = "focus-areas"

.field public static final KEY_FOCUS_MODE:Ljava/lang/String; = "focus-mode"

.field public static final KEY_HDR_VIDEO_SUPPORTED:Ljava/lang/String; = "hdr-video-supported"

.field public static final KEY_INPUT_SIZE:Ljava/lang/String; = "input-size"

.field public static final KEY_LENS_FACING:Ljava/lang/String; = "lens-facing"

.field public static final KEY_MANUAL_FOCUS_SUPPORTED:Ljava/lang/String; = "manual-focus-supported"

.field public static final KEY_MAX_EXPOSURE_COMPENSATION:Ljava/lang/String; = "max-exposure-compensation"

.field public static final KEY_MAX_NUM_DETECTED_FACES:Ljava/lang/String; = "max-num-detected-faces"

.field public static final KEY_MAX_NUM_FOCUS_AREAS:Ljava/lang/String; = "max-num-focus-areas"

.field public static final KEY_MAX_ZOOM_RATIO:Ljava/lang/String; = "max-zoom-ratio"

.field public static final KEY_MIN_EXPOSURE_COMPENSATION:Ljava/lang/String; = "min-exposure-compensation"

.field public static final KEY_NIGHT_MODE:Ljava/lang/String; = "sony-night-mode"

.field public static final KEY_PICTURE_SIZE:Ljava/lang/String; = "picture-size"

.field public static final KEY_PREFERRED_PREVIEW_SIZE_FOR_HDR_VIDEO:Ljava/lang/String; = "sony-preferred-preview-size-for-hdr-video"

.field public static final KEY_PREFERRED_PREVIEW_SIZE_FOR_STILL:Ljava/lang/String; = "sony-preferred-preview-size-for-still"

.field public static final KEY_PREFERRED_PREVIEW_SIZE_FOR_VIDEO:Ljava/lang/String; = "sony-preferred-preview-size-for-video"

.field public static final KEY_PREVIEW_FPS_RANGE:Ljava/lang/String; = "preview-fps-range"

.field public static final KEY_PREVIEW_SIZE:Ljava/lang/String; = "preview-size"

.field public static final KEY_SCENE_MODE:Ljava/lang/String; = "scene-mode"

.field public static final KEY_SENSOR_NAME:Ljava/lang/String; = "sensor-name"

.field public static final KEY_VIDEO_SIZE:Ljava/lang/String; = "video-size"

.field public static final KEY_WHITE_BALANCE:Ljava/lang/String; = "whitebalance"

.field public static final KEY_WIDE_ZOOM_TARGET_RATIO:Ljava/lang/String; = "wide-zoom-target-ratio"

.field public static final KEY_WLED_TRIGGER_LUX_INDEX:Ljava/lang/String; = "wled-trigger-lux-index"

.field public static final KEY_ZOOM_SWITCH_POINT_RATIOS:Ljava/lang/String; = "zoom-switch-point-ratios"

.field public static final MANUAL_FOCUS_1M:Ljava/lang/Float;

.field public static final MANUAL_FOCUS_INFINITY:Ljava/lang/Float;

.field public static final POWER_SAVE_MODE_DEFAULT_MAX_PREVIEW_FPS:I = 0xf

.field public static final POWER_SAVE_MODE_DEFAULT_MIN_PREVIEW_FPS:I = 0x7

.field public static final POWER_SAVING_MODE_LOW_POWER:Ljava/lang/String; = "low"

.field public static final POWER_SAVING_MODE_OFF:Ljava/lang/String; = "off"

.field public static final POWER_SAVING_MODE_ULTRA_LOW_POWER:Ljava/lang/String; = "ultra-low"

.field public static final PREVIEW_FPS_MAX_INDEX:I = 0x1

.field public static final PREVIEW_FPS_MIN_INDEX:I = 0x0

.field public static final SCENE_MODE_ACTION:Ljava/lang/String; = "action"

.field public static final SCENE_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final SCENE_MODE_BABY:Ljava/lang/String; = "baby"

.field public static final SCENE_MODE_BACKLIGHT:Ljava/lang/String; = "backlight"

.field public static final SCENE_MODE_BACKLIGHT_PORTRAIT:Ljava/lang/String; = "backlight-portrait"

.field public static final SCENE_MODE_BARCODE:Ljava/lang/String; = "barcode"

.field public static final SCENE_MODE_BEACH:Ljava/lang/String; = "beach"

.field public static final SCENE_MODE_CANDLELIGHT:Ljava/lang/String; = "candlelight"

.field public static final SCENE_MODE_DARK:Ljava/lang/String; = "dark"

.field public static final SCENE_MODE_DISH:Ljava/lang/String; = "dish"

.field public static final SCENE_MODE_DOCUMENT:Ljava/lang/String; = "document"

.field public static final SCENE_MODE_FIREWORKS:Ljava/lang/String; = "fireworks"

.field public static final SCENE_MODE_HDR:Ljava/lang/String; = "hdr"

.field public static final SCENE_MODE_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final SCENE_MODE_LOWLIGHT_BACKLIT:Ljava/lang/String; = "lowlight_backlit"

.field public static final SCENE_MODE_NIGHT:Ljava/lang/String; = "night"

.field public static final SCENE_MODE_NIGHT_PORTRAIT:Ljava/lang/String; = "night-portrait"

.field public static final SCENE_MODE_PARTY:Ljava/lang/String; = "party"

.field public static final SCENE_MODE_PET:Ljava/lang/String; = "pet"

.field public static final SCENE_MODE_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final SCENE_MODE_SNOW:Ljava/lang/String; = "snow"

.field public static final SCENE_MODE_SPORTS:Ljava/lang/String; = "sports"

.field public static final SCENE_MODE_SPOTLIGHT:Ljava/lang/String; = "spot-light"

.field public static final SCENE_MODE_STEADYPHOTO:Ljava/lang/String; = "steadyphoto"

.field public static final SCENE_MODE_SUNSET:Ljava/lang/String; = "sunset"

.field public static final SCENE_MODE_THEATRE:Ljava/lang/String; = "theatre"

.field public static final SMILE_CAPTURE_OFF:Ljava/lang/String; = "off"

.field public static final SMILE_CAPTURE_ON:Ljava/lang/String; = "on"

.field public static final STILL_HDR_AUTO:Ljava/lang/String; = "auto"

.field public static final STILL_HDR_OFF:Ljava/lang/String; = "off"

.field public static final STILL_HDR_ON:Ljava/lang/String; = "on-still-hdr"

.field public static final STILL_NIGHT_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final STILL_NIGHT_MODE_OFF:Ljava/lang/String; = "off"

.field public static final STILL_NIGHT_MODE_ON:Ljava/lang/String; = "on"

.field public static final SUPER_RESOLUTION_ZOOM_AUTO:Ljava/lang/String; = "auto"

.field public static final SUPER_RESOLUTION_ZOOM_OFF:Ljava/lang/String; = "off"

.field private static final TAG:Ljava/lang/String; = "CameraParameters"

.field public static final VIDEO_HDR_OFF:Ljava/lang/String; = "off"

.field public static final VIDEO_HDR_ON:Ljava/lang/String; = "on-video-hdr"

.field public static final VIDEO_SUPER_RESOLUTION_ZOOM_AUTO:Ljava/lang/String; = "auto"

.field public static final VIDEO_SUPER_RESOLUTION_ZOOM_OFF:Ljava/lang/String; = "off"

.field public static final VS_OFF:Ljava/lang/String; = "off"

.field public static final VS_ON:Ljava/lang/String; = "on"

.field public static final VS_ON_INTELLIGENT_ACTIVE:Ljava/lang/String; = "intelligent_active"

.field public static final VS_ON_STEADY_SHOT:Ljava/lang/String; = "on"

.field public static final WHITE_BALANCE_AUTO:Ljava/lang/String; = "auto"

.field public static final WHITE_BALANCE_CLOUDY_DAYLIGHT:Ljava/lang/String; = "cloudy-daylight"

.field public static final WHITE_BALANCE_DAYLIGHT:Ljava/lang/String; = "daylight"

.field public static final WHITE_BALANCE_FLUORESCENT:Ljava/lang/String; = "fluorescent"

.field public static final WHITE_BALANCE_INCANDESCENT:Ljava/lang/String; = "incandescent"

.field public static final WHITE_BALANCE_OFF:Ljava/lang/String; = "off"


# instance fields
.field private mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field private mFocusRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mGpsData:Landroid/location/Location;

.field private mMaxCaptureNum:I

.field private mMeteringArea:Landroid/graphics/Rect;

.field private mNeedApply:Z

.field private mNeedCreatePreviewSession:Z

.field private final mParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewFpsRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQrCodeDetection:Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

.field private mRotation:I

.field private mShutterTrigger:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

.field private mSlowMotion:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

.field private mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

.field private mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field private mZoomRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 287
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters;->MANUAL_FOCUS_1M:Ljava/lang/Float;

    const/4 v1, 0x0

    .line 288
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/android/camera/device/CameraParameters;->MANUAL_FOCUS_INFINITY:Ljava/lang/Float;

    .line 363
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/sonyericsson/android/camera/device/CameraParameters;->DEFAULT_FOCUS_RANGE:F

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/Rect;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 367
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters;->DEFAULT_FOCUS_RECTS:Ljava/util/List;

    .line 372
    new-instance v0, Landroid/util/Range;

    .line 373
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters;->DEFAULT_PREVIEW_FPS_RANGE:Landroid/util/Range;

    const/4 v0, 0x0

    .line 377
    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters;->DEFAULT_GPS_DATA:Landroid/location/Location;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V
    .locals 6

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 389
    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mZoomRatio:F

    const/4 v0, 0x1

    .line 390
    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mMaxCaptureNum:I

    .line 392
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters;->DEFAULT_FOCUS_RECTS:Ljava/util/List;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mFocusRects:Ljava/util/List;

    .line 393
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters;->DEFAULT_PREVIEW_FPS_RANGE:Landroid/util/Range;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mPreviewFpsRange:Landroid/util/Range;

    .line 394
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters;->DEFAULT_GPS_DATA:Landroid/location/Location;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mGpsData:Landroid/location/Location;

    const/4 v0, 0x0

    .line 575
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 395
    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mRotation:I

    .line 400
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mMeteringArea:Landroid/graphics/Rect;

    .line 409
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    .line 415
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedCreatePreviewSession:Z

    .line 417
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 419
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    .line 559
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 561
    const-string p0, "focus-mode"

    const-string p1, "auto"

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string/jumbo p0, "sony-focus-area"

    const-string v3, "center"

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    sget p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->DEFAULT_FOCUS_RANGE:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string/jumbo v3, "sony-manual-focus"

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x32

    .line 564
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v3, "sony-iso"

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v3, 0x3d0900

    .line 565
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string/jumbo v3, "sony-shutter-speed"

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string/jumbo p0, "sony-ae-mode"

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const-string p0, "flash-mode"

    const-string v3, "off"

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const-string/jumbo p0, "whitebalance"

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const-string/jumbo p0, "sony-is"

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string/jumbo p0, "sony-metering-mode"

    const-string v4, "center-weighted"

    invoke-interface {v2, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string/jumbo p0, "sony-power-save-mode"

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, -0x64

    .line 572
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v4, "sony-awb-compensation-ab"

    invoke-interface {v2, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const-string p0, "climax-recognition"

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x0

    .line 574
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string/jumbo v4, "sony-shutter-speed-limit"

    invoke-interface {v2, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const-string/jumbo p0, "sony-soft-skin-level"

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const-string p0, "exposure-compensation-step"

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const-string/jumbo p0, "sony-fusion-mode"

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const-string p0, "distortion-correction"

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    new-instance p0, Landroid/graphics/Rect;

    const/16 v1, 0x500

    const/16 v4, 0x2d0

    invoke-direct {p0, v0, v0, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v5, "preview-size"

    invoke-interface {v2, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v0, v0, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v0, "picture-size"

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const-string/jumbo p0, "sony-bokeh-mode"

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 p0, 0x3f000000    # 0.5f

    .line 582
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string/jumbo v0, "sony-bokeh-strength"

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string/jumbo p0, "sony-night-mode"

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const-string p0, "is-flash-before-countdown"

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getKeyValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1391
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getPreferredPhotoPreviewFps()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method private setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5

    .line 1368
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 1369
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setKeyValue : key = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1372
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-eqz p2, :cond_2

    goto :goto_0

    .line 1375
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    move v1, v2

    :cond_2
    if-eqz v1, :cond_4

    .line 1380
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_3

    .line 1381
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setKeyValue : value is changed from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1383
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    :cond_4
    return v1
.end method


# virtual methods
.method public applied()V
    .locals 1

    const/4 v0, 0x0

    .line 1352
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    return-void
.end method

.method public cacheParameters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 594
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 596
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getExposureCompensation()I

    move-result v1

    .line 597
    const-string v2, "exposure-compensation-step"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getAwbColorCompensationAb()I

    move-result p0

    .line 600
    const-string/jumbo v1, "sony-awb-compensation-ab"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public createPreviewSessionRequestDone()V
    .locals 1

    const/4 v0, 0x0

    .line 1364
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedCreatePreviewSession:Z

    return-void
.end method

.method public forceRequestCreatePreviewSession()V
    .locals 1

    const/4 v0, 0x1

    .line 1360
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedCreatePreviewSession:Z

    return-void
.end method

.method public getAIClearFace()Ljava/lang/String;
    .locals 1

    .line 1191
    const-string/jumbo v0, "sony-ai-clear-face"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getAeMode()Ljava/lang/String;
    .locals 1

    .line 726
    const-string/jumbo v0, "sony-ae-mode"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getAwbColorCompensationAb()I
    .locals 1

    .line 793
    const-string/jumbo v0, "sony-awb-compensation-ab"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getBokehMode()Ljava/lang/String;
    .locals 1

    .line 1283
    const-string/jumbo v0, "sony-bokeh-mode"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getBokehStrength()F
    .locals 1

    .line 1291
    const-string/jumbo v0, "sony-bokeh-strength"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object p0
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 3

    .line 806
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const-string/jumbo v1, "sony-camera-mode"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getCameraMode() : value = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    .line 807
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 806
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 808
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDisableBGProcess()Ljava/lang/String;
    .locals 1

    .line 1327
    const-string/jumbo v0, "sony-disable-bg-process"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDistortionCorrection()Ljava/lang/String;
    .locals 1

    .line 1303
    const-string v0, "distortion-correction"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getExposureCompensation()I
    .locals 1

    .line 685
    const-string v0, "exposure-compensation-step"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getExposureTimeLimit()J
    .locals 2

    .line 621
    const-string/jumbo v0, "sony-shutter-speed-limit"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFlashBeforeCountdown()Ljava/lang/String;
    .locals 1

    .line 1319
    const-string v0, "is-flash-before-countdown"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getFlashMode()Ljava/lang/String;
    .locals 1

    .line 762
    const-string v0, "flash-mode"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getFocusArea()Ljava/lang/String;
    .locals 1

    .line 677
    const-string/jumbo v0, "sony-focus-area"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 1

    .line 637
    const-string v0, "focus-mode"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getFocusRange()F
    .locals 1

    .line 629
    const-string/jumbo v0, "sony-manual-focus"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getFocusRectangles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mFocusRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 666
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getFocusRectangles() : rectangle = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 669
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mFocusRects:Ljava/util/List;

    return-object p0
.end method

.method public getFpsRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1111
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mPreviewFpsRange:Landroid/util/Range;

    return-object p0
.end method

.method public getFusionMode()Ljava/lang/String;
    .locals 1

    .line 1275
    const-string/jumbo v0, "sony-fusion-mode"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getGpsData()Landroid/location/Location;
    .locals 0

    .line 1243
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mGpsData:Landroid/location/Location;

    return-object p0
.end method

.method public getIso()I
    .locals 1

    .line 750
    const-string/jumbo v0, "sony-iso"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMeteringArea()Landroid/graphics/Rect;
    .locals 2

    .line 717
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getMeteringArea() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mMeteringArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 718
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mMeteringArea:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getMeteringMode()Ljava/lang/String;
    .locals 1

    .line 693
    const-string/jumbo v0, "sony-metering-mode"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getNightMode()Ljava/lang/String;
    .locals 1

    .line 1311
    const-string/jumbo v0, "sony-night-mode"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPictureSize()Landroid/graphics/Rect;
    .locals 1

    .line 1131
    const-string v0, "picture-size"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPowerMode()Ljava/lang/String;
    .locals 1

    .line 613
    const-string/jumbo v0, "sony-power-save-mode"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPredictiveCapture()Ljava/lang/String;
    .locals 1

    .line 1267
    const-string v0, "climax-recognition"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPredictiveCaptureNum()I
    .locals 0

    .line 1143
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mMaxCaptureNum:I

    return p0
.end method

.method public getPreviewSize()Landroid/graphics/Rect;
    .locals 1

    .line 1121
    const-string v0, "preview-size"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public getQrCodeDetection()Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;
    .locals 0

    .line 1215
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mQrCodeDetection:Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    return-object p0
.end method

.method public getRotation()I
    .locals 0

    .line 1340
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mRotation:I

    return p0
.end method

.method public getShutterSpeed()J
    .locals 2

    .line 742
    const-string/jumbo v0, "sony-shutter-speed"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShutterTrigger()Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;
    .locals 0

    .line 1203
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mShutterTrigger:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    return-object p0
.end method

.method public getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;
    .locals 0

    .line 1259
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mSlowMotion:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    return-object p0
.end method

.method public getSoftSkin()I
    .locals 1

    .line 878
    const-string/jumbo v0, "sony-soft-skin-level"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getStillHdr()Ljava/lang/String;
    .locals 1

    .line 770
    const-string/jumbo v0, "sony-is"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSuperResolutionZoom()Ljava/lang/String;
    .locals 1

    .line 1223
    const-string/jumbo v0, "sony-super-resolution-zoom"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getVideoBacklightCorrection()Ljava/lang/String;
    .locals 1

    .line 1183
    const-string/jumbo v0, "sony-backlight-correction-values"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;
    .locals 0

    .line 1171
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    return-object p0
.end method

.method public getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 0

    .line 1155
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0
.end method

.method public getVideoStabilizer()Ljava/lang/String;
    .locals 1

    .line 1175
    const-string/jumbo v0, "sony-vs"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getVideoSuperResolutionZoom()Ljava/lang/String;
    .locals 1

    .line 1231
    const-string/jumbo v0, "sony-video-super-resolution-zoom"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getWhiteBalance()Ljava/lang/String;
    .locals 1

    .line 734
    const-string/jumbo v0, "whitebalance"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getZoom()F
    .locals 2

    .line 783
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getZoom() : zoomRatio = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mZoomRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 785
    :cond_0
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mZoomRatio:F

    return p0
.end method

.method public needApply()Z
    .locals 0

    .line 1348
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    return p0
.end method

.method public needCreatePreviewSession()Z
    .locals 0

    .line 1356
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedCreatePreviewSession:Z

    return p0
.end method

.method public removeGpsData()V
    .locals 1

    const/4 v0, 0x0

    .line 1247
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setGpsData(Landroid/location/Location;)V

    return-void
.end method

.method public requestApply()V
    .locals 1

    const/4 v0, 0x1

    .line 1344
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    return-void
.end method

.method public setAIClearFace(Ljava/lang/String;)V
    .locals 1

    .line 1187
    const-string/jumbo v0, "sony-ai-clear-face"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setAeMode(Ljava/lang/String;)V
    .locals 1

    .line 722
    const-string/jumbo v0, "sony-ae-mode"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setAwbColorCompensationAb(I)V
    .locals 1

    .line 789
    const-string/jumbo v0, "sony-awb-compensation-ab"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setBokehMode(Ljava/lang/String;)V
    .locals 1

    .line 1279
    const-string/jumbo v0, "sony-bokeh-mode"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setBokehStrength(F)V
    .locals 1

    .line 1287
    const-string/jumbo v0, "sony-bokeh-strength"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setCameraMode(Ljava/lang/String;)V
    .locals 2

    .line 797
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCameraMode() : value = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 799
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 800
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    .line 801
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    const-string/jumbo v0, "sony-camera-mode"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public setDisableBGProcess(Ljava/lang/String;)V
    .locals 1

    .line 1323
    const-string/jumbo v0, "sony-disable-bg-process"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setDistortionCorrection(Ljava/lang/String;)V
    .locals 1

    .line 1295
    const-string v0, "distortion-correction"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 1

    .line 681
    const-string v0, "exposure-compensation-step"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setExposureTimeLimit(J)V
    .locals 1

    .line 617
    const-string/jumbo v0, "sony-shutter-speed-limit"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setFlashBeforeCountdown(Ljava/lang/String;)V
    .locals 1

    .line 1315
    const-string v0, "is-flash-before-countdown"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 1

    .line 754
    const-string v0, "flash-mode"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setFocusArea(Ljava/lang/String;)V
    .locals 1

    .line 673
    const-string/jumbo v0, "sony-focus-area"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 1

    .line 633
    const-string v0, "focus-mode"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setFocusRange(F)V
    .locals 1

    .line 625
    const-string/jumbo v0, "sony-manual-focus"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setFocusRectangles(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 642
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 643
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mFocusRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 650
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mFocusRects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 651
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mFocusRects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 659
    :goto_1
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mFocusRects:Ljava/util/List;

    const/4 p1, 0x1

    .line 660
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public setFusionMode(Ljava/lang/String;)V
    .locals 1

    .line 1271
    const-string/jumbo v0, "sony-fusion-mode"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setGpsData(Landroid/location/Location;)V
    .locals 2

    .line 1235
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setGpsData() : location = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1236
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mGpsData:Landroid/location/Location;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    .line 1237
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    .line 1238
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mGpsData:Landroid/location/Location;

    :cond_1
    return-void
.end method

.method public setIso(I)V
    .locals 1

    .line 746
    const-string/jumbo v0, "sony-iso"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setMeteringArea(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 697
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 700
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setMeteringArea() : value = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 701
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 700
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 703
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 704
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    .line 705
    new-instance v2, Landroid/graphics/Rect;

    add-int/lit16 v3, v0, 0x1f8

    add-int/lit16 v4, p1, 0x1f8

    invoke-direct {v2, v0, p1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 707
    iget p1, v2, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mMeteringArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ne p1, v0, :cond_2

    iget p1, v2, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mMeteringArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ne p1, v0, :cond_2

    iget p1, v2, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mMeteringArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne p1, v0, :cond_2

    iget p1, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mMeteringArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eq p1, v0, :cond_3

    .line 711
    :cond_2
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    .line 712
    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mMeteringArea:Landroid/graphics/Rect;

    :cond_3
    :goto_0
    return-void
.end method

.method public setMeteringMode(Ljava/lang/String;)V
    .locals 1

    .line 689
    const-string/jumbo v0, "sony-metering-mode"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setNightMode(Ljava/lang/String;)V
    .locals 1

    .line 1307
    const-string/jumbo v0, "sony-night-mode"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 588
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 589
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPictureSize(Landroid/graphics/Rect;)V
    .locals 1

    .line 1125
    const-string v0, "picture-size"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1126
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedCreatePreviewSession:Z

    :cond_0
    return-void
.end method

.method public setPowerMode(Ljava/lang/String;)V
    .locals 1

    .line 609
    const-string/jumbo v0, "sony-power-save-mode"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setPredictiveCapture(Ljava/lang/String;)V
    .locals 1

    .line 1263
    const-string v0, "climax-recognition"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setPredictiveCaptureNum(I)V
    .locals 1

    .line 1135
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mMaxCaptureNum:I

    if-eq v0, p1, :cond_0

    .line 1136
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mMaxCaptureNum:I

    const/4 p1, 0x1

    .line 1137
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedCreatePreviewSession:Z

    .line 1138
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    :cond_0
    return-void
.end method

.method public setPreviewFpsRange(II)V
    .locals 2

    .line 1099
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setPreviewFpsRange() : min = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mPreviewFpsRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mPreviewFpsRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 1106
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    .line 1107
    new-instance v0, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mPreviewFpsRange:Landroid/util/Range;

    return-void
.end method

.method public setPreviewSize(Landroid/graphics/Rect;)V
    .locals 1

    .line 1115
    const-string v0, "preview-size"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1116
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedCreatePreviewSession:Z

    :cond_0
    return-void
.end method

.method public setQrCodeDetection(Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;)V
    .locals 1

    .line 1207
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mQrCodeDetection:Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    if-eq v0, p1, :cond_0

    .line 1208
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mQrCodeDetection:Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    const/4 p1, 0x1

    .line 1209
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedCreatePreviewSession:Z

    .line 1210
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    :cond_0
    return-void
.end method

.method public setRotation(I)V
    .locals 2

    .line 1331
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setRotation() : orientation = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1333
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mRotation:I

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    .line 1334
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    .line 1335
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mRotation:I

    :cond_1
    return-void
.end method

.method public setShutterSpeed(J)V
    .locals 1

    .line 738
    const-string/jumbo v0, "sony-shutter-speed"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setShutterTrigger(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;)V
    .locals 1

    .line 1195
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mShutterTrigger:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    if-eq v0, p1, :cond_0

    .line 1196
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mShutterTrigger:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    const/4 p1, 0x1

    .line 1197
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedCreatePreviewSession:Z

    .line 1198
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    :cond_0
    return-void
.end method

.method public setSlowMotion(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)V
    .locals 1

    .line 1251
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mSlowMotion:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-eq v0, p1, :cond_0

    .line 1252
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mSlowMotion:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    const/4 p1, 0x1

    .line 1253
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedCreatePreviewSession:Z

    .line 1254
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    :cond_0
    return-void
.end method

.method public setSoftSkin(I)V
    .locals 1

    .line 874
    const-string/jumbo v0, "sony-soft-skin-level"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setStillHdr(Ljava/lang/String;)V
    .locals 1

    .line 766
    const-string/jumbo v0, "sony-is"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setSuperResolutionZoom(Ljava/lang/String;)V
    .locals 1

    .line 1219
    const-string/jumbo v0, "sony-super-resolution-zoom"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setVideoBacklightCorrection(Ljava/lang/String;)V
    .locals 1

    .line 1179
    const-string/jumbo v0, "sony-backlight-correction-values"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setVideoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V
    .locals 1

    .line 1163
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-eq v0, p1, :cond_0

    .line 1164
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    const/4 p1, 0x1

    .line 1165
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedCreatePreviewSession:Z

    .line 1166
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    :cond_0
    return-void
.end method

.method public setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V
    .locals 1

    .line 1147
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-eq v0, p1, :cond_0

    .line 1148
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 p1, 0x1

    .line 1149
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedCreatePreviewSession:Z

    .line 1150
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    :cond_0
    return-void
.end method

.method public setVideoStabilizer(Ljava/lang/String;)V
    .locals 1

    .line 1159
    const-string/jumbo v0, "sony-vs"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setVideoSuperResolutionZoom(Ljava/lang/String;)V
    .locals 1

    .line 1227
    const-string/jumbo v0, "sony-video-super-resolution-zoom"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setWhiteBalance(Ljava/lang/String;)V
    .locals 1

    .line 730
    const-string/jumbo v0, "whitebalance"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setZoom(F)V
    .locals 2

    .line 774
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setZoom() : zoomRatio = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 776
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mZoomRatio:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 777
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    .line 778
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mZoomRatio:F

    :cond_1
    return-void
.end method
