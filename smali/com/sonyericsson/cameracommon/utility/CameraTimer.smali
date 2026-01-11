.class public Lcom/sonyericsson/cameracommon/utility/CameraTimer;
.super Ljava/lang/Object;
.source "CameraTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;
    }
.end annotation


# static fields
.field public static final MSG_CANCEL:I = 0x2

.field public static final MSG_INTERVAL:I = 0x0

.field public static final MSG_POST_TIMEOUT:I = 0x3

.field public static final MSG_TIMEOUT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "SelfTimer"


# instance fields
.field private mCurTime:J

.field private mDelay:J

.field private mHandler:Landroid/os/Handler;

.field private mInterval:J

.field private mOptionName:Ljava/lang/String;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurTime(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)J
    .locals 2

    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mCurTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInterval(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)J
    .locals 2

    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mInterval:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmCurTime(Lcom/sonyericsson/cameracommon/utility/CameraTimer;J)V
    .locals 0

    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mCurTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mterminateInnerTimer(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->terminateInnerTimer()V

    return-void
.end method

.method public constructor <init>(JJLandroid/os/Handler;Ljava/lang/String;J)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "maxtime = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", interval = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", handler = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", optionName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 56
    :cond_0
    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mCurTime:J

    .line 57
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mHandler:Landroid/os/Handler;

    .line 58
    iput-wide p3, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mInterval:J

    .line 59
    iput-object p6, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mOptionName:Ljava/lang/String;

    .line 60
    iput-wide p7, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mDelay:J

    const-wide/16 p6, 0x0

    cmp-long p8, p1, p6

    if-lez p8, :cond_2

    cmp-long p6, p3, p6

    if-lez p6, :cond_2

    if-eqz p5, :cond_2

    cmp-long p3, p1, p3

    if-ltz p3, :cond_2

    const-wide/32 p3, 0x7fffffff

    cmp-long p1, p1, p3

    if-lez p1, :cond_1

    goto :goto_0

    .line 68
    :cond_1
    new-instance p1, Ljava/util/Timer;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/Timer;-><init>(Z)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;

    goto :goto_1

    .line 64
    :cond_2
    :goto_0
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_3

    const-string p1, "invalid timer setting."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;

    :goto_1
    return-void
.end method

.method private declared-synchronized terminateInnerTimer()V
    .locals 1

    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 5

    const-string v0, "cancel schedule.("

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 84
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "cancel timer == null, do nothing"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_1

    new-array v1, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mOptionName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->terminateInnerTimer()V

    .line 91
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 93
    iget-wide v1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mCurTime:J

    long-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x2

    .line 94
    iput v1, v0, Landroid/os/Message;->what:I

    .line 95
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 7

    const-string/jumbo v0, "start schedule.("

    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 74
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "start timer == null, do nothing"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_1

    new-array v1, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mOptionName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;

    new-instance v2, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;-><init>(Lcom/sonyericsson/cameracommon/utility/CameraTimer;Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask-IA;)V

    iget-wide v3, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mDelay:J

    iget-wide v5, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mInterval:J

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
