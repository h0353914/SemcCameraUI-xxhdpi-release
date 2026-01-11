.class Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseCameraTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 2934
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2935
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .locals 5

    .line 2948
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CloseCameraTask() E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2949
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->CAMERA_CLOSED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setPerformed(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;)V

    .line 2950
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->releaseRecorderOnCameraClosed()V

    .line 2952
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CloseCameraTask() : Current device status = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2953
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2952
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2955
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    goto/16 :goto_2

    .line 2964
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2965
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "stopRepeating()"

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2966
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 2967
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isSnapshotRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2968
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 2970
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2983
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 2984
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmCaptureRequestDumper(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;)V

    .line 2985
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmOutputConfiguration(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/OutputConfiguration;)V

    .line 2987
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)V

    .line 2988
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmRecordingSurface(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)V

    .line 2989
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmCaptureImageRetriever(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/ImageRetriever;)V

    .line 2990
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->releaseEncoder()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    .line 2976
    :try_start_1
    const-string v1, "CloseCameraTask() : Failed by IllegalStateException"

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2978
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isIgnoreCameraError()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2979
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 2980
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 2973
    const-string v1, "CloseCameraTask() : Failed by CameraAccessException"

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2993
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mreleaseStreamingImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 2994
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mreleaseVideoImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 2995
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mreleaseCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 2996
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mreleaseZslImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 2997
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mreleaseMultiFramePreCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 2998
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mreleaseReprocessDataFactory(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 2999
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mreleaseImageWriter(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 3000
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mrecycleData(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 3002
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3003
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 3004
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraDevice;)V

    .line 3005
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CloseCameraTask() : close camera : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmDeviceId(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3006
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmDeviceId(Lcom/sonyericsson/android/camera/device/CameraController;Ljava/lang/String;)V

    .line 3008
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 3018
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mgetApplicationContext(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3020
    new-instance v1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v3

    .line 3021
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getFacingId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 3022
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->putDefaultAll()Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    .line 3023
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 3024
    new-instance v1, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;-><init>(Landroid/content/Context;)V

    .line 3025
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;->putDefaultAll()Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    .line 3026
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 3029
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    .line 3030
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne v0, v1, :cond_9

    goto :goto_3

    .line 3034
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    goto :goto_4

    .line 3032
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    .line 3038
    :goto_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmStateCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->-$$Nest$mwaitCameraClosed(Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)V

    .line 3039
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmStateCallback(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)V

    .line 3040
    invoke-static {}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->getInstance()Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->unBindService()V

    .line 3041
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_b

    const-string p0, "CloseCameraTask() X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_b
    return-void

    .line 2983
    :goto_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 2984
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmCaptureRequestDumper(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;)V

    .line 2985
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmOutputConfiguration(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/OutputConfiguration;)V

    .line 2987
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)V

    .line 2988
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmRecordingSurface(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)V

    .line 2989
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmCaptureImageRetriever(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/ImageRetriever;)V

    .line 2990
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->releaseEncoder()V

    .line 2991
    throw v0
.end method

.method public postCameraDeviceAccess()V
    .locals 0

    .line 3046
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 0

    .line 2940
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isOpenCameraTaskPerformed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
