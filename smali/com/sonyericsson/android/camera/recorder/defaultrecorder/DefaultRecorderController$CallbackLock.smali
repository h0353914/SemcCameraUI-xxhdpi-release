.class public Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;
.super Ljava/lang/Object;
.source "DefaultRecorderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackLock"
.end annotation


# instance fields
.field private mLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 412
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 426
    monitor-enter p0

    const/4 v0, 0x0

    .line 427
    :try_start_0
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 428
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 2

    .line 415
    monitor-enter p0

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    const-string v0, "requestLock() Lock object already exists."

    .line 417
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 421
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->mLatch:Ljava/util/concurrent/CountDownLatch;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 422
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unlock()V
    .locals 1

    const-string v0, "unlock() E"

    .line 432
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->access$000(Ljava/lang/String;)V

    .line 434
    monitor-enter p0

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_0

    .line 436
    monitor-exit p0

    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v0, 0x0

    .line 439
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 440
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "unlock() X"

    .line 441
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->access$000(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 440
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
