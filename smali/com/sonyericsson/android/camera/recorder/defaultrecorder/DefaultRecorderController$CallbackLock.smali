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

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 410
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 424
    monitor-enter p0

    const/4 v0, 0x0

    .line 425
    :try_start_0
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 426
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
    .locals 3

    .line 413
    monitor-enter p0

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 415
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "requestLock() Lock object already exists."

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 419
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->mLatch:Ljava/util/concurrent/CountDownLatch;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 420
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unlock()V
    .locals 1

    .line 430
    const-string/jumbo v0, "unlock() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->-$$Nest$smtrace(Ljava/lang/String;)V

    .line 432
    monitor-enter p0

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_0

    .line 434
    monitor-exit p0

    return-void

    .line 436
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v0, 0x0

    .line 437
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 438
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    const-string/jumbo p0, "unlock() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->-$$Nest$smtrace(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 438
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
