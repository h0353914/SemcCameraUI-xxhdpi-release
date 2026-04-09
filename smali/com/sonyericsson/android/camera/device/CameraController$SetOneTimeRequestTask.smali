.class Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;
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
    name = "SetOneTimeRequestTask"
.end annotation


# instance fields
.field private final mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

.field private final mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

.field private final mTag:Ljava/lang/Object;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;)V
    .locals 1

    .line 1570
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1571
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1572
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    .line 1573
    new-instance p3, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    .line 1574
    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->mTag:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .locals 0

    .line 1564
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .locals 7

    .line 1599
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2500(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "SetOneTimeRequestTask : mPreviewSurface is null."

    .line 1600
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 1603
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2500(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1604
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    const-string p0, "SetOneTimeRequestTask : mPreviewSurface is invalid.(before creating capture request)"

    .line 1605
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 1611
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1612
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2500(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    .line 1614
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    new-array v3, v2, [Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1615
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1614
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCaptureSession;->finalizeOutputConfigurations(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1625
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2402(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/OutputConfiguration;)Landroid/hardware/camera2/params/OutputConfiguration;

    goto :goto_0

    :catch_0
    const-string v0, "SetOneTimeRequestTask: finalizeOutputConfigurations failed."

    .line 1617
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1619
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1620
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 1621
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 1619
    invoke-static {v0, v1, p0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1500(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void

    .line 1628
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1629
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1800(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->mTag:Ljava/lang/Object;

    new-array v5, v2, [Landroid/view/Surface;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1632
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2500(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v6

    aput-object v6, v5, v1

    .line 1628
    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;ILjava/lang/Object;[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p0, "SetOneTimeRequestTask : CaptureRequest cannot be created."

    .line 1634
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 1639
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2500(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1640
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    const-string p0, "SetOneTimeRequestTask : mPreviewSurface is invalid.(before performing capture)"

    .line 1641
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 1647
    :cond_4
    :try_start_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "capture()"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1648
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1650
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v3

    .line 1648
    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1651
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 1652
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2300(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->update(Landroid/hardware/camera2/CaptureRequest;)V

    .line 1653
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2300(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->dump()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    const-string v0, "Failed in SetOneTimeRequestTask."

    .line 1676
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    .line 1657
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isIgnoreCameraError()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1658
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    .line 1660
    :cond_6
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2500(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1661
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    const-string p0, "SetOneTimeRequestTask : mPreviewSurface is invalid.(after performing capture)"

    .line 1662
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_2

    .line 1665
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed in SetOneTimeRequestTask by CameraAccessException. Reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_1
    const-string p0, "Failed in SetOneTimeRequestTask"

    .line 1659
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_2
    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 3

    .line 1579
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$2;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1591
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed due to wrong status in SetOneTimeRequestTask. status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1593
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
