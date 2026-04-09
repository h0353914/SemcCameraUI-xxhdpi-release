.class Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "BypassCameraController.java"


# annotations
.annotation build Landroid/support/annotation/WorkerThread;
.end annotation

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

    .line 1332
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1333
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V
    .locals 0

    .line 1330
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method private createSuperSlowRecordingParameters()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;
    .locals 4

    .line 1432
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1400(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    .line 1433
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;

    .line 1435
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v2

    .line 1434
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSuperSlowFrameRate(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)J

    move-result-wide v1

    long-to-int v1, v1

    .line 1437
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    .line 1436
    invoke-static {v2, p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSuperSlowFrameNum(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)J

    move-result-wide v2

    long-to-int p0, v2

    invoke-direct {v0, v1, p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;-><init>(II)V

    return-object v0
.end method

.method private getSuperSlowVideoMode(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;
    .locals 2

    .line 1421
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne p1, p0, :cond_0

    .line 1422
    sget-object p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;->SUPER_SLOW_MOTION:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;

    return-object p0

    .line 1423
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne p1, p0, :cond_1

    .line 1424
    sget-object p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;->SUPER_SLOW_SHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;

    return-object p0

    .line 1427
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value is not super slow, value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .locals 9

    .line 1348
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1400(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    .line 1349
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v1

    .line 1351
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1400(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 1352
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeToPhotoMode() preview:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " picture:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " captureNum:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    .line 1355
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getCaptureNum()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1352
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1357
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;->NORMAL:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1358
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2800(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1359
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2800(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v0

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    .line 1360
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getCaptureNum()I

    move-result v6

    .line 1357
    invoke-virtual {v1, v2, v5, v0, v6}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->changeToPhotoMode(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;Landroid/util/Size;Landroid/util/Size;I)V
    :try_end_0
    .catch Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1362
    :catch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2900(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1365
    :goto_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    new-array v0, v4, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConfig() climax:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1366
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2000(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    move-result-object v2

    const-string v4, "climax-recognition"

    invoke-virtual {v2, v4}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1365
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1367
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2000(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->setConfig(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;)V

    goto/16 :goto_2

    .line 1369
    :cond_2
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-eq v1, v2, :cond_5

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne v1, v2, :cond_3

    goto/16 :goto_1

    .line 1395
    :cond_3
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    .line 1396
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v2

    .line 1397
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1398
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v6

    .line 1399
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object v7

    .line 1400
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v8

    .line 1397
    invoke-static {v5, v6, v7, v8}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2700(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    move-result-object v5

    .line 1401
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result v2

    .line 1403
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_4

    new-array v4, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeToVideoMode() mode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " preview:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " video:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1406
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " framerate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    .line 1403
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1409
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1411
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2800(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1412
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2800(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v1

    .line 1409
    invoke-virtual {v3, v5, v0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->changeToVideoMode(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;Landroid/util/Size;Landroid/util/Size;I)V
    :try_end_1
    .catch Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 1415
    :catch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2900(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    goto/16 :goto_2

    .line 1371
    :cond_5
    :goto_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->getSuperSlowVideoMode(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;

    move-result-object v2

    .line 1372
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    .line 1373
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->createSuperSlowRecordingParameters()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;

    move-result-object v6

    .line 1374
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-static {v1, v5}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result v5

    .line 1376
    sget-boolean v7, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v7, :cond_6

    new-array v4, v4, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeToSuperSlowMode() mode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " preview:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " video:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " framerate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " superSlowFps:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;->fps:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " superSlowFrameNum:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;->frameNum:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    .line 1376
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1384
    :cond_6
    :try_start_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1386
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2800(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1387
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2800(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v4

    move-object v1, v3

    move-object v3, v0

    .line 1384
    invoke-virtual/range {v1 .. v6}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->changeToSuperSlowMode(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;Landroid/util/Size;Landroid/util/Size;ILcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;)V
    :try_end_2
    .catch Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 1391
    :catch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2900(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :goto_2
    return-void
.end method

.method public verifyCameraDeviceStatus()Z
    .locals 2

    .line 1338
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isOpenBypassCameraTaskPerformed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1340
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
