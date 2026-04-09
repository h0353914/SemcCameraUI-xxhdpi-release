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

.field private static final KEY_ENVIRONMENT:Ljava/lang/String; = "environment"

.field private static final KEY_LABEL:Ljava/lang/String; = "label"

.field private static final KEY_LAUNCHEDBY:Ljava/lang/String; = "launched_by"

.field private static final KEY_MODE:Ljava/lang/String; = "mode"

.field private static final KEY_PERFORMANCE_BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field private static final KEY_PERFORMANCE_TARGET:Ljava/lang/String; = "target"

.field private static final KEY_PERFORMANCE_THERMAL_STATUS:Ljava/lang/String; = "thermal_status"

.field private static final KEY_PERFORMANCE_TIME:Ljava/lang/String; = "time"

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

.field public static final TAG:Ljava/lang/String; = "IddUtil"

.field private static final THERMAL_STATUS_HIGH:Ljava/lang/String; = "HIGH"

.field private static final THERMAL_STATUS_NORMAL:Ljava/lang/String; = "NORMAL"

.field private static final TYPE_AUTO_POWEROFF_EVENT:Ljava/lang/String; = "AUTO_POWEROFF"

.field private static final TYPE_CAMERA_NOT_AVAILABLE_EVENT:Ljava/lang/String; = "CAMERA_NOT_AVAILABLE"

.field public static final TYPE_CHANGE_SETTING_EVENT:Ljava/lang/String; = "CHANGE_SETTING_EVENT"

.field private static final TYPE_LOWBATTERY_ERROR_EVENT:Ljava/lang/String; = "LOWBATTERY_ERROR"

.field private static final TYPE_MODE_CHANGE_EVENT:Ljava/lang/String; = "MODE_CHANGE_EVENT"

.field private static final TYPE_MODE_SELECTOR_EVENT:Ljava/lang/String; = "MODE_SELECTOR_EVENT"

.field private static final TYPE_PANORAMA_EVENT:Ljava/lang/String; = "PANORAMA"

.field private static final TYPE_PERFORMANCE_EVENT:Ljava/lang/String; = "PERFORMANCE"

.field public static final TYPE_PHOTO_EVENT:Ljava/lang/String; = "PHOTO_EVENT"

.field private static final TYPE_PREDICTIVE_LAUNCH_EVENT:Ljava/lang/String; = "PREDICTIVE_LAUNCH"

.field private static final TYPE_SELFTIMER_CANCEL_EVENT:Ljava/lang/String; = "SELFTIMER_CANCEL_EVENT"

.field private static final TYPE_SETUP_WIZARD_EVENT:Ljava/lang/String; = "SETUP_WIZARD_EVENT"

.field private static final TYPE_SLOW_MOTION_EVENT:Ljava/lang/String; = "SLOW_MOTION_EVENT"

.field private static final TYPE_THERMAL_ERROR_EVENT:Ljava/lang/String; = "THERMAL_ERROR"

.field public static final TYPE_VIDEO_EVENT:Ljava/lang/String; = "VIDEO_EVENT"

.field private static mContext:Landroid/content/Context; = null

.field private static mIsIddSupportAlreadyChecked:Z = false

.field private static mIsIddSupported:Z = false

.field private static mIsSendingAllowed:Z = true

.field private static mLaunchedBy:Ljava/lang/String; = ""

.field private static mPackageName:Ljava/lang/String; = ""

.field private static mVersionCode:I = 0x0

.field private static mVersionName:Ljava/lang/String; = ""

.field private static mView:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mView:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mLaunchedBy:Ljava/lang/String;

    return-object v0
.end method

.method private static checkIddSupported()Z
    .locals 6

    .line 135
    sget-boolean v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupportAlreadyChecked:Z

    if-eqz v0, :cond_0

    .line 136
    sget-boolean v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupported:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 139
    sput-boolean v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupported:Z

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "com.sonyericsson.idd.api.Idd"

    .line 141
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "addAppDataJSON"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    const-class v0, Ljava/lang/String;

    aput-object v0, v4, v1

    const/4 v0, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-class v5, Lorg/json/JSONObject;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 143
    sput-boolean v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupported:Z

    .line 144
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "Idd.addAppDataJSON is supported"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "Idd.addAppDataJSON is not supported"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 148
    :cond_1
    :goto_0
    sput-boolean v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupportAlreadyChecked:Z

    .line 149
    sget-boolean v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupported:Z

    return v0
.end method

.method private static getCurrentTimeZone()Ljava/lang/String;
    .locals 8

    .line 419
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-gez v0, :cond_0

    .line 423
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "-%02d:%02d"

    new-array v4, v4, [Ljava/lang/Object;

    div-int/lit8 v7, v0, 0x3c

    .line 424
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    .line 423
    invoke-static {v5, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 426
    :cond_0
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "+%02d:%02d"

    new-array v4, v4, [Ljava/lang/Object;

    div-int/lit8 v7, v0, 0x3c

    .line 427
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    .line 426
    invoke-static {v5, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 230
    sget-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    return-object v0

    :pswitch_0
    const-string p0, "AUTO_POWEROFF"

    return-object p0

    :pswitch_1
    const-string p0, "PREDICTIVE_LAUNCH"

    return-object p0

    :pswitch_2
    const-string p0, "SLOW_MOTION_EVENT"

    return-object p0

    :pswitch_3
    const-string p0, "LOWBATTERY_ERROR"

    return-object p0

    :pswitch_4
    const-string p0, "SELFTIMER_CANCEL_EVENT"

    return-object p0

    :pswitch_5
    const-string p0, "PANORAMA"

    return-object p0

    :pswitch_6
    const-string p0, "CAMERA_NOT_AVAILABLE"

    return-object p0

    :pswitch_7
    const-string p0, "THERMAL_ERROR"

    return-object p0

    :pswitch_8
    const-string p0, "MODE_SELECTOR_EVENT"

    return-object p0

    :pswitch_9
    const-string p0, "VIDEO_EVENT"

    return-object p0

    :pswitch_a
    const-string p0, "PHOTO_EVENT"

    return-object p0

    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

    .line 116
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

    .line 173
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
    .locals 4

    .line 212
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 216
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEvent(): category = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", label = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 216
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 220
    :cond_1
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "action"

    if-nez p1, :cond_2

    const-string p1, ""

    .line 221
    :cond_2
    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string p1, "label"

    if-nez p2, :cond_3

    const-string p2, ""

    .line 222
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string p1, "value"

    .line 223
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 224
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 225
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendEventAddonModeChange(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 363
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 367
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEventAddonModeChange(): category = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", label = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", method = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 367
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 371
    :cond_1
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "action"

    if-nez p1, :cond_2

    const-string p1, ""

    .line 372
    :cond_2
    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string p1, "label"

    if-nez p2, :cond_3

    const-string p2, ""

    .line 373
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string p1, "way"

    if-nez p3, :cond_4

    const-string p3, ""

    .line 374
    :cond_4
    invoke-virtual {p0, p1, p3}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 375
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 376
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendEventAllSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
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

    .line 301
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEventAllSettings(): category = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", env = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", settings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 301
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 305
    :cond_0
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "environment"

    .line 306
    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/util/Map;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string p1, "setting"

    .line 307
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/util/Map;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 308
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 309
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendEventChangedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 320
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEventChangedSetting(): setting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", before = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", after = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 324
    :cond_0
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v1, "CHANGE_SETTING_EVENT"

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "setting"

    if-nez p0, :cond_1

    const-string p0, ""

    .line 325
    :cond_1
    invoke-virtual {v0, v1, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string v0, "before"

    if-nez p1, :cond_2

    const-string p1, ""

    .line 326
    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string p1, "after"

    if-nez p2, :cond_3

    const-string p2, ""

    .line 327
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 328
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 329
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendEventInternalModeChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 341
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEventInternalModeChange(): mode :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  To : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Way : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 345
    :cond_0
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v1, "MODE_CHANGE_EVENT"

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mode"

    if-nez p0, :cond_1

    const-string p0, ""

    .line 346
    :cond_1
    invoke-virtual {v0, v1, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string v0, "to"

    if-nez p1, :cond_2

    const-string p1, ""

    .line 347
    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string p1, "way"

    if-nez p2, :cond_3

    const-string p2, ""

    .line 348
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 349
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 350
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendExternalCameraAppEvent(Lorg/json/JSONObject;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 407
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "IddUtil"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendExternalCameraAppEvent(): json = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " timestamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 407
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 409
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 410
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 411
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 412
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "T"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-static {}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getCurrentTimeZone()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "timestamp_original_event"

    .line 414
    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method private static sendJsonData(Ljava/lang/String;)V
    .locals 4

    .line 434
    sget-boolean v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsSendingAllowed:Z

    if-eqz v0, :cond_0

    .line 436
    invoke-static {}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->setPackageInfo()V

    .line 438
    invoke-static {}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->checkIddSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    :try_start_0
    sget-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mPackageName:Ljava/lang/String;

    sget-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mVersionName:Ljava/lang/String;

    sget v2, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mVersionCode:I

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/idd/api/Idd;->addAppDataJSON(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 450
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendJsonData(): Could not send event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    .line 450
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static sendPerformanceData(Ljava/lang/String;JZLjava/lang/String;)V
    .locals 3

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendPerformanceData(): key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time(millis) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isHeated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    new-instance v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v2, "PERFORMANCE"

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "target"

    if-nez p0, :cond_1

    const-string p0, ""

    .line 278
    :cond_1
    invoke-virtual {v1, v2, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string v1, "time"

    .line 279
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string p1, "thermal_status"

    if-eqz p3, :cond_2

    const-string p2, "HIGH"

    goto :goto_1

    :cond_2
    const-string p2, "NORMAL"

    .line 280
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 282
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", batteryLevel = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string p1, "battery_level"

    .line 284
    invoke-virtual {p0, p1, p4}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    .line 287
    :cond_3
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 288
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 289
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendWizardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 387
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendWizardEvent(): page = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", reslut = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 391
    :cond_0
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v1, "SETUP_WIZARD_EVENT"

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "page"

    if-nez p0, :cond_1

    const-string p0, ""

    .line 392
    :cond_1
    invoke-virtual {v0, v1, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string v0, "time"

    if-nez p1, :cond_2

    const-string p1, ""

    .line 393
    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string p1, "result"

    if-nez p2, :cond_3

    const-string p2, ""

    .line 394
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 395
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 396
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static setLaunchedBy(Ljava/lang/String;)V
    .locals 4

    .line 182
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLaunchedBy() : launchedBy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 185
    :cond_0
    sput-object p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mLaunchedBy:Ljava/lang/String;

    return-void
.end method

.method private static setPackageInfo()V
    .locals 3

    .line 120
    sget-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    const-string v0, ""

    sget-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 123
    :cond_0
    sget-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mPackageName:Ljava/lang/String;

    .line 124
    sget-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 126
    :try_start_0
    sget-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mVersionName:Ljava/lang/String;

    .line 127
    sget-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mVersionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "setPackageInfo(): Could not get version info"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public static setView(Lcom/sonymobile/cameracommon/research/parameters/Screen;)V
    .locals 4

    .line 194
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendView() : screen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/parameters/Screen;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mView:Ljava/lang/String;

    return-void
.end method
