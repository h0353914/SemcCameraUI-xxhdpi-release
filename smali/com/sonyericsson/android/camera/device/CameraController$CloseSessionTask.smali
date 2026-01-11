.class Lcom/sonyericsson/android/camera/device/CameraController$CloseSessionTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseSessionTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 4932
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4933
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$CloseSessionTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$CloseSessionTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .locals 4

    .line 4964
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    const/4 v0, 0x0

    .line 4966
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4967
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "stopRepeating()"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4968
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 4969
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isSnapshotRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4970
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 4972
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4977
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 4978
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmCaptureRequestDumper(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 4975
    :try_start_1
    const-string v2, "CloseSessionTask: Close session failed: "

    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 4977
    :goto_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 4978
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmCaptureRequestDumper(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;)V

    .line 4979
    throw v1
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 4

    .line 4938
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 4948
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CloseSessionTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4949
    const-string v0, "CloseSessionTask : CloseCameraTask is already requested."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4951
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CloseSessionTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4952
    const-string p0, "CloseSessionTask : Could not execute due to error caused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return v1

    .line 4956
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed due to wrong status in CloseSessionTask. status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4958
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return v2

    :cond_4
    return v1
.end method
