.class Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation build Landroid/support/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopPreviewTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 1687
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1688
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .locals 0

    .line 1686
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .locals 3

    .line 1722
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    const/4 v0, 0x0

    .line 1724
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1725
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "stopRepeating()"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1726
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 1727
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isSnapshotRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1728
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 1730
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1735
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2202(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 1736
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2302(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    .line 1737
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2402(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/OutputConfiguration;)Landroid/hardware/camera2/params/OutputConfiguration;

    .line 1739
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2502(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)Landroid/view/Surface;

    .line 1740
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2602(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/ImageRetriever;)Lcom/sonyericsson/android/camera/device/ImageRetriever;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "StopPreviewTask: Close session failed: "

    .line 1733
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1743
    :goto_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 1735
    :goto_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2202(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 1736
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2302(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    .line 1737
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2402(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/OutputConfiguration;)Landroid/hardware/camera2/params/OutputConfiguration;

    .line 1739
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2502(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)Landroid/view/Surface;

    .line 1740
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2602(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/ImageRetriever;)Lcom/sonyericsson/android/camera/device/ImageRetriever;

    .line 1741
    throw v1
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 3

    .line 1693
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$2;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1714
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed due to wrong status in StopPreviewTask. status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1716
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1696
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "StopPreviewTask : CloseCameraTask is already requested."

    .line 1697
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1699
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return v1

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 1710
    :pswitch_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
