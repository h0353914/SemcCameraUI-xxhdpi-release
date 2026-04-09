.class public Lcom/sonyericsson/android/camera/device/CameraParameters;
.super Ljava/lang/Object;
.source "CameraParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResultCallback;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;,
        Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;
    }
.end annotation


# static fields
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

.field public static final CLIMAX_RECOGNITION_AUTO:Ljava/lang/String; = "auto"

.field public static final CLIMAX_RECOGNITION_OFF:Ljava/lang/String; = "off"

.field public static final CLIMAX_RECOGNITION_ON:Ljava/lang/String; = "on"

.field private static final DEFAULT_AE_MODE:Ljava/lang/String; = "auto"

.field private static final DEFAULT_AE_REGION:Ljava/lang/String; = "center-weighted"

.field private static final DEFAULT_AF_AREA:Ljava/lang/String; = "center"

.field private static final DEFAULT_AF_MODE:Ljava/lang/String; = "auto"

.field private static final DEFAULT_AWB_COLOR_COMPENSATION_AB:I = 0x0

.field private static final DEFAULT_AWB_COLOR_COMPENSATION_GM:I = 0x0

.field private static final DEFAULT_CLIMAX_RECOGNITION:Ljava/lang/String; = "auto"

.field private static final DEFAULT_DISTORTION_CORRECTION:Ljava/lang/String; = "off"

.field private static final DEFAULT_EXPOSURE_COMPENSATION:I = 0x0

.field private static final DEFAULT_EXPOSURE_TIME_LIMIT:J = 0x0L

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

.field private static final DEFAULT_GPS_DATA:Landroid/location/Location; = null

.field private static final DEFAULT_ISO:I = 0x32

.field private static final DEFAULT_JPEG_QUALITY:I = 0x13

.field private static final DEFAULT_MAX_PREVIEW_FPS:I = 0x1e

.field private static final DEFAULT_MIN_PREVIEW_FPS:I = 0x0

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

.field public static final DEFAULT_ZOOM_RATIO:F = 0.0f

.field public static final DISPLAY_FLASH_MODE_AUTO:Ljava/lang/String; = "display-auto"

.field public static final DISPLAY_FLASH_MODE_ON:Ljava/lang/String; = "display-on"

.field public static final DISTORTION_CORRECTION_OFF:Ljava/lang/String; = "off"

.field public static final DISTORTION_CORRECTION_ON:Ljava/lang/String; = "on"

.field public static final FLASH_MODE_AUTO:Ljava/lang/String; = "auto"

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

.field public static final FOCUS_REGION_WEIGHT:I = 0x1

.field public static final FUSION_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final FUSION_MODE_OFF:Ljava/lang/String; = "off"

.field public static final FUSION_MODE_ON:Ljava/lang/String; = "on"

.field public static final KEY_ACTIVE_ARRAY_SIZE:Ljava/lang/String; = "active-array-size"

.field public static final KEY_DISTORTION_CORRECTION:Ljava/lang/String; = "distortion-correction"

.field public static final KEY_EXPOSURE_COMPENSATION_STEP:Ljava/lang/String; = "exposure-compensation-step"

.field public static final KEY_EX_AE_MODE:Ljava/lang/String; = "sony-ae-mode"

.field public static final KEY_EX_AWB_COMPENSATION_AB:Ljava/lang/String; = "sony-awb-compensation-ab"

.field public static final KEY_EX_CLIMAX_RECOGNITION:Ljava/lang/String; = "climax-recognition"

.field public static final KEY_EX_FOCUS_AREA:Ljava/lang/String; = "sony-focus-area"

.field public static final KEY_EX_FUSION_MODE:Ljava/lang/String; = "sony-fusion-mode"

.field public static final KEY_EX_FUSION_SUPPORTED_PICTURE_SIZES:Ljava/lang/String; = "sony-fusion-supported-picture-size-values"

.field public static final KEY_EX_FUSION_SUPPORTED_VIDEO_CONFIGURATION:Ljava/lang/String; = "sony-fusion-supported-video-config"

.field public static final KEY_EX_IMAGE_STABILIZER:Ljava/lang/String; = "sony-is"

.field public static final KEY_EX_INTELLIGENT_ACTIVE_CONFIGURATION:Ljava/lang/String; = "sony-vs-intelligent-active-config"

.field public static final KEY_EX_ISO:Ljava/lang/String; = "sony-iso"

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

.field public static final KEY_EX_OBJECT_TRACKING_SUPPORTED:Ljava/lang/String; = "sony-object-tracking-supported"

.field public static final KEY_EX_POWER_SAVE_MODE:Ljava/lang/String; = "sony-power-save-mode"

.field public static final KEY_EX_SCENE_DETECTION_SUPPORTED:Ljava/lang/String; = "sony-scene-detect-supported"

.field public static final KEY_EX_SHUTTER_SPEED:Ljava/lang/String; = "sony-shutter-speed"

.field public static final KEY_EX_SHUTTER_SPEED_LIMIT:Ljava/lang/String; = "sony-shutter-speed-limit"

.field public static final KEY_EX_SMILE_DETECTION:Ljava/lang/String; = "sony-smile-detect"

.field public static final KEY_EX_SOFT_SKIN_LEVEL:Ljava/lang/String; = "sony-soft-skin-level"

.field public static final KEY_EX_STEADY_SHOT_CONFIGURATION:Ljava/lang/String; = "sony-vs-steady-shot-config"

.field public static final KEY_EX_STILL_HDR_SUPPORTED_SIZES:Ljava/lang/String; = "sony-still-hdr-size-values"

.field public static final KEY_EX_SUPER_SLOW:Ljava/lang/String; = "sony-super-slow"

.field public static final KEY_EX_SUPER_SLOW_CONFIGURATION:Ljava/lang/String; = "sony-super-slow-config"

.field public static final KEY_EX_SUPER_SLOW_FRAME_NUM:Ljava/lang/String; = "sony-super-slow-framenum"

.field public static final KEY_EX_SUPER_SLOW_VALUES:Ljava/lang/String; = "sony-super-slow-values"

.field public static final KEY_EX_SUPPORTED_AE_MODES:Ljava/lang/String; = "sony-ae-mode-values"

.field public static final KEY_EX_SUPPORTED_FOCUS_AREAS:Ljava/lang/String; = "sony-focus-area-values"

.field public static final KEY_EX_SUPPORTED_FUSION_ISO_RANGE:Ljava/lang/String; = "sony-fusion-iso-range"

.field public static final KEY_EX_SUPPORTED_FUSION_MODES:Ljava/lang/String; = "sony-fusion"

.field public static final KEY_EX_SUPPORTED_IMAGE_STABILIZERS:Ljava/lang/String; = "sony-is-values"

.field public static final KEY_EX_SUPPORTED_ISO_RANGE:Ljava/lang/String; = "sony-iso-range"

.field public static final KEY_EX_SUPPORTED_METERING_MODES:Ljava/lang/String; = "sony-metering-mode-values"

.field public static final KEY_EX_SUPPORTED_POWER_SAVE_MODE:Ljava/lang/String; = "sony-power-save-mode-values"

.field public static final KEY_EX_SUPPORTED_SHUTTER_SPEED:Ljava/lang/String; = "sony-shutter-speed-values"

.field public static final KEY_EX_SUPPORTED_SMILE_DETECTIONS:Ljava/lang/String; = "sony-smile-detect-values"

.field public static final KEY_EX_SUPPORTED_VIDEO_STABILIZERS:Ljava/lang/String; = "sony-vs-values"

.field public static final KEY_EX_TRACKING_FOCUS_DURING_LOCK_SUPPORTED:Ljava/lang/String; = "sony-tracking-focus-during-lock-supported"

.field public static final KEY_EX_VIDEO_STABILIZER:Ljava/lang/String; = "sony-vs"

.field public static final KEY_FLASH_MODE:Ljava/lang/String; = "flash-mode"

.field public static final KEY_FOCUS_AREAS:Ljava/lang/String; = "focus-areas"

.field public static final KEY_FOCUS_MODE:Ljava/lang/String; = "focus-mode"

.field public static final KEY_HDR_VIDEO_SUPPORTED:Ljava/lang/String; = "hdr-video-supported"

.field public static final KEY_LENS_FACING:Ljava/lang/String; = "lens-facing"

.field public static final KEY_MANUAL_FOCUS_SUPPORTED:Ljava/lang/String; = "manual-focus-supported"

.field public static final KEY_MAX_EXPOSURE_COMPENSATION:Ljava/lang/String; = "max-exposure-compensation"

.field public static final KEY_MAX_NUM_DETECTED_FACES:Ljava/lang/String; = "max-num-detected-faces"

.field public static final KEY_MAX_NUM_FOCUS_AREAS:Ljava/lang/String; = "max-num-focus-areas"

.field public static final KEY_MAX_ZOOM_RATIO:Ljava/lang/String; = "max-zoom-ratio"

.field public static final KEY_MIN_EXPOSURE_COMPENSATION:Ljava/lang/String; = "min-exposure-compensation"

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

.field public static final MANUAL_FOCUS_1M:Ljava/lang/Float;

.field public static final MANUAL_FOCUS_INFINITY:Ljava/lang/Float;

.field public static final MAX_ZOOM_STEP:I = 0x78

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

.field public static final SCENE_MODE_NIGHT:Ljava/lang/String; = "night"

.field public static final SCENE_MODE_NIGHT_PORTRAIT:Ljava/lang/String; = "night-portrait"

.field public static final SCENE_MODE_PARTY:Ljava/lang/String; = "party"

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

.field private static final TAG:Ljava/lang/String; = "CameraParameters"

.field public static final VIDEO_HDR_OFF:Ljava/lang/String; = "off"

.field public static final VIDEO_HDR_ON:Ljava/lang/String; = "on-video-hdr"

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

    .line 239
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters;->MANUAL_FOCUS_1M:Ljava/lang/Float;

    const/4 v0, 0x0

    .line 240
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters;->MANUAL_FOCUS_INFINITY:Ljava/lang/Float;

    .line 276
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters;->MANUAL_FOCUS_1M:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/sonyericsson/android/camera/device/CameraParameters;->DEFAULT_FOCUS_RANGE:F

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 280
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters;->DEFAULT_FOCUS_RECTS:Ljava/util/List;

    .line 285
    new-instance v0, Landroid/util/Range;

    .line 286
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters;->DEFAULT_PREVIEW_FPS_RANGE:Landroid/util/Range;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V
    .locals 5

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 298
    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mZoomRatio:F

    const/4 v0, 0x1

    .line 299
    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mMaxCaptureNum:I

    .line 301
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters;->DEFAULT_FOCUS_RECTS:Ljava/util/List;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mFocusRects:Ljava/util/List;

    .line 302
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters;->DEFAULT_PREVIEW_FPS_RANGE:Landroid/util/Range;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mPreviewFpsRange:Landroid/util/Range;

    .line 303
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters;->DEFAULT_GPS_DATA:Landroid/location/Location;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mGpsData:Landroid/location/Location;

    const/4 v0, 0x0

    .line 304
    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mRotation:I

    .line 309
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mMeteringArea:Landroid/graphics/Rect;

    .line 317
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    .line 323
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedCreatePreviewSession:Z

    .line 325
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 327
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    .line 400
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 402
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    const-string v1, "focus-mode"

    const-string v2, "auto"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    const-string v1, "sony-focus-area"

    const-string v2, "center"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    const-string v1, "sony-manual-focus"

    sget v2, Lcom/sonyericsson/android/camera/device/CameraParameters;->DEFAULT_FOCUS_RANGE:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    const-string v1, "sony-iso"

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    const-string v1, "sony-shutter-speed"

    const-wide/32 v2, 0x3d0900

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    const-string v1, "sony-ae-mode"

    const-string v2, "auto"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    const-string v1, "flash-mode"

    const-string v2, "off"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    const-string v1, "whitebalance"

    const-string v2, "off"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    const-string v1, "sony-is"

    const-string v2, "off"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    const-string v1, "sony-metering-mode"

    const-string v2, "center-weighted"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    const-string v1, "sony-power-save-mode"

    const-string v2, "off"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    const-string v1, "sony-awb-compensation-ab"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    const-string v1, "climax-recognition"

    const-string v2, "auto"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    const-string v1, "sony-shutter-speed-limit"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    const-string v1, "sony-soft-skin-level"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    const-string v1, "exposure-compensation-step"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    const-string v1, "sony-fusion-mode"

    const-string v2, "off"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    const-string v1, "distortion-correction"

    const-string v2, "off"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    const-string v1, "preview-size"

    new-instance v2, Landroid/graphics/Rect;

    const/16 v3, 0x2d0

    const/16 v4, 0x500

    invoke-direct {v2, v0, v0, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    const-string p1, "picture-size"

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getKeyValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1070
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1047
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1048
    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setKeyValue : key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_2

    goto :goto_0

    .line 1054
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-eqz v3, :cond_4

    .line 1059
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_3

    .line 1060
    new-array v4, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setKeyValue : value is changed from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1062
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    :cond_4
    return v3
.end method


# virtual methods
.method public applied()V
    .locals 1

    const/4 v0, 0x0

    .line 1031
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    return-void
.end method

.method public createPreviewSessionRequestDone()V
    .locals 1

    const/4 v0, 0x0

    .line 1043
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedCreatePreviewSession:Z

    return-void
.end method

.method public forceRequestCreatePreviewSession()V
    .locals 1

    const/4 v0, 0x1

    .line 1039
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedCreatePreviewSession:Z

    return-void
.end method

.method public getAeMode()Ljava/lang/String;
    .locals 1

    const-string v0, "sony-ae-mode"

    .line 545
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getAwbColorCompensationAb()I
    .locals 1

    const-string v0, "sony-awb-compensation-ab"

    .line 610
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .locals 0

    .line 425
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object p0
.end method

.method public getDistortionCorrection()Ljava/lang/String;
    .locals 1

    const-string v0, "distortion-correction"

    .line 1006
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getExposureCompensation()I
    .locals 1

    const-string v0, "exposure-compensation-step"

    .line 505
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getExposureTimeLimit()J
    .locals 2

    const-string v0, "sony-shutter-speed-limit"

    .line 441
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFlashMode()Ljava/lang/String;
    .locals 1

    const-string v0, "flash-mode"

    .line 581
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getFocusArea()Ljava/lang/String;
    .locals 1

    const-string v0, "sony-focus-area"

    .line 497
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 1

    const-string v0, "focus-mode"

    .line 457
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getFocusRange()F
    .locals 1

    const-string v0, "sony-manual-focus"

    .line 449
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getFocusRectangles()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 485
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

    .line 486
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFocusRectangles() : rectangle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 489
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

    .line 874
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mPreviewFpsRange:Landroid/util/Range;

    return-object p0
.end method

.method public getFusionMode()Ljava/lang/String;
    .locals 1

    const-string v0, "sony-fusion-mode"

    .line 994
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getGpsData()Landroid/location/Location;
    .locals 0

    .line 962
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mGpsData:Landroid/location/Location;

    return-object p0
.end method

.method public getIso()I
    .locals 1

    const-string v0, "sony-iso"

    .line 569
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMeteringArea()Landroid/graphics/Rect;
    .locals 4

    .line 536
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMeteringArea() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mMeteringArea:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 537
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mMeteringArea:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getMeteringMode()Ljava/lang/String;
    .locals 1

    const-string v0, "sony-metering-mode"

    .line 513
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPictureSize()Landroid/graphics/Rect;
    .locals 1

    const-string v0, "picture-size"

    .line 894
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPowerMode()Ljava/lang/String;
    .locals 1

    const-string v0, "sony-power-save-mode"

    .line 433
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPredictiveCapture()Ljava/lang/String;
    .locals 1

    const-string v0, "climax-recognition"

    .line 986
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPredictiveCaptureNum()I
    .locals 0

    .line 906
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mMaxCaptureNum:I

    return p0
.end method

.method public getPreviewSize()Landroid/graphics/Rect;
    .locals 1

    const-string v0, "preview-size"

    .line 884
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public getRotation()I
    .locals 0

    .line 1019
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mRotation:I

    return p0
.end method

.method public getShutterSpeed()J
    .locals 2

    const-string v0, "sony-shutter-speed"

    .line 561
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShutterTrigger()Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;
    .locals 0

    .line 950
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mShutterTrigger:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    return-object p0
.end method

.method public getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;
    .locals 0

    .line 978
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mSlowMotion:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    return-object p0
.end method

.method public getSoftSkin()I
    .locals 1

    const-string v0, "sony-soft-skin-level"

    .line 680
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getStillHdr()Ljava/lang/String;
    .locals 1

    const-string v0, "sony-is"

    .line 589
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;
    .locals 0

    .line 934
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    return-object p0
.end method

.method public getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 0

    .line 918
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0
.end method

.method public getVideoStabilizer()Ljava/lang/String;
    .locals 1

    const-string v0, "sony-vs"

    .line 938
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getWhiteBalance()Ljava/lang/String;
    .locals 1

    const-string v0, "whitebalance"

    .line 553
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getKeyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getZoom()F
    .locals 0

    .line 602
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mZoomRatio:F

    return p0
.end method

.method public needApply()Z
    .locals 0

    .line 1027
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    return p0
.end method

.method public needCreatePreviewSession()Z
    .locals 0

    .line 1035
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedCreatePreviewSession:Z

    return p0
.end method

.method public removeGpsData()V
    .locals 1

    const/4 v0, 0x0

    .line 966
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setGpsData(Landroid/location/Location;)V

    return-void
.end method

.method public requestApply()V
    .locals 1

    const/4 v0, 0x1

    .line 1023
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    return-void
.end method

.method public setAeMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sony-ae-mode"

    .line 541
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setAwbColorCompensationAb(I)V
    .locals 1

    const-string v0, "sony-awb-compensation-ab"

    .line 606
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setDistortionCorrection(Ljava/lang/String;)V
    .locals 1

    const-string v0, "distortion-correction"

    .line 998
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 1

    const-string v0, "exposure-compensation-step"

    .line 501
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setExposureTimeLimit(J)V
    .locals 1

    const-string v0, "sony-shutter-speed-limit"

    .line 437
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "flash-mode"

    .line 573
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setFocusArea(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sony-focus-area"

    .line 493
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "focus-mode"

    .line 453
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setFocusRange(F)V
    .locals 1

    const-string v0, "sony-manual-focus"

    .line 445
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setFocusRectangles(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 462
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 463
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mFocusRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    :goto_0
    move v2, v3

    goto :goto_2

    :cond_1
    move v0, v2

    .line 470
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mFocusRects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 471
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mFocusRects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 479
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mFocusRects:Ljava/util/List;

    .line 480
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    :cond_4
    return-void
.end method

.method public setFusionMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sony-fusion-mode"

    .line 990
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setGpsData(Landroid/location/Location;)V
    .locals 5

    .line 954
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setGpsData() : location = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mGpsData:Landroid/location/Location;

    if-eq p1, v0, :cond_1

    .line 956
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    .line 957
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mGpsData:Landroid/location/Location;

    :cond_1
    return-void
.end method

.method public setIso(I)V
    .locals 1

    const-string v0, "sony-iso"

    .line 565
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

    if-eqz p1, :cond_4

    .line 517
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 520
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMeteringArea() : value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 520
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 523
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 524
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    .line 525
    new-instance v2, Landroid/graphics/Rect;

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, p1, 0x1

    invoke-direct {v2, v0, p1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 526
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

    .line 530
    :cond_2
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    .line 531
    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mMeteringArea:Landroid/graphics/Rect;

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method public setMeteringMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sony-metering-mode"

    .line 509
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setPictureSize(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "picture-size"

    .line 888
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 889
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedCreatePreviewSession:Z

    :cond_0
    return-void
.end method

.method public setPowerMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sony-power-save-mode"

    .line 429
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setPredictiveCapture(Ljava/lang/String;)V
    .locals 1

    const-string v0, "climax-recognition"

    .line 982
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setPredictiveCaptureNum(I)V
    .locals 1

    .line 898
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mMaxCaptureNum:I

    if-eq v0, p1, :cond_0

    .line 899
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mMaxCaptureNum:I

    const/4 p1, 0x1

    .line 900
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedCreatePreviewSession:Z

    .line 901
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    :cond_0
    return-void
.end method

.method public setPreviewFpsRange(II)V
    .locals 5

    .line 862
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPreviewFpsRange() : min = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", max = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 864
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

    .line 869
    :cond_1
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    .line 870
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

    const-string v0, "preview-size"

    .line 878
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 879
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedCreatePreviewSession:Z

    :cond_0
    return-void
.end method

.method public setRotation(I)V
    .locals 5

    .line 1010
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRotation() : orientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1012
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mRotation:I

    if-eq p1, v0, :cond_1

    .line 1013
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    .line 1014
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mRotation:I

    :cond_1
    return-void
.end method

.method public setShutterSpeed(J)V
    .locals 1

    const-string v0, "sony-shutter-speed"

    .line 557
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setShutterTrigger(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;)V
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mShutterTrigger:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    if-eq v0, p1, :cond_0

    .line 943
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mShutterTrigger:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    const/4 p1, 0x1

    .line 944
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedCreatePreviewSession:Z

    .line 945
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    :cond_0
    return-void
.end method

.method public setSlowMotion(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)V
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mSlowMotion:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-eq v0, p1, :cond_0

    .line 971
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mSlowMotion:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    const/4 p1, 0x1

    .line 972
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedCreatePreviewSession:Z

    .line 973
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    :cond_0
    return-void
.end method

.method public setSoftSkin(I)V
    .locals 1

    const-string v0, "sony-soft-skin-level"

    .line 676
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setStillHdr(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sony-is"

    .line 585
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setVideoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-eq v0, p1, :cond_0

    .line 927
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    const/4 p1, 0x1

    .line 928
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedCreatePreviewSession:Z

    .line 929
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    :cond_0
    return-void
.end method

.method public setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-eq v0, p1, :cond_0

    .line 911
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 p1, 0x1

    .line 912
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedCreatePreviewSession:Z

    .line 913
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    :cond_0
    return-void
.end method

.method public setVideoStabilizer(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sony-vs"

    .line 922
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setWhiteBalance(Ljava/lang/String;)V
    .locals 1

    const-string v0, "whitebalance"

    .line 549
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setKeyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setZoom(F)V
    .locals 5

    .line 593
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setZoom() : zoomRatio = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 595
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mZoomRatio:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 596
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mNeedApply:Z

    .line 597
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->mZoomRatio:F

    :cond_1
    return-void
.end method
