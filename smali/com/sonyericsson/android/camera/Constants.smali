.class public Lcom/sonyericsson/android/camera/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final CAMERA_ACTION_ADVANCED_SETTING:Ljava/lang/String; = "com.sonyericsson.android.camera.intent.action.SETTING"

.field public static final CAMERA_MODE_KEY:Ljava/lang/String; = "com.sonyericsson.android.camera.intent.extra.Mode"

.field public static final DEBUG:Z = false

.field public static final DEBUG_BITMAP_MANAGER_DUMP:Z = false

.field public static final DEBUG_EMU:Z = false

.field public static final DEBUG_EVENT_INTRUDER:Z = false

.field public static final DEBUG_LOG_ALL_E:Z = false

.field public static final DEBUG_LOG_ALL_I:Z = false

.field public static final DEBUG_LOG_WITH_TIME:Z = false

.field public static final DEBUG_NO_BACK_KEY:Z = false

.field public static final DEBUG_NO_MENU_KEY:Z = false

.field public static final DEBUG_NO_SHUTTER_KEY:Z = false

.field public static final DEBUG_ONE_TOUCH_BURST:Z = false

.field public static final DEBUG_PLATFORM_FUJI:Z = false

.field public static final DEBUG_SCENE_EVALUATION_ENABLE:Z = false

.field public static final DEBUG_STRICT_MODE:Z = false

.field public static final DEBUG_THUMBNAIL_WITHINFO:Z = false

.field public static final DEBUG_TOUCH_EDGE:Z = false

.field public static final DEBUG_TRACE_VIEW:Z = false

.field public static final DEFAULT_ZOOM_RATIO:F = 0.0f

.field public static final DEFAULT_ZOOM_STEP:I = 0xa8

.field public static final DELAY_MILLIS_ON_SELECTED:I = 0xdc

.field public static final DELAY_THUMBNAIL_HIDE:I = 0x3e8

.field public static final DEVICE_COORDINATE_MAX:I = 0x3e8

.field public static final DEVICE_COORDINATE_MIN:I = -0x3e8

.field public static final ENTER:Ljava/lang/String; = "\n"

.field public static final EXTRA_SCREEN_OFF:Ljava/lang/String; = "com.sonyericsson.android.camera.intent.extra.SCREEN_OFF"

.field public static final EXTRA_SIZE_LIMIT_SEMC:Ljava/lang/String; = "com.sonyericsson.camera.sizeLimit"

.field public static final FRONT_CAMERA_LOCATION_HELP_SHOW_MAX:I = 0x1

.field public static final INTERVAL_DOUBLE_TAP:I = 0x3e8

.field public static final INTERVAL_OPEN_CAMERA:I = 0x1f4

.field public static final LOG_LEVEL:I = 0x2

.field public static final MAX_ZOOM_STEP:I = 0x3c6

.field public static final MIN_ZOOM_STEP:I = 0x0

.field public static final NEED_VIDEO_HARD_SWITCH:Z = false

.field public static final NEED_ZSL_CAPTURE:Z = false

.field public static final OPEN_CAMERA_MAX:I = 0x5

.field public static final OPT_QUICK_FROM_SHORTCUT:Z = false

.field public static final OPT_TALLY_ALWAYS_OFF:Z = true

.field public static final PACKAGENAME_MMS:Ljava/lang/String; = "com.sonyericsson.conversations"

.field public static final PLAYBACK_VIDEO_IMMIDATELY:Z = true

.field public static final SELF_TIMER_BLINK_DURATION:I = 0x64

.field private static final SHARE_MPO_EXCLUDES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHARE_PHOTO_VIDEO_EXCLUDES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLEEP_TIMES_OPEN_CAMERA:I = 0x5

.field public static final SMILE_SCORE_HIGH:I = 0x46

.field public static final SMILE_SCORE_INVALID:I = 0x3e7

.field public static final SMILE_SCORE_LOW:I = 0x28

.field public static final SMILE_SCORE_MID:I = 0x37

.field public static final SUPER_WIDE_ZOOM_TARGET_RATIO_VALUE:F = 1.0f

.field public static final SWITCH_TELE_ZOOM_RATIO:F = 0.10694784f

.field public static final TAG:Ljava/lang/String; = "Constants"

.field public static final THREAD_PREPARE_MEDIARECORDER:Ljava/lang/String; = "Media Recorder Preparer"

.field public static final THREAD_READ_SHARED_PREFS:Ljava/lang/String; = "Read shared prefs thread"

.field public static final THREAD_RELEASE_MEDIARECORDER:Ljava/lang/String; = "Video Device Releaser"

.field public static final TIMEOUT_NO_OPERATION:I = 0x2bf20

.field public static final TIMEOUT_OPEN_CAMERA_DEVICE_MILLIS:I = 0xfa0

.field public static final TIMEOUT_PREPARE_MEDIARECORDER:I = 0xbb8

.field public static final TIMEOUT_READ_SHARED_PREFS:I = 0xbb8

.field public static final TIMEOUT_RELEASE_VIDEO_DEVICE:I = 0xbb8

.field public static final TIMEOUT_SAVING_TASK_STACK_CLEARED:I = 0xfa0

.field public static final TIMEOUT_ZOOM_MESSAGE:I = 0x9c4

.field public static final UNIT_MIN_IN_HOUR:I = 0x3c

.field public static final UNIT_MSEC_IN_SEC:I = 0x3e8

.field public static final UNIT_SEC_IN_MIN:I = 0x3c

.field public static final WAITING_TIME_STOP_REC:I = 0x640

.field public static final WIDE_ZOOM_TARGET_RATIO_VALUE:F = 1.538f

.field public static final ZOOM_DIAL_HW_MIN_VALUE:F = 0.615f

.field public static final ZOOM_HELP_SHOW_MAX:I = 0x3

.field public static final ZOOM_STEP_1X_INDEX:I = 0xa8

.field public static final ZOOM_STEP_2X_INDEX:I = 0x198


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 183
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 182
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/Constants;->SHARE_PHOTO_VIDEO_EXCLUDES:Ljava/util/List;

    .line 185
    const-string v0, "com.google.android.apps.uploader"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/Constants;->SHARE_MPO_EXCLUDES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getShareMpoExcludes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/sonyericsson/android/camera/Constants;->SHARE_MPO_EXCLUDES:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static final getSharePhotoVideoExcludes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/sonyericsson/android/camera/Constants;->SHARE_PHOTO_VIDEO_EXCLUDES:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static final preload()V
    .locals 0

    return-void
.end method
