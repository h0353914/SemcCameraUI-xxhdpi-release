.class Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;
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
    name = "OpenCameraTask"
.end annotation


# instance fields
.field private final mFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 461
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 462
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->mFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 463
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->OPEN_CAMERA_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->setPerformancefLog(Lcom/sonyericsson/android/camera/util/PerfLog;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .locals 0

    .line 456
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V

    return-void
.end method

.method private isPreProcessing()Z
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 589
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .locals 8

    .line 483
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->CAMERA_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setPerformed(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;)V

    .line 485
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    .line 487
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->mFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-eq v1, v2, :cond_0

    .line 488
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onOpenCameraRequested(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 491
    :cond_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    new-array v1, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OpenCameraTask invoked cameraId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 493
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    new-instance v4, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    invoke-static {v1, v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1102(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

    .line 495
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    .line 496
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 497
    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 498
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1300(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;

    move-result-object v6

    .line 495
    invoke-virtual {v1, v4, v5, v6}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->awaitLoadSettingsThread()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "OpenCameraTask() : Failed to load setting."

    .line 511
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->access$1600(Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)V

    .line 513
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 514
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 515
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 513
    invoke-static {v0, v1, p0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1500(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void

    .line 520
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1700(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v1

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x2

    .line 521
    invoke-static {v5}, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants$JpegQuality;->getPlatformQualityFromCameraProfile(I)I

    move-result v5

    int-to-byte v5, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    .line 520
    invoke-virtual {v1, v4, v5}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 525
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1802(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 526
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1800(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, "OpenCameraTask() : Failed to open camera."

    .line 528
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 530
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 531
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 529
    invoke-static {v0, v1, p0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1500(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void

    .line 536
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 539
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->mFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-eq v1, v4, :cond_4

    move v1, v3

    goto :goto_0

    .line 542
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isNeedCreatePreviewSession()Z

    move-result v1

    .line 545
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string p0, "OpenCameraTask() : CloseCameraTask() is already requested."

    .line 546
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 551
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->isPreProcessing()Z

    move-result v4

    if-nez v4, :cond_6

    .line 552
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->prepareCaptureImageReader()V

    .line 555
    :cond_6
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    if-eqz v1, :cond_7

    .line 558
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/device/CameraController;->createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    .line 561
    :cond_7
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->mFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne v1, v4, :cond_8

    .line 563
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onOpenCameraRequested(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 576
    :cond_8
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 578
    new-instance v1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance v4, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    sget-object v5, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->POWER_ON:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    invoke-direct {v4, v5}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    .line 579
    invoke-virtual {v1, v4}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    .line 580
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 581
    new-instance v1, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/sonyericsson/cameracommon/status/global/BuiltInCameraIds;

    new-array v3, v3, [Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 582
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/status/global/BuiltInCameraIds;-><init>([Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    invoke-virtual {v1, p0}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 583
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    :cond_9
    return-void

    :catch_0
    move-exception v0

    const-string v1, "OpenCameraTask() : Failed by CameraAccessException"

    .line 501
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 502
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 503
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 504
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 502
    invoke-static {v0, v1, p0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1500(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 2

    .line 468
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 469
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "OpenCameraTask : CloseCameraTask is already requested."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return v1

    .line 473
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 474
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "OpenCameraTask : should not open because of error caused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
