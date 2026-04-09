.class public Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ThermalAlertReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;,
        Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;,
        Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;
    }
.end annotation


# static fields
.field private static final ACTION_CAMERA_COOLED_DOWN_NORMAL:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_COOLED_DOWN_NORMAL"

.field private static final ACTION_CAMERA_HEATED_CLOSE_TO_SHUTDOWN:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN"

.field private static final ACTION_CAMERA_HEATED_OVER_CRITICAL:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL"

.field private static final ACTION_CAMERA_HEATED_OVER_LOW_TEMP_BURN:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_LOW_TEMP_BURN"

.field private static final ACTION_CAMERA_LOW_TEMP_BURN_TIMER_RESET:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_RESET"

.field private static final ACTION_CAMERA_LOW_TEMP_BURN_TIMER_SET:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_SET"

.field private static final CAMERA_CRITICAL:I = 0x25c

.field private static final CAMERA_HEATED_CLOSE_TO_SHUTDOWN:I = 0x26c

.field private static final CAMERA_HEATED_OVER_WARNING_EXTRA_FUNC:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_WARNING_EXTRA_FUNC"

.field private static final CAMERA_LOW_TEMP_BURN:I = 0x262

.field private static final CAMERA_NORMAL:I = 0x258

.field private static final CAMERA_WARNING:I = 0x25b

.field private static final CAMERA_WARNING_EXTRA:I = 0x259

.field private static final INVALID_LOW_TEMP_BURN_TIMEOUT_DURATION:I = -0x1

.field private static final KEY_LOW_TEMP_BURN_TIMER_DURATION_SEC:Ljava/lang/String; = "com.sonyericsson.psm.extra.TIMEOUT_SEC"

.field private static final LOW_TEMP_BURN_TIMER_LIMIT_MILLIS:I = 0x1b7740

.field private static final SYSMON_SERVICE:Ljava/lang/String; = "com.sonyericsson.psm.sysmonservice"

.field private static final SYSMON_SERVICE_CLASS:Ljava/lang/String; = "com.sonyericsson.psm.sysmonservice.SysmonService"

.field public static final TAG:Ljava/lang/String; = "ThermalAlertReceiver"

.field private static final VARIABLE_LOW_TEMP_BURN_TIMEOUT_DURATION_NOT_SUPPORTED:I


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mIsAlreadyHighTemperature:Z

.field private mIsBindSysmonService:Z

.field private mIsWarningExtraState:Z

.field private mIsWarningReceived:Z

.field private mIsWarningState:Z

.field private final mListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

.field private final mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

.field private final mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

.field private final mServiceConnectionSysmon:Landroid/content/ServiceConnection;

.field private mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;)V
    .locals 1

    .line 264
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 111
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningState:Z

    .line 112
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningExtraState:Z

    .line 114
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningReceived:Z

    .line 266
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    .line 267
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    .line 268
    new-instance p1, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;

    invoke-direct {p1, p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;-><init>(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mServiceConnectionSysmon:Landroid/content/ServiceConnection;

    .line 269
    new-instance p1, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;-><init>(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$1;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    .line 270
    new-instance p1, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-direct {p1, p0, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;-><init>(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$1;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    return-object p0
.end method

.method static synthetic access$002(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;Lcom/sonyericsson/psm/sysmonservice/ISysmonService;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;ILjava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->checkStartupStatus(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;II)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->checkLowTempBurnTimeoutTimerDuration(II)V

    return-void
.end method

.method static synthetic access$502(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    return-object p0
.end method

.method private changeToNormalState()V
    .locals 1

    const/4 v0, 0x0

    .line 506
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningState:Z

    .line 507
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;->onNotifyThermalNormal()V

    return-void
.end method

.method private changeToWarningExtraState(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 518
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningExtraState:Z

    .line 519
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    invoke-interface {p0, p1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;->onNotifyThermalWarningExtra(Z)V

    return-void
.end method

.method private changeToWarningState(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 511
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningState:Z

    .line 512
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningReceived:Z

    .line 513
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;->onNotifyThermalWarning(Z)V

    .line 514
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    invoke-interface {p0, p1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;->onNotifyThermalWarningExtra(Z)V

    return-void
.end method

.method private checkLowTempBurnTimeoutTimerDuration(II)V
    .locals 3

    if-nez p2, :cond_0

    const/16 p2, 0x262

    if-ne p1, p2, :cond_2

    .line 202
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    const-wide/32 p1, 0x1b7740

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->requestTimeMillis(J)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_2

    .line 213
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Variable duration LTB timer : duration Sec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 215
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->requestTimeMillis(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method private checkStartupStatus(ILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 189
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_5

    new-array p0, v1, [Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Startup status of service["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] is unknown."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :sswitch_0
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    new-array p1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Startup status of service["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] is CLOSE_TO_SHUTDOWN."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 185
    :cond_0
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->changeToWarningState(Z)V

    goto/16 :goto_0

    .line 157
    :sswitch_1
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_1

    new-array p1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Startup status of service["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] is CRITICAL."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 159
    :cond_1
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 160
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->finishOnStartup()V

    goto :goto_0

    .line 170
    :sswitch_2
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_2

    new-array p1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Startup status of service["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] is WARNING."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 172
    :cond_2
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 173
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->finishOnStartup()V

    goto :goto_0

    .line 164
    :sswitch_3
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_3

    new-array p1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Startup status of service["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] is CAMERA_WARNING_EXTRA."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 166
    :cond_3
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->changeToWarningExtraState(Z)V

    goto :goto_0

    .line 177
    :sswitch_4
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_4

    new-array p1, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Startup status of service["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] is NORMAL."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 179
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->changeToNormalState()V

    :cond_5
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x258 -> :sswitch_4
        0x259 -> :sswitch_3
        0x25b -> :sswitch_2
        0x25c -> :sswitch_1
        0x26c -> :sswitch_0
    .end sparse-switch
.end method

.method private finishOnStartup()V
    .locals 1

    .line 395
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;->onReachCriticalTemperature(Z)V

    return-void
.end method


# virtual methods
.method public isAlreadyHighTemperature()Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    return p0
.end method

.method public isThermalWarningReceived()Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningReceived:Z

    return p0
.end method

.method public isWarningExtraState()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningExtraState:Z

    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningState:Z

    or-int/2addr p0, v0

    return p0
.end method

.method public isWarningState()Z
    .locals 0

    .line 138
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningState:Z

    return p0
.end method

.method public onCreate()V
    .locals 3

    .line 278
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 279
    sget-object v1, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isLowPowerModeDisabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL"

    .line 280
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_WARNING_EXTRA_FUNC"

    .line 281
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_LOW_TEMP_BURN"

    .line 282
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.psm.action.CAMERA_COOLED_DOWN_NORMAL"

    .line 283
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN"

    .line 284
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_SET"

    .line 285
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_RESET"

    .line 286
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 289
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningExtraState:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v0, 0x0

    .line 328
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 329
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsBindSysmonService:Z

    if-eqz v1, :cond_0

    .line 330
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsBindSysmonService:Z

    .line 331
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mServiceConnectionSysmon:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    .line 335
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    .line 337
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningReceived:Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 344
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsBindSysmonService:Z

    if-nez p1, :cond_1

    .line 345
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "Service is already unbinded"

    .line 346
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 353
    :cond_1
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    if-eqz p1, :cond_3

    .line 354
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_2

    const-string p0, "Temperature is already high"

    .line 355
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 361
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL"

    .line 362
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 364
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    .line 365
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    const/4 p1, 0x1

    .line 366
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 367
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    invoke-interface {p0, v1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;->onReachCriticalTemperature(Z)V

    goto :goto_0

    :cond_4
    const-string v0, "com.sonyericsson.psm.action.CAMERA_COOLED_DOWN_NORMAL"

    .line 369
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 370
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    .line 371
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->changeToNormalState()V

    goto :goto_0

    :cond_5
    const-string v0, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_LOW_TEMP_BURN"

    .line 372
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 373
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    const-wide/32 p1, 0x1b7740

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->requestTimeMillis(J)V

    goto :goto_0

    :cond_6
    const-string v0, "com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN"

    .line 374
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 375
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->changeToWarningState(Z)V

    goto :goto_0

    :cond_7
    const-string v0, "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_SET"

    .line 377
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 378
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_a

    const-string p2, "com.sonyericsson.psm.extra.TIMEOUT_SEC"

    const/4 v0, -0x1

    .line 380
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_a

    .line 384
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->requestTimeMillis(J)V

    goto :goto_0

    :cond_8
    const-string p2, "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_RESET"

    .line 387
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 388
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    goto :goto_0

    :cond_9
    const-string p2, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_WARNING_EXTRA_FUNC"

    .line 389
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 390
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->changeToWarningExtraState(Z)V

    :cond_a
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v0, 0x0

    .line 303
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 304
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningExtraState:Z

    .line 306
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sonyericsson.psm.sysmonservice"

    const-string v3, "com.sonyericsson.psm.sysmonservice.SysmonService"

    .line 307
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    sget-object v2, Lcom/sonyericsson/android/camera/util/PerfLog;->BIND_SYSMON_SERVICE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 310
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mServiceConnectionSysmon:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v0}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsBindSysmonService:Z

    .line 314
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->BIND_SYSMON_SERVICE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 316
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsBindSysmonService:Z

    if-eqz v0, :cond_0

    .line 317
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "bind sysmon service"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mServiceConnectionSysmon:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    :goto_0
    return-void
.end method
