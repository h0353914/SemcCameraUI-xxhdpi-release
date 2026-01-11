.class public Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker;
.super Ljava/lang/Object;
.source "AudioResourceChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$AudioResourceCheckerListener;
    }
.end annotation


# static fields
.field private static final MICROPHONE_ACTIVE_KEY:Ljava/lang/String; = "is_microphone_active"

.field private static final MICROPHONE_ACTIVE_VALUE:Ljava/lang/String; = "is_microphone_active=1"

.field public static final TAG:Ljava/lang/String; = "AudioResourceChecker"

.field private static final THREAD_NAME:Ljava/lang/String; = "AudioResChecker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAudioResource(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$AudioResourceCheckerListener;)V
    .locals 2

    .line 113
    const-string v0, "AudioResChecker"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$1;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$AudioResourceCheckerListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 129
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public static isAudioResourceAvailable(Lcom/sonyericsson/android/camera/CameraActivity;)Z
    .locals 0

    .line 47
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker;->isAudioResourceAvailableCheckImmediately(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 52
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker;->isAudioResourceAvailableCheckWithAudioRecord()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized isAudioResourceAvailableCheckImmediately(Landroid/content/Context;)Z
    .locals 4

    const-class v0, Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker;

    monitor-enter v0

    .line 143
    :try_start_0
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 144
    const-string v1, "is_microphone_active"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 147
    const-string v1, "is_microphone_active=1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    .line 149
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    new-array p0, v2, [Ljava/lang/String;

    const-string v2, "AudioResChecker : Mic unavailable."

    aput-object v2, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_0
    monitor-exit v0

    return v1

    .line 154
    :cond_1
    :try_start_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_2

    new-array p0, v2, [Ljava/lang/String;

    const-string v3, "AudioResChecker : Mic maybe available."

    aput-object v3, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized isAudioResourceAvailableCheckWithAudioRecord()Z
    .locals 12

    const-string v0, "isAudioResourceAvailableCheckWithAudioRecord() is "

    const-class v1, Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    new-array v2, v4, [Ljava/lang/String;

    const-string v5, "isAudioResourceAvailableCheckWithAudioRecord() called "

    aput-object v5, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_0
    const/4 v2, 0x0

    .line 74
    :try_start_1
    new-instance v11, Landroid/media/AudioRecord;

    const/16 v5, 0xc

    const/4 v6, 0x2

    const v7, 0xbb80

    .line 75
    invoke-static {v7, v5, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    const/16 v6, 0x5a00

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v6, 0x5

    const v7, 0xbb80

    const/16 v8, 0xc

    const/4 v9, 0x2

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    :try_start_2
    invoke-virtual {v11}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 80
    invoke-virtual {v11}, Landroid/media/AudioRecord;->startRecording()V

    .line 83
    invoke-virtual {v11}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v2, v4, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    .line 92
    :goto_0
    :try_start_3
    invoke-virtual {v11}, Landroid/media/AudioRecord;->stop()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    move-object v6, v5

    move v5, v2

    move-object v2, v11

    goto :goto_3

    :cond_2
    move v2, v3

    .line 101
    :goto_1
    :try_start_4
    invoke-virtual {v11}, Landroid/media/AudioRecord;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v11

    goto :goto_5

    :catch_1
    move-exception v5

    move-object v6, v5

    move-object v2, v11

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v5

    move-object v6, v5

    :goto_2
    move v5, v3

    .line 95
    :goto_3
    :try_start_5
    sget-boolean v7, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v7, :cond_3

    const-string v7, "isAudioResourceAvailableCheckWithAudioRecord() exception occurred: "

    invoke-static {v7, v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    if-eqz v2, :cond_4

    .line 101
    :try_start_6
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    :cond_4
    move v2, v5

    .line 106
    :goto_4
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v5, :cond_5

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 108
    :cond_5
    monitor-exit v1

    return v2

    :goto_5
    if-eqz v2, :cond_6

    .line 101
    :try_start_7
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 104
    :cond_6
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method
