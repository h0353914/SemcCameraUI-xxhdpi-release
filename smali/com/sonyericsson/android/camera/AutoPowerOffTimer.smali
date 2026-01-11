.class public Lcom/sonyericsson/android/camera/AutoPowerOffTimer;
.super Ljava/lang/Object;
.source "AutoPowerOffTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;,
        Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffListener;,
        Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffWarningTask;,
        Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffTask;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field private mAutoPowerOffTimeOutDuration:I

.field private mAutoPowerOffWarningTimeOutOffset:I

.field private final mHandler:Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;

.field private mIsAutoPowerOffTimerEnabled:Z

.field private mListener:Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffListener;

.field private mTimer:Ljava/util/Timer;

.field private mUserdata:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAutoPowerOffWarningTimeOutOffset(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mAutoPowerOffWarningTimeOutOffset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;)Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mHandler:Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;)Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mListener:Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserdata(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mUserdata:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartAutoPowerOff(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->startAutoPowerOff(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstopAutoPowerOffTimer(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->stopAutoPowerOffTimer()V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffListener;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mIsAutoPowerOffTimerEnabled:Z

    .line 36
    new-instance v0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;-><init>(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mHandler:Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;

    .line 39
    iput-object p1, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 40
    iput-object p2, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mListener:Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffListener;

    return-void
.end method

.method private declared-synchronized startAutoPowerOff(I)Z
    .locals 5

    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInLockTaskMode()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 140
    monitor-exit p0

    return v1

    .line 143
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 145
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mTimer:Ljava/util/Timer;

    .line 148
    new-instance v2, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffTask;-><init>(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffTask-IA;)V

    int-to-long v3, p1

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    monitor-exit p0

    return v1

    .line 151
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final startAutoPowerOffTimer()V
    .locals 2

    .line 86
    sget-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isAutoPowerOffDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mIsAutoPowerOffTimerEnabled:Z

    if-nez v0, :cond_1

    return-void

    .line 94
    :cond_1
    iget v0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mAutoPowerOffTimeOutDuration:I

    iget v1, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mAutoPowerOffWarningTimeOutOffset:I

    if-ge v0, v1, :cond_2

    .line 95
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->startAutoPowerOff(I)Z

    goto :goto_0

    :cond_2
    sub-int/2addr v0, v1

    .line 97
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->startAutoPowerOffWarning(I)Z

    :goto_0
    return-void
.end method

.method private declared-synchronized startAutoPowerOffWarning(I)Z
    .locals 5

    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInLockTaskMode()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    monitor-exit p0

    return v1

    .line 117
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mTimer:Ljava/util/Timer;

    .line 122
    new-instance v2, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffWarningTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffWarningTask;-><init>(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffWarningTask-IA;)V

    int-to-long v3, p1

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    monitor-exit p0

    return v1

    .line 125
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized stopAutoPowerOffTimer()V
    .locals 1

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final disableAutoPowerOffTimer()V
    .locals 1

    .line 68
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "disableAutoPowerOffTimer: "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mHandler:Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;->removeAllMessages()V

    .line 70
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->stopAutoPowerOffTimer()V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mIsAutoPowerOffTimerEnabled:Z

    return-void
.end method

.method public final enableAutoPowerOffTimer()V
    .locals 1

    .line 59
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "enableAutoPowerOffTimer: "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mIsAutoPowerOffTimerEnabled:Z

    .line 61
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->startAutoPowerOffTimer()V

    return-void
.end method

.method public getUserdata()Ljava/lang/Object;
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mUserdata:Ljava/lang/Object;

    return-object p0
.end method

.method public final declared-synchronized restartAutoPowerOffTimer()V
    .locals 1

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mHandler:Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;->removeAllMessages()V

    .line 81
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->stopAutoPowerOffTimer()V

    .line 82
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->startAutoPowerOffTimer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTimeOutDuration(IILjava/lang/Object;)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mAutoPowerOffTimeOutDuration:I

    .line 51
    iput p2, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mAutoPowerOffWarningTimeOutOffset:I

    .line 52
    iput-object p3, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->mUserdata:Ljava/lang/Object;

    return-void
.end method
