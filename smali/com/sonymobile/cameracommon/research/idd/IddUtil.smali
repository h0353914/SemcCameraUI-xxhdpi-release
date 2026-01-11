.class public Lcom/sonymobile/cameracommon/research/idd/IddUtil;
.super Ljava/lang/Object;
.source "IddUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;,
        Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final IDD_CLASS_NAME:Ljava/lang/String; = "com.sonyericsson.idd.api.Idd"

.field private static final IDD_DUMP_ENABLE:Z = false

.field private static final IDD_METHOD_NAME:Ljava/lang/String; = "addAppDataJSON"

.field private static final KEY_ACTION:Ljava/lang/String; = "action"

.field private static final KEY_CLICK_TIMES:Ljava/lang/String; = "click_times"

.field private static final KEY_CLOSE_BY:Ljava/lang/String; = "close_by"

.field private static final KEY_DURATION:Ljava/lang/String; = "duration"

.field private static final KEY_ENVIRONMENT:Ljava/lang/String; = "environment"

.field private static final KEY_LABEL:Ljava/lang/String; = "label"

.field private static final KEY_LAUNCHEDBY:Ljava/lang/String; = "launched_by"

.field private static final KEY_MODE:Ljava/lang/String; = "mode"

.field private static final KEY_PERFORMANCE_BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field private static final KEY_PERFORMANCE_TARGET:Ljava/lang/String; = "target"

.field private static final KEY_PERFORMANCE_THERMAL_STATUS:Ljava/lang/String; = "thermal_status"

.field private static final KEY_PERFORMANCE_TIME:Ljava/lang/String; = "time"

.field private static final KEY_QR_TYPE:Ljava/lang/String; = "qr_type"

.field private static final KEY_SETTING:Ljava/lang/String; = "setting"

.field private static final KEY_SUB_TYPE:Ljava/lang/String; = "subtype"

.field private static final KEY_TIMESTAMP_ORIGINAL_EVENT:Ljava/lang/String; = "timestamp_original_event"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_VALUE:Ljava/lang/String; = "value"

.field private static final KEY_VALUE_AFTER:Ljava/lang/String; = "after"

.field private static final KEY_VALUE_BEFORE:Ljava/lang/String; = "before"

.field private static final KEY_VALUE_PAGE:Ljava/lang/String; = "page"

.field private static final KEY_VALUE_RESULT:Ljava/lang/String; = "result"

.field private static final KEY_VALUE_TIME:Ljava/lang/String; = "time"

.field public static final KEY_VALUE_TO:Ljava/lang/String; = "to"

.field private static final KEY_VALUE_WAY:Ljava/lang/String; = "way"

.field private static final KEY_ZOOM_RATIO:Ljava/lang/String; = "zoom_ratio"

.field private static final KEY_ZOOM_TRIGGER:Ljava/lang/String; = "trigger"

.field public static final TAG:Ljava/lang/String; = "IddUtil"

.field private static final THERMAL_STATUS_HIGH:Ljava/lang/String; = "HIGH"

.field private static final THERMAL_STATUS_NORMAL:Ljava/lang/String; = "NORMAL"

.field private static final TYPE_AUTO_POWEROFF_EVENT:Ljava/lang/String; = "AUTO_POWEROFF"

.field private static final TYPE_CAMERA_NOT_AVAILABLE_EVENT:Ljava/lang/String; = "CAMERA_NOT_AVAILABLE"

.field public static final TYPE_CHANGE_SETTING_EVENT:Ljava/lang/String; = "CHANGE_SETTING_EVENT"

.field private static final TYPE_FAULT_DETECT_EVENT:Ljava/lang/String; = "FAULT_DETECT_EVENT"

.field private static final TYPE_LOWBATTERY_ERROR_EVENT:Ljava/lang/String; = "LOWBATTERY_ERROR"

.field private static final TYPE_MODE_CHANGE_EVENT:Ljava/lang/String; = "MODE_CHANGE_EVENT"

.field private static final TYPE_MODE_SELECTOR_EVENT:Ljava/lang/String; = "MODE_SELECTOR_EVENT"

.field private static final TYPE_PANORAMA_EVENT:Ljava/lang/String; = "PANORAMA"

.field private static final TYPE_PERFORMANCE_EVENT:Ljava/lang/String; = "PERFORMANCE"

.field public static final TYPE_PHOTO_EVENT:Ljava/lang/String; = "PHOTO_EVENT"

.field private static final TYPE_PREDICTIVE_LAUNCH_EVENT:Ljava/lang/String; = "PREDICTIVE_LAUNCH"

.field private static final TYPE_READ_QR_CODE_EVENT:Ljava/lang/String; = "READ_QR_CODE"

.field private static final TYPE_SELFTIMER_CANCEL_EVENT:Ljava/lang/String; = "SELFTIMER_CANCEL_EVENT"

.field private static final TYPE_SETUP_WIZARD_EVENT:Ljava/lang/String; = "SETUP_WIZARD_EVENT"

.field private static final TYPE_SHOW_FEATURE_CONTENT_EVENT:Ljava/lang/String; = "SHOW_FEATURE_CONTENT"

.field private static final TYPE_SHOW_FEATURE_LIST_EVENT:Ljava/lang/String; = "SHOW_FEATURE_LIST"

.field private static final TYPE_SLOW_MOTION_EVENT:Ljava/lang/String; = "SLOW_MOTION_EVENT"

.field private static final TYPE_THERMAL_ERROR_EVENT:Ljava/lang/String; = "THERMAL_ERROR"

.field private static final TYPE_THUMBNAIL_TRANSITION_EVENT:Ljava/lang/String; = "THUMBNAIL_TRANSITION_EVENT"

.field private static final TYPE_TRANSITION_QR_CODE_EVENT:Ljava/lang/String; = "TRANSITION_QR_CODE"

.field public static final TYPE_VIDEO_EVENT:Ljava/lang/String; = "VIDEO_EVENT"

.field private static final TYPE_ZOOM_LONGTAP_EVENT:Ljava/lang/String; = "ZOOM_LONGTAP_EVENT"

.field private static final TYPE_ZOOM_TAP_EVENT:Ljava/lang/String; = "ZOOM_TAP_EVENT"

.field private static mContext:Landroid/content/Context;

.field private static mIsIddSupportAlreadyChecked:Z

.field private static mIsIddSupported:Z

.field private static mIsSendingAllowed:Z

.field private static mLaunchedBy:Ljava/lang/String;

.field private static mPackageName:Ljava/lang/String;

.field private static mVersionCode:I

.field private static mVersionName:Ljava/lang/String;

.field private static mView:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfgetmLaunchedBy()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mLaunchedBy:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmView()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mView:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 109
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mContext:Landroid/content/Context;

    .line 110
    const-string v0, ""

    sput-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mPackageName:Ljava/lang/String;

    .line 111
    sput-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mVersionName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 112
    sput v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mVersionCode:I

    .line 114
    sput-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mView:Ljava/lang/String;

    .line 115
    sput-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mLaunchedBy:Ljava/lang/String;

    .line 117
    sput-boolean v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupported:Z

    .line 118
    sput-boolean v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupportAlreadyChecked:Z

    const/4 v0, 0x1

    .line 120
    sput-boolean v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsSendingAllowed:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkIddSupported()Z
    .locals 7

    .line 157
    sget-boolean v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupportAlreadyChecked:Z

    if-eqz v0, :cond_0

    .line 158
    sget-boolean v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupported:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 161
    sput-boolean v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupported:Z

    const/4 v1, 0x1

    .line 163
    :try_start_0
    const-string v2, "com.sonyericsson.idd.api.Idd"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "addAppDataJSON"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const-class v5, Lorg/json/JSONObject;

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 165
    sput-boolean v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupported:Z

    .line 166
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Idd.addAppDataJSON is supported"

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "Idd.addAppDataJSON is not supported"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 170
    :cond_1
    :goto_0
    sput-boolean v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupportAlreadyChecked:Z

    .line 171
    sget-boolean v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupported:Z

    return v0
.end method

.method private static getCurrentTimeZone()Ljava/lang/String;
    .locals 4

    .line 494
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 495
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    if-gez v0, :cond_0

    .line 498
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    div-int/lit8 v3, v0, 0x3c

    .line 499
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 498
    const-string v3, "-%02d:%02d"

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 501
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    div-int/lit8 v3, v0, 0x3c

    .line 502
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 501
    const-string v3, "+%02d:%02d"

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 252
    sget-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    return-object v0

    .line 280
    :pswitch_0
    const-string p0, "SHOW_FEATURE_CONTENT"

    return-object p0

    .line 278
    :pswitch_1
    const-string p0, "SHOW_FEATURE_LIST"

    return-object p0

    .line 276
    :pswitch_2
    const-string p0, "AUTO_POWEROFF"

    return-object p0

    .line 274
    :pswitch_3
    const-string p0, "PREDICTIVE_LAUNCH"

    return-object p0

    .line 272
    :pswitch_4
    const-string p0, "SLOW_MOTION_EVENT"

    return-object p0

    .line 270
    :pswitch_5
    const-string p0, "LOWBATTERY_ERROR"

    return-object p0

    .line 268
    :pswitch_6
    const-string p0, "SELFTIMER_CANCEL_EVENT"

    return-object p0

    .line 266
    :pswitch_7
    const-string p0, "PANORAMA"

    return-object p0

    .line 264
    :pswitch_8
    const-string p0, "CAMERA_NOT_AVAILABLE"

    return-object p0

    .line 262
    :pswitch_9
    const-string p0, "THERMAL_ERROR"

    return-object p0

    .line 260
    :pswitch_a
    const-string p0, "MODE_SELECTOR_EVENT"

    return-object p0

    .line 256
    :pswitch_b
    const-string p0, "VIDEO_EVENT"

    return-object p0

    .line 254
    :pswitch_c
    const-string p0, "PHOTO_EVENT"

    return-object p0

    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static onCreate()V
    .locals 1

    .line 131
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onCreate()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onDestroy()V
    .locals 1

    .line 195
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onDestroy()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onPause(Z)V
    .locals 0

    return-void
.end method

.method public static onResume()V
    .locals 0

    return-void
.end method

.method public static sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 234
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendEvent(): category = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", label = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 242
    :cond_1
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    const-string p0, ""

    if-nez p1, :cond_2

    move-object p1, p0

    :cond_2
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p1

    if-nez p2, :cond_3

    move-object p2, p0

    .line 244
    :cond_3
    const-string p0, "label"

    invoke-virtual {p1, p0, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string/jumbo p1, "value"

    .line 245
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 246
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 247
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendEventAddonModeChange(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 389
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 393
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendEventAddonModeChange(): category = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", label = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", method = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 397
    :cond_1
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    const-string p0, ""

    if-nez p1, :cond_2

    move-object p1, p0

    :cond_2
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p1

    if-nez p2, :cond_3

    move-object p2, p0

    .line 399
    :cond_3
    const-string v0, "label"

    invoke-virtual {p1, v0, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p1

    if-nez p3, :cond_4

    move-object p3, p0

    .line 400
    :cond_4
    const-string/jumbo p0, "way"

    invoke-virtual {p1, p0, p3}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 401
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 402
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendEventAllSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$Category;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 327
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendEventAllSettings(): category = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", env = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", settings = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 331
    :cond_0
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "environment"

    .line 332
    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/util/Map;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string/jumbo p1, "setting"

    .line 333
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/util/Map;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 334
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 335
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendEventChangedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 346
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendEventChangedSetting(): setting = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", before = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", after = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 350
    :cond_0
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v1, "CHANGE_SETTING_EVENT"

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    const-string v1, ""

    if-nez p0, :cond_1

    move-object p0, v1

    :cond_1
    const-string/jumbo v2, "setting"

    invoke-virtual {v0, v2, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    if-nez p1, :cond_2

    move-object p1, v1

    .line 352
    :cond_2
    const-string v0, "before"

    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    if-nez p2, :cond_3

    move-object p2, v1

    .line 353
    :cond_3
    const-string p1, "after"

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 354
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 355
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendEventInternalModeChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 367
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendEventInternalModeChange(): mode :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  To : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Way : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 371
    :cond_0
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v1, "MODE_CHANGE_EVENT"

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    const-string v1, ""

    if-nez p0, :cond_1

    move-object p0, v1

    :cond_1
    const-string v2, "mode"

    invoke-virtual {v0, v2, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    if-nez p1, :cond_2

    move-object p1, v1

    .line 373
    :cond_2
    const-string/jumbo v0, "to"

    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    if-nez p2, :cond_3

    move-object p2, v1

    .line 374
    :cond_3
    const-string/jumbo p1, "way"

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 375
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 376
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendExternalCameraAppEvent(Lorg/json/JSONObject;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 482
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendExternalCameraAppEvent(): json = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IddUtil"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 482
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 484
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 485
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 486
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 487
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "T"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 488
    invoke-static {}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getCurrentTimeZone()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 489
    const-string/jumbo p2, "timestamp_original_event"

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 490
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendFaultDetectEvent(Ljava/lang/String;)V
    .locals 2

    .line 508
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendFaultDetectEvent(): close_by = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 510
    :cond_0
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v1, "FAULT_DETECT_EVENT"

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_1

    .line 511
    const-string p0, ""

    :cond_1
    const-string v1, "close_by"

    invoke-virtual {v0, v1, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 512
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 513
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendFeatureContentEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 446
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendFeatureContentEvent(): page = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 449
    :cond_0
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    const-string p0, ""

    if-nez p1, :cond_1

    move-object p1, p0

    :cond_1
    const-string v1, "page"

    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p1

    if-nez p2, :cond_2

    move-object p2, p0

    .line 451
    :cond_2
    const-string/jumbo p0, "time"

    invoke-virtual {p1, p0, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 452
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 453
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method private static sendJsonData(Ljava/lang/String;)V
    .locals 4

    .line 546
    sget-boolean v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsSendingAllowed:Z

    if-eqz v0, :cond_0

    .line 548
    invoke-static {}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->setPackageInfo()V

    .line 550
    invoke-static {}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->checkIddSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    :try_start_0
    sget-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mPackageName:Ljava/lang/String;

    sget-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mVersionName:Ljava/lang/String;

    sget v2, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mVersionCode:I

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/idd/api/Idd;->addAppDataJSON(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 562
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendJsonData(): Could not send event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 562
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static sendPerformanceData(Ljava/lang/String;JZLjava/lang/String;)V
    .locals 4

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendPerformanceData(): key = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    const-string v1, ""

    if-nez p0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", time(millis) = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isHeated = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    new-instance v2, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v3, "PERFORMANCE"

    invoke-direct {v2, v3}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_1

    move-object p0, v1

    .line 304
    :cond_1
    const-string/jumbo v1, "target"

    invoke-virtual {v2, v1, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string/jumbo v1, "time"

    .line 305
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    if-eqz p3, :cond_2

    .line 307
    const-string p1, "HIGH"

    goto :goto_1

    :cond_2
    const-string p1, "NORMAL"

    .line 306
    :goto_1
    const-string/jumbo p2, "thermal_status"

    invoke-virtual {p0, p2, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 308
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 309
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", batteryLevel = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    const-string p1, "battery_level"

    invoke-virtual {p0, p1, p4}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    .line 313
    :cond_3
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_4

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 314
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 315
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendReadQrCodeEvent(Ljava/lang/String;)V
    .locals 2

    .line 528
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendReadQrCodeEvent(): qr_type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 530
    :cond_0
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v1, "READ_QR_CODE"

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_1

    .line 531
    const-string p0, ""

    :cond_1
    const-string v1, "qr_type"

    invoke-virtual {v0, v1, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 532
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 533
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendShowFeatureListEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;)V
    .locals 2

    .line 431
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendShowFeatureContentEvent(): way = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 433
    :cond_0
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 434
    const-string p1, ""

    :cond_1
    const-string/jumbo p0, "way"

    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 435
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 436
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendThumbnailTransitionEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 517
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendThumbnailTransitionEvent(): duration = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", click_times = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 520
    :cond_0
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v1, "THUMBNAIL_TRANSITION_EVENT"

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    .line 521
    const-string v1, ""

    if-nez p0, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    const-string v3, "duration"

    invoke-virtual {v0, v3, v2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object v0

    if-nez p0, :cond_2

    move-object p1, v1

    .line 522
    :cond_2
    const-string p0, "click_times"

    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 523
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 524
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendTransitionQrCodeEvent()V
    .locals 2

    .line 537
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "sendTransitionQrCodeEvent()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 539
    :cond_0
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v1, "TRANSITION_QR_CODE"

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object v0

    .line 541
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendWizardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 413
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendWizardEvent(): page = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reslut = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 417
    :cond_0
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v1, "SETUP_WIZARD_EVENT"

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    .line 418
    const-string v1, ""

    if-nez p0, :cond_1

    move-object p0, v1

    :cond_1
    const-string v2, "page"

    invoke-virtual {v0, v2, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    if-nez p1, :cond_2

    move-object p1, v1

    .line 419
    :cond_2
    const-string/jumbo v0, "time"

    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    if-nez p2, :cond_3

    move-object p2, v1

    .line 420
    :cond_3
    const-string p1, "result"

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 421
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 422
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendZoomDialLongTapEvent()V
    .locals 2

    .line 468
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "sendZoomDialLongTapEvent()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 470
    :cond_0
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v1, "ZOOM_LONGTAP_EVENT"

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendZoomDialTapEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 457
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendZoomDialTapEvent(): zoomRatio = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trigger = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 460
    :cond_0
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v1, "ZOOM_TAP_EVENT"

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    .line 461
    const-string v1, ""

    if-nez p0, :cond_1

    move-object p0, v1

    :cond_1
    const-string/jumbo v2, "zoom_ratio"

    invoke-virtual {v0, v2, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    if-nez p1, :cond_2

    move-object p1, v1

    .line 462
    :cond_2
    const-string/jumbo v0, "trigger"

    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 463
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 464
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static setLaunchedBy(Ljava/lang/String;)V
    .locals 2

    .line 204
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setLaunchedBy() : launchedBy = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 207
    :cond_0
    sput-object p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mLaunchedBy:Ljava/lang/String;

    return-void
.end method

.method private static setPackageInfo()V
    .locals 5

    .line 135
    sget-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v0, ""

    sget-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    sget-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mPackageName:Ljava/lang/String;

    .line 139
    sget-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 145
    :try_start_0
    sget-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mPackageName:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 146
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v4

    .line 145
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mVersionName:Ljava/lang/String;

    .line 147
    sget-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mPackageName:Ljava/lang/String;

    .line 148
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mVersionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "setPackageInfo(): Could not get version info"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setView(Lcom/sonymobile/cameracommon/research/parameters/Screen;)V
    .locals 2

    .line 216
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendView() : screen = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/parameters/Screen;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mView:Ljava/lang/String;

    return-void
.end method
