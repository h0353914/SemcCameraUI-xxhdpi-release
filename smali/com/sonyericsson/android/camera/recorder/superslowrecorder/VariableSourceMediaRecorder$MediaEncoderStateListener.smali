.class Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;
.super Ljava/lang/Object;
.source "VariableSourceMediaRecorder.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaEncoderStateListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$StartNotificationTask;,
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$FinishNotificationTask;,
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$ProgressNotificationTask;,
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$ErrorNotificationTask;
    }
.end annotation


# instance fields
.field private mLastNotifyProgressMillis:J

.field final synthetic this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)V
    .locals 2

    .line 534
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 535
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;->mLastNotifyProgressMillis:J

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->-$$Nest$fgetmWaitUntilStarted(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 626
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->-$$Nest$fgetmWaitUntilStoped(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 627
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->-$$Nest$fgetmEncoder(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->stop()V

    const v0, 0xf4240

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 631
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->-$$Nest$fputmIsNeedToDeleteFile(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;Z)V

    .line 637
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$ErrorNotificationTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$ErrorNotificationTask;-><init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$ErrorNotificationTask-IA;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFinished(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->-$$Nest$fgetmVideoSavingRequest(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->-$$Nest$fgetmOutputPath(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->deleteVideoFile(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;)V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->-$$Nest$fputmResult(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;Z)V

    .line 553
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->-$$Nest$fgetmWaitUntilStoped(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 554
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$FinishNotificationTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$FinishNotificationTask;-><init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$FinishNotificationTask-IA;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMaxDurationReached()V
    .locals 2

    .line 572
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VariableSourceMediaRecorder"

    const-string v1, "reached max duration."

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 573
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->-$$Nest$fgetmOnMaxReachedListener(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;->onMaxDurationReached()V

    return-void
.end method

.method public onMaxFileSizeReached()V
    .locals 2

    .line 578
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VariableSourceMediaRecorder"

    const-string v1, "reached max size."

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 579
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->-$$Nest$fgetmOnMaxReachedListener(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;->onMaxFileSizeReached()V

    return-void
.end method

.method public declared-synchronized onProgress(J)V
    .locals 4

    monitor-enter p0

    const-wide/16 v0, 0x3e8

    .line 561
    :try_start_0
    div-long/2addr p1, v0

    .line 562
    iget-wide v2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;->mLastNotifyProgressMillis:J

    sub-long v2, p1, v2

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    .line 564
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;->mLastNotifyProgressMillis:J

    .line 565
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$ProgressNotificationTask;

    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;->mLastNotifyProgressMillis:J

    invoke-direct {p2, p0, v0, v1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$ProgressNotificationTask;-><init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;J)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onStarted()V
    .locals 3

    .line 541
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->-$$Nest$fgetmWaitUntilStarted(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 542
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$StartNotificationTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$StartNotificationTask;-><init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$StartNotificationTask-IA;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStorageFull()V
    .locals 3

    .line 617
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->-$$Nest$fgetmEncoder(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->stop()V

    .line 618
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$ErrorNotificationTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$ErrorNotificationTask;-><init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$ErrorNotificationTask-IA;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
