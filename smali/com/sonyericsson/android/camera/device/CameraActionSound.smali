.class public Lcom/sonyericsson/android/camera/device/CameraActionSound;
.super Ljava/lang/Object;
.source "CameraActionSound.java"


# static fields
.field private static final RELEASE_MEDIA_ACTION_SOUND_DELAY_MILLIS:I = 0xfa0

.field public static final SHUTTER_CLICK:I = 0x0

.field public static final START_VIDEO_RECORDING:I = 0x2

.field public static final STOP_VIDEO_RECORDING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CameraActionSound"

.field private static final THREAD_NAME:Ljava/lang/String; = "CAS#Main"

.field private static final THREAD_NAME_ONETIME:Ljava/lang/String; = "CAS#Onetime"


# instance fields
.field private mIsReleased:Z

.field private mMediaActionSound:Landroid/media/MediaActionSound;

.field private mSoundExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 64
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mMediaActionSound:Landroid/media/MediaActionSound;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mIsReleased:Z

    const-string v0, "CAS#Main"

    const/16 v1, 0xa

    .line 67
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildScheduledExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private static releaseDelay(Landroid/media/MediaActionSound;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 3

    const-string v0, "invoked"

    .line 177
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraActionSound$3;-><init>(Landroid/media/MediaActionSound;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xfa0

    invoke-interface {p1, v0, v1, v2, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public load(I)V
    .locals 4

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked isReleased:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mIsReleased:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 83
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mIsReleased:Z

    if-eqz v0, :cond_1

    .line 84
    monitor-exit p0

    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraActionSound$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraActionSound$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraActionSound;Landroid/media/MediaActionSound;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 94
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public play(IZ)V
    .locals 4

    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked isReleased:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mIsReleased:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sync:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 132
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mIsReleased:Z

    if-eqz v0, :cond_1

    .line 133
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    .line 134
    invoke-virtual {v0, p1}, Landroid/media/MediaActionSound;->play(I)V

    const-string p1, "CAS#Onetime"

    .line 136
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildScheduledExecutor(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 137
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->releaseDelay(Landroid/media/MediaActionSound;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 138
    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    const/4 p1, 0x0

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 141
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraActionSound$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraActionSound$2;-><init>(Lcom/sonyericsson/android/camera/device/CameraActionSound;Landroid/media/MediaActionSound;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 148
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 151
    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "play(): Failed to wait for completion."

    .line 153
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 148
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 5

    .line 164
    monitor-enter p0

    const/4 v0, 0x1

    .line 165
    :try_start_0
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked isReleased:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mIsReleased:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 166
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mIsReleased:Z

    if-nez v1, :cond_0

    .line 167
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mIsReleased:Z

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mMediaActionSound:Landroid/media/MediaActionSound;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->releaseDelay(Landroid/media/MediaActionSound;Ljava/util/concurrent/ScheduledExecutorService;)V

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 170
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 171
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 173
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
