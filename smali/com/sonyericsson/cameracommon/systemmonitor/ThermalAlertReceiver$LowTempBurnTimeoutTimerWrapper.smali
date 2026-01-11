.class Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;
.super Ljava/lang/Object;
.source "ThermalAlertReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LowTempBurnTimeoutTimerWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask;
    }
.end annotation


# static fields
.field static final INVALID_TIMER_TIME:J = -0x1L


# instance fields
.field private mTimer:Ljava/util/Timer;

.field private mTimerToBeExpiredTimeMillis:J

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)V
    .locals 2

    .line 415
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 404
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimer:Ljava/util/Timer;

    const-wide/16 v0, -0x1

    .line 410
    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimerToBeExpiredTimeMillis:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;-><init>(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)V

    return-void
.end method

.method private getRemainedTimeMillis()J
    .locals 6

    .line 420
    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimerToBeExpiredTimeMillis:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    return-wide v2

    .line 426
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long p0, v0, v4

    if-gtz p0, :cond_1

    return-wide v2

    :cond_1
    return-wide v0
.end method


# virtual methods
.method public final declared-synchronized cancel()V
    .locals 4

    monitor-enter p0

    .line 470
    :try_start_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "Cancel low temp burn timer."

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 474
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 475
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimer:Ljava/util/Timer;

    const-wide/16 v0, -0x1

    .line 477
    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimerToBeExpiredTimeMillis:J

    goto :goto_0

    .line 479
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "LowTempBurnTimer is already cancel."

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized requestTimeMillis(J)V
    .locals 6

    const-string v0, "Request low temp burn timer millis : "

    monitor-enter p0

    .line 442
    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    new-array v1, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 445
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->getRemainedTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_2

    cmp-long v0, v0, p1

    if-gez v0, :cond_2

    .line 450
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_1

    new-array p1, v3, [Ljava/lang/String;

    const-string p2, "Current timer is valid."

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    :cond_1
    monitor-exit p0

    return-void

    .line 456
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    .line 459
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v3}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimer:Ljava/util/Timer;

    .line 461
    new-instance v1, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask;-><init>(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask-IA;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimerToBeExpiredTimeMillis:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
