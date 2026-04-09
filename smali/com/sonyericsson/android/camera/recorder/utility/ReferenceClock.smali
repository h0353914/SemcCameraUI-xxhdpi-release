.class public Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;
.super Ljava/lang/Object;
.source "ReferenceClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$NotifyTickEvent;,
        Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickEvent;,
        Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ReferenceClock"


# instance fields
.field private mElapsedTimeOffsetMillis:J

.field private mInitialUptimeMillis:J

.field private mIsMeasuring:Z

.field private final mTickCallback:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickCallback;

.field private final mTickEvent:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickEvent;

.field private final mTickHandler:Landroid/os/Handler;

.field private final mTickInterval:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickEvent;-><init>(Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mTickEvent:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickEvent;

    const-wide/16 v2, 0x0

    .line 42
    iput-wide v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mElapsedTimeOffsetMillis:J

    .line 43
    iput-wide v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mInitialUptimeMillis:J

    .line 44
    iput-object v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mTickHandler:Landroid/os/Handler;

    .line 45
    iput-object v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mTickCallback:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickCallback;

    .line 46
    iput-wide v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mTickInterval:J

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mIsMeasuring:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickCallback;J)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickEvent;-><init>(Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mTickEvent:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickEvent;

    const-wide/16 v0, 0x0

    .line 51
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mElapsedTimeOffsetMillis:J

    .line 52
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mInitialUptimeMillis:J

    .line 53
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mTickHandler:Landroid/os/Handler;

    .line 54
    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mTickCallback:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickCallback;

    .line 55
    iput-wide p3, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mTickInterval:J

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mIsMeasuring:Z

    .line 57
    iget-wide p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mTickInterval:J

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    .line 58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "tickIntervalMillis must be lager that 0."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;)Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickCallback;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mTickCallback:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;)J
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;J)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->scheduleNextTickEvent(J)V

    return-void
.end method

.method private cancelTickEvent()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mTickHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mTickHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mTickEvent:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickEvent;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private computeElapsedTime(J)J
    .locals 2

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mElapsedTimeOffsetMillis:J

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->computeElapsedTimeSinceInitialTime(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    .line 134
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private computeElapsedTimeSinceInitialTime(J)J
    .locals 2

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mIsMeasuring:Z

    if-eqz v0, :cond_0

    .line 140
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mInitialUptimeMillis:J

    sub-long/2addr p1, v0

    monitor-exit p0

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x0

    .line 142
    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 144
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private now()J
    .locals 2

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private scheduleNextTickEvent(J)V
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mTickHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mIsMeasuring:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->computeElapsedTime(J)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mTickInterval:J

    div-long/2addr p1, v0

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mTickEvent:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickEvent;

    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    iget-wide v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mTickInterval:J

    mul-long/2addr p1, v1

    iput-wide p1, v0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickEvent;->requestElapsedTime:J

    .line 153
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mTickEvent:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickEvent;

    iget-wide p1, p1, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickEvent;->requestElapsedTime:J

    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mElapsedTimeOffsetMillis:J

    sub-long/2addr p1, v0

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mTickHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mTickEvent:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickEvent;

    iget-wide v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mInitialUptimeMillis:J

    add-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 159
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public elapsedTimeMillis()J
    .locals 2

    .line 114
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->now()J

    move-result-wide v0

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->computeElapsedTime(J)J

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 118
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isMeasuring()Z
    .locals 1

    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mIsMeasuring:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 124
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset(J)V
    .locals 2

    .line 105
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->now()J

    move-result-wide v0

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mElapsedTimeOffsetMillis:J

    .line 109
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mInitialUptimeMillis:J

    .line 110
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resume()V
    .locals 3

    .line 90
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->now()J

    move-result-wide v0

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mIsMeasuring:Z

    if-eqz v2, :cond_0

    .line 94
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "resume() is invoked in running."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_0
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mInitialUptimeMillis:J

    const/4 v2, 0x1

    .line 98
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mIsMeasuring:Z

    .line 99
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->scheduleNextTickEvent(J)V

    .line 101
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 4

    .line 63
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->now()J

    move-result-wide v0

    .line 65
    monitor-enter p0

    const-wide/16 v2, 0x0

    .line 66
    :try_start_0
    iput-wide v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mElapsedTimeOffsetMillis:J

    .line 67
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mInitialUptimeMillis:J

    const/4 v2, 0x1

    .line 68
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mIsMeasuring:Z

    .line 69
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->scheduleNextTickEvent(J)V

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 4

    .line 74
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->now()J

    move-result-wide v0

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mIsMeasuring:Z

    if-eqz v2, :cond_0

    .line 78
    iget-wide v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mElapsedTimeOffsetMillis:J

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->computeElapsedTimeSinceInitialTime(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mElapsedTimeOffsetMillis:J

    const-wide/16 v0, 0x0

    .line 79
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mInitialUptimeMillis:J

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->mIsMeasuring:Z

    .line 81
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->cancelTickEvent()V

    goto :goto_0

    .line 84
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "stop() is invoked in not running."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 86
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
