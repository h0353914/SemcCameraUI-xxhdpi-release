.class Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "BypassCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/BypassCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeBypassCameraModeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 1375
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1376
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method private createSuperSlowRecordingParameters()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;
    .locals 4

    .line 1475
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    .line 1476
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;

    .line 1478
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v2

    .line 1477
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSuperSlowFrameRate(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)J

    move-result-wide v1

    long-to-int v1, v1

    .line 1480
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    .line 1479
    invoke-static {v2, p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSuperSlowFrameNum(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)J

    move-result-wide v2

    long-to-int p0, v2

    invoke-direct {v0, v1, p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;-><init>(II)V

    return-object v0
.end method

.method private getSuperSlowVideoMode(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;
    .locals 2

    .line 1464
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne p1, p0, :cond_0

    .line 1465
    sget-object p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;->SUPER_SLOW_MOTION:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;

    return-object p0

    .line 1466
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne p1, p0, :cond_1

    .line 1467
    sget-object p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;->SUPER_SLOW_SHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;

    return-object p0

    .line 1470
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "value is not super slow, value = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .locals 10

    .line 1391
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    .line 1392
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v1

    .line 1394
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1395
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "changeToPhotoMode() preview:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1396
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " picture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1397
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " captureNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    .line 1398
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getCaptureNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1395
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1400
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmBypassCamera(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;->NORMAL:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1401
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mtoAndroidUtilSize(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1402
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mtoAndroidUtilSize(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v0

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    .line 1403
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getCaptureNum()I

    move-result v4

    .line 1400
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->changeToPhotoMode(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;Landroid/util/Size;Landroid/util/Size;I)V
    :try_end_0
    .catch Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1405
    :catch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mhandleTimeout(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1408
    :goto_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setConfig() climax:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmBypassCameraParameters(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    move-result-object v1

    const-string v2, "climax-recognition"

    .line 1409
    invoke-virtual {v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1408
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1410
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmBypassCamera(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmBypassCameraParameters(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->setConfig(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;)V

    goto/16 :goto_2

    .line 1412
    :cond_2
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    const-string v3, " framerate:"

    const-string v4, " video:"

    const-string v5, " preview:"

    if-eq v1, v2, :cond_5

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne v1, v2, :cond_3

    goto/16 :goto_1

    .line 1438
    :cond_3
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    .line 1439
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v2

    .line 1440
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1441
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v7

    .line 1442
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object v8

    .line 1443
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v9

    .line 1440
    invoke-static {v6, v7, v8, v9}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mgetVideoMode(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    move-result-object v6

    .line 1444
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result v2

    .line 1446
    sget-boolean v7, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "changeToVideoMode() mode:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1448
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1449
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 1446
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1452
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmBypassCamera(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1454
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mtoAndroidUtilSize(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1455
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mtoAndroidUtilSize(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v1

    .line 1452
    invoke-virtual {v3, v6, v0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->changeToVideoMode(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;Landroid/util/Size;Landroid/util/Size;I)V
    :try_end_1
    .catch Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 1458
    :catch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mhandleTimeout(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    goto/16 :goto_2

    .line 1414
    :cond_5
    :goto_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->getSuperSlowVideoMode(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;

    move-result-object v2

    .line 1415
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    .line 1416
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->createSuperSlowRecordingParameters()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;

    move-result-object v6

    .line 1417
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-static {v1, v7}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result v7

    .line 1419
    sget-boolean v8, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v8, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "changeToSuperSlowMode() mode:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1421
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1422
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " superSlowFps:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v6, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;->fps:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " superSlowFrameNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v6, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;->frameNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 1419
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1427
    :cond_6
    :try_start_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmBypassCamera(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1429
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mtoAndroidUtilSize(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1430
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mtoAndroidUtilSize(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v4

    move-object v1, v3

    move-object v3, v0

    move v5, v7

    .line 1427
    invoke-virtual/range {v1 .. v6}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->changeToSuperSlowMode(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;Landroid/util/Size;Landroid/util/Size;ILcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;)V
    :try_end_2
    .catch Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 1434
    :catch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mhandleTimeout(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :goto_2
    return-void
.end method

.method public verifyCameraDeviceStatus()Z
    .locals 2

    .line 1381
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isOpenBypassCameraTaskPerformed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1383
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseBypassCameraTaskPerformed()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
