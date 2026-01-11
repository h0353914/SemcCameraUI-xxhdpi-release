.class public Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ThermalAlertReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;,
        Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;,
        Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;
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
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSysmonService(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsAlreadyHighTemperature(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSysmonService(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;Lcom/sonyericsson/psm/sysmonservice/ISysmonService;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckLowTempBurnTimeoutTimerDuration(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->checkLowTempBurnTimeoutTimerDuration(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckStartupStatus(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->checkStartupStatus(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;)V
    .locals 1

    .line 266
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 113
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningState:Z

    .line 114
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningExtraState:Z

    .line 116
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningReceived:Z

    .line 268
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    .line 269
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    .line 270
    new-instance p1, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;

    invoke-direct {p1, p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;-><init>(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mServiceConnectionSysmon:Landroid/content/ServiceConnection;

    .line 271
    new-instance p1, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;-><init>(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper-IA;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    .line 272
    new-instance p1, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-direct {p1, p0, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;-><init>(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper-IA;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    return-void
.end method

.method private changeToNormalState()V
    .locals 1

    const/4 v0, 0x0

    .line 509
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningState:Z

    .line 510
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningReceived:Z

    .line 511
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;->onNotifyThermalNormal()V

    return-void
.end method

.method private changeToWarningExtraState(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 522
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningExtraState:Z

    .line 523
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    invoke-interface {p0, p1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;->onNotifyThermalWarningExtra(Z)V

    return-void
.end method

.method private changeToWarningState(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 515
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningState:Z

    .line 516
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningReceived:Z

    .line 517
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;->onNotifyThermalWarning(Z)V

    .line 518
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    invoke-interface {p0, p1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;->onNotifyThermalWarningExtra(Z)V

    return-void
.end method

.method private checkLowTempBurnTimeoutTimerDuration(II)V
    .locals 1

    if-nez p2, :cond_0

    const/16 p2, 0x262

    if-ne p1, p2, :cond_2

    .line 204
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    const-wide/32 p1, 0x1b7740

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->requestTimeMillis(J)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_2

    .line 215
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Variable duration LTB timer : duration Sec="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 217
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
    .locals 3

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    const/16 v0, 0x258

    .line 157
    const-string v1, "Startup status of service["

    if-eq p1, v0, :cond_8

    const/16 v0, 0x259

    const/4 v2, 0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0x25b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x25c

    if-eq p1, v0, :cond_2

    const/16 v0, 0x26c

    if-eq p1, v0, :cond_0

    .line 191
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "] is unknown."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    :cond_0
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] is CLOSE_TO_SHUTDOWN."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 187
    :cond_1
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->changeToWarningState(Z)V

    goto/16 :goto_0

    .line 159
    :cond_2
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] is CRITICAL."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 161
    :cond_3
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 162
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->finishOnStartup()V

    goto :goto_0

    .line 172
    :cond_4
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] is WARNING."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 174
    :cond_5
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 175
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->finishOnStartup()V

    goto :goto_0

    .line 166
    :cond_6
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] is CAMERA_WARNING_EXTRA."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 168
    :cond_7
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->changeToWarningExtraState(Z)V

    goto :goto_0

    .line 179
    :cond_8
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] is NORMAL."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 181
    :cond_9
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->changeToNormalState()V

    :cond_a
    :goto_0
    return-void
.end method

.method private finishOnStartup()V
    .locals 1

    .line 398
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;->onReachCriticalTemperature(Z)V

    return-void
.end method


# virtual methods
.method public isAlreadyHighTemperature()Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    return p0
.end method

.method public isThermalWarningReceived()Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningReceived:Z

    return p0
.end method

.method public isWarningExtraState()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningExtraState:Z

    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningState:Z

    or-int/2addr p0, v0

    return p0
.end method

.method public isWarningState()Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningState:Z

    return p0
.end method

.method public onCreate()V
    .locals 3

    .line 280
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 281
    sget-object v1, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isLowPowerModeDisabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    const-string v1, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string v1, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_WARNING_EXTRA_FUNC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string v1, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_LOW_TEMP_BURN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v1, "com.sonyericsson.psm.action.CAMERA_COOLED_DOWN_NORMAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string v1, "com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    const-string v1, "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string v1, "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 291
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningExtraState:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v0, 0x0

    .line 330
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 331
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsBindSysmonService:Z

    if-eqz v1, :cond_0

    .line 332
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsBindSysmonService:Z

    .line 333
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mServiceConnectionSysmon:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    .line 337
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    .line 339
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningReceived:Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 346
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsBindSysmonService:Z

    if-nez p1, :cond_1

    .line 347
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    .line 348
    const-string p0, "Service is already unbinded"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 355
    :cond_1
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    if-eqz p1, :cond_3

    .line 356
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_2

    .line 357
    const-string p0, "Temperature is already high"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 363
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 364
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "###action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThermalAlertReceiver"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 365
    :cond_4
    const-string v0, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 367
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    .line 368
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    const/4 p1, 0x1

    .line 369
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 370
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    invoke-interface {p0, v1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;->onReachCriticalTemperature(Z)V

    goto :goto_0

    .line 372
    :cond_5
    const-string v0, "com.sonyericsson.psm.action.CAMERA_COOLED_DOWN_NORMAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 373
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    .line 374
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->changeToNormalState()V

    goto :goto_0

    .line 375
    :cond_6
    const-string v0, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_LOW_TEMP_BURN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 376
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    const-wide/32 p1, 0x1b7740

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->requestTimeMillis(J)V

    goto :goto_0

    .line 377
    :cond_7
    const-string v0, "com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 378
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->changeToWarningState(Z)V

    goto :goto_0

    .line 380
    :cond_8
    const-string v0, "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_SET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 381
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 383
    const-string p2, "com.sonyericsson.psm.extra.TIMEOUT_SEC"

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_b

    .line 387
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->requestTimeMillis(J)V

    goto :goto_0

    .line 390
    :cond_9
    const-string p2, "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_RESET"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 391
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    goto :goto_0

    .line 392
    :cond_a
    const-string p2, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_WARNING_EXTRA_FUNC"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 393
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->changeToWarningExtraState(Z)V

    :cond_b
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v0, 0x0

    .line 305
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 306
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningExtraState:Z

    .line 308
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 309
    const-string v1, "com.sonyericsson.psm.sysmonservice"

    const-string v2, "com.sonyericsson.psm.sysmonservice.SysmonService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->BIND_SYSMON_SERVICE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 312
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mServiceConnectionSysmon:Landroid/content/ServiceConnection;

    const/16 v3, 0x200

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsBindSysmonService:Z

    .line 316
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->BIND_SYSMON_SERVICE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 318
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsBindSysmonService:Z

    if-eqz v0, :cond_0

    .line 319
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "bind sysmon service"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mServiceConnectionSysmon:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    :goto_0
    return-void
.end method
