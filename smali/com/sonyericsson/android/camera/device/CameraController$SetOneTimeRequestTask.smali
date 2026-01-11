.class Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
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

    .line 4733
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4734
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 4735
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    .line 4736
    new-instance p3, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback-IA;)V

    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    .line 4737
    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->mTag:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .locals 8

    .line 4762
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4763
    const-string p0, "SetOneTimeRequestTask : mPreviewSurface is null."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 4766
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4767
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 4768
    const-string p0, "SetOneTimeRequestTask : mPreviewSurface is invalid.(before creating capture request)"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 4774
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmOutputConfiguration(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmOutputConfiguration(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4775
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmOutputConfiguration(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    .line 4777
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    new-array v4, v3, [Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmOutputConfiguration(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v5

    aput-object v5, v4, v2

    .line 4778
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 4777
    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraCaptureSession;->finalizeOutputConfigurations(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4788
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmOutputConfiguration(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/OutputConfiguration;)V

    goto :goto_0

    .line 4780
    :catch_0
    const-string v0, "SetOneTimeRequestTask: finalizeOutputConfigurations failed."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 4782
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4783
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 4784
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 4782
    invoke-static {v0, v1, p0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$monCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void

    .line 4792
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4793
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmRecordingSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4794
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->mTag:Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmRecordingSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/view/Surface;

    aput-object v5, v7, v2

    aput-object v6, v7, v3

    const/4 v5, 0x3

    invoke-virtual {v0, v1, v5, v4, v7}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;ILjava/lang/Object;[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    .line 4799
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 4800
    const-string v0, "SetOneTimeRequestTask, CreateCaptureRequest video stream"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_1

    .line 4803
    :cond_3
    const-string v0, "SetOneTimeRequestTask, CreateCaptureRequest video surface is null during recording"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_1

    .line 4806
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->mTag:Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v5

    new-array v6, v3, [Landroid/view/Surface;

    aput-object v5, v6, v2

    invoke-virtual {v0, v1, v3, v4, v6}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;ILjava/lang/Object;[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    :cond_5
    :goto_1
    if-nez v1, :cond_6

    .line 4813
    const-string p0, "SetOneTimeRequestTask : CaptureRequest cannot be created."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 4818
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4819
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 4820
    const-string p0, "SetOneTimeRequestTask : mPreviewSurface is invalid.(before performing capture)"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 4826
    :cond_7
    :try_start_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_8

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "capture()"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4827
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v3

    .line 4829
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v3

    .line 4827
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 4830
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 4831
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureRequestDumper(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->update(Landroid/hardware/camera2/CaptureRequest;)V

    .line 4832
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureRequestDumper(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->dump()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 4855
    const-string v0, "Failed in SetOneTimeRequestTask."

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception v0

    .line 4836
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isIgnoreCameraError()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4837
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_2

    .line 4839
    :cond_9
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_a

    .line 4840
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 4841
    const-string p0, "SetOneTimeRequestTask : mPreviewSurface is invalid.(after performing capture)"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_3

    .line 4844
    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed in SetOneTimeRequestTask by CameraAccessException. Reason:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4847
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4838
    :cond_b
    :goto_2
    const-string p0, "Failed in SetOneTimeRequestTask"

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_3
    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 3

    .line 4742
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4754
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed due to wrong status in SetOneTimeRequestTask. status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4756
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
