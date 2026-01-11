.class Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateCaptureSessionTask"
.end annotation


# instance fields
.field private mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)V
    .locals 0

    .line 3428
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3429
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 3430
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    .line 3431
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->CREATE_CAPTURE_SESSION_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->setPerformancefLog(Lcom/sonyericsson/android/camera/util/PerfLog;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)V

    return-void
.end method

.method private isSlowMotion()Z
    .locals 0

    .line 3773
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$misSlowMotion(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .locals 13

    .line 3481
    const-string v0, "Failed in createCaptureSession"

    const-string v1, "Failed in createConstrainedHighSpeedCaptureSession"

    .line 0
    const-string v2, "[Create Session] set operation mode as "

    const-string v3, "[Create Session] Create normal session for video with op:"

    .line 3481
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CreateCaptureSessionTask invoked isVideo:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v5

    .line 3482
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 3481
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3483
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v4

    .line 3484
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v6, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 3485
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CreateCaptureSessionTask executed request:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3492
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$misNeedCapturedFrame(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3493
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3494
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 3495
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 3493
    invoke-static {v5, v6, v7}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mprepareStreamingImageReader(Lcom/sonyericsson/android/camera/device/CameraController;II)V

    goto :goto_0

    .line 3497
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mreleaseStreamingImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 3501
    :goto_0
    sget-object v5, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_HDR:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$mgetSessionType(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v6

    if-ne v5, v6, :cond_3

    .line 3502
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 3503
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 3502
    invoke-static {v5, v6, v7}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mprepareStreamingImageReader(Lcom/sonyericsson/android/camera/device/CameraController;II)V

    .line 3506
    :cond_3
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_6

    .line 3507
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 3508
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 3509
    new-instance v10, Landroid/util/Size;

    invoke-direct {v10, v5, v9}, Landroid/util/Size;-><init>(II)V

    .line 3510
    iget-object v11, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v11, v5, v9}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mprepareVideoImageReader(Lcom/sonyericsson/android/camera/device/CameraController;II)V

    .line 3512
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 3513
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 3512
    invoke-virtual {v5, v9, v11}, Lcom/sonyericsson/android/camera/device/CameraController;->prepareCaptureImageReader(II)V

    .line 3515
    :try_start_0
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isFhd60Fps()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v5

    .line 3516
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isScreenRecording()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3517
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "Can not create 4k / FHD 60fps video surface during screen recording"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 3518
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onRecordingRestricted()V

    return-void

    .line 3522
    :cond_5
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmProfile(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v9

    invoke-static {v9}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->setupRecordingSurface(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Landroid/view/Surface;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmRecordingSurface(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3532
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mreleaseZslImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 3533
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mreleaseMultiFramePreCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 3534
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mreleaseReprocessDataFactory(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 3535
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mreleaseImageWriter(Lcom/sonyericsson/android/camera/device/CameraController;)V

    goto/16 :goto_4

    .line 3524
    :catch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3525
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 3526
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CREATE_PERSIST_SURFACE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 3524
    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$monCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    .line 3528
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmOneShotCaptureTaskPendingList(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 3529
    const-string p0, "Can not create recording surface"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    .line 3537
    :cond_6
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mreleaseVideoImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 3538
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmRecordingSurface(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)V

    .line 3539
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v9

    iget-object v10, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-static {v10}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$mgetSessionType(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v10

    invoke-static {v5, v9, v10}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mgetReprocessStreamSize(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmReprocessStreamSize(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/graphics/Rect;)V

    .line 3541
    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

    iget-object v9, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-static {v9}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$mgetSessionType(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->ordinal()I

    move-result v9

    aget v5, v5, v9

    packed-switch v5, :pswitch_data_0

    .line 3560
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "unknown session type:"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-static {v9}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$mgetSessionType(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_1

    .line 3553
    :pswitch_0
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mreleaseMultiFramePreCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)V

    goto :goto_1

    .line 3547
    :pswitch_1
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mreleaseZslImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 3548
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmReprocessStreamSize(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v10, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v10}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmReprocessStreamSize(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/graphics/Rect;

    move-result-object v10

    .line 3549
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 3548
    invoke-virtual {v5, v9, v10}, Lcom/sonyericsson/android/camera/device/CameraController;->prepareMultiFramePreCaptureImageReader(II)V

    .line 3564
    :goto_1
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmMultiFramePreCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmZslImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v5

    if-eqz v5, :cond_7

    goto :goto_2

    .line 3568
    :cond_7
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmInputConfiguration(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/InputConfiguration;)V

    goto :goto_3

    .line 3565
    :cond_8
    :goto_2
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    new-instance v9, Landroid/hardware/camera2/params/InputConfiguration;

    iget-object v10, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v10}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmReprocessStreamSize(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/graphics/Rect;

    move-result-object v10

    .line 3566
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v11, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v11}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmReprocessStreamSize(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    const/16 v12, 0x23

    invoke-direct {v9, v10, v11, v12}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    invoke-static {v5, v9}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmInputConfiguration(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/InputConfiguration;)V

    .line 3571
    :goto_3
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v5

    .line 3572
    iget-object v9, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v9, v10, v5}, Lcom/sonyericsson/android/camera/device/CameraController;->prepareCaptureImageReader(II)V

    .line 3575
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v9, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-static {v9}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$misVideoHdr(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z

    move-result v9

    .line 3574
    invoke-static {v5, v9}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getSurfaceSize(Landroid/graphics/Rect;Z)Landroid/util/Size;

    move-result-object v10

    .line 3578
    :goto_4
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 3581
    :try_start_1
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 3585
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0, v6}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 3586
    throw v0

    .line 3585
    :catch_1
    :goto_5
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 3588
    :cond_9
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmCaptureRequestDumper(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;)V

    .line 3590
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    new-instance v9, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    iget-object v11, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v12

    invoke-direct {v9, v11, v12, v6}, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback-IA;)V

    invoke-static {v5, v9}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmConfigStateCallback(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;)V

    .line 3591
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmConfigStateCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$mgetSessionType(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->-$$Nest$msetSessionType(Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 3592
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmConfigStateCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->setOperationMode(I)V

    .line 3594
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->isSlowMotion()Z

    move-result v5

    const-string v6, "[Add Stream] mRecordingSurface"

    if-nez v5, :cond_1c

    .line 3595
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3596
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    new-instance v9, Landroid/hardware/camera2/params/OutputConfiguration;

    const-class v11, Landroid/view/SurfaceHolder;

    invoke-direct {v9, v10, v11}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    invoke-static {v5, v9}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmOutputConfiguration(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/OutputConfiguration;)V

    .line 3598
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmOutputConfiguration(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3599
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_a

    .line 3600
    const-string v5, "[Add Stream] mOutputConfiguration"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3603
    :cond_a
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmStreamingImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 3604
    new-instance v5, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v9, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v9}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmStreamingImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3605
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_b

    .line 3606
    const-string v5, "[Add Stream] mStreamingImageReader"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3609
    :cond_b
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmVideoThumbnailImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 3610
    new-instance v5, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v9, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v9}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmVideoThumbnailImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3611
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_c

    .line 3612
    const-string v5, "[Add Stream] mVideoThumbnailImageReader"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3616
    :cond_c
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmZslImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 3617
    new-instance v5, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v9, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v9}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmZslImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v9

    .line 3618
    invoke-virtual {v9}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 3617
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3619
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_d

    .line 3620
    const-string v5, "[Add Stream] mZslImageReader"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3624
    :cond_d
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmMultiFramePreCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 3625
    new-instance v5, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v9, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v9}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmMultiFramePreCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v9

    .line 3626
    invoke-virtual {v9}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 3625
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3627
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_e

    .line 3628
    const-string v5, "[Add Stream] mMultiFramePreCaptureImageReader"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3633
    :cond_e
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 3634
    new-instance v5, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v9, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v9}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v9

    .line 3635
    invoke-virtual {v9}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 3634
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3636
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_f

    .line 3637
    const-string v5, "[Add Stream] mCaptureImageReader"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3641
    :cond_f
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 3643
    new-instance v5, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v9, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v9}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmRecordingSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3645
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_10

    .line 3646
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3650
    :cond_10
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v5

    if-nez v5, :cond_17

    .line 3652
    :try_start_2
    new-instance v0, Landroid/hardware/camera2/params/SessionConfiguration;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSessionCallbackExecutor(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmConfigStateCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v4

    invoke-direct {v0, v7, v1, v3, v4}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 3655
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 3658
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmInputConfiguration(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 3659
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_11

    .line 3660
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "[Create Session] Create normal session with mInputConfiguration"

    aput-object v4, v3, v7

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3663
    :cond_11
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmInputConfiguration(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/params/SessionConfiguration;->setInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V

    goto :goto_6

    .line 3665
    :cond_12
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_13

    .line 3666
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "[Create Session] Create normal session without mInputConfiguration"

    aput-object v4, v3, v7

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3671
    :cond_13
    :goto_6
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$mgetOperationMode(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)I

    move-result v3

    .line 3672
    new-array v4, v8, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "set session mode as "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    .line 3674
    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$mgetSessionType(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    .line 3672
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3675
    sget-object v2, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_SESSION_OPERATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3676
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$mgetSessionType(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v2

    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_BOKEH:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    if-ne v2, v4, :cond_14

    .line 3677
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x4

    .line 3678
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3677
    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3679
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EXTENDED_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3680
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3679
    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_7

    .line 3682
    :cond_14
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3683
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3682
    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3684
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EXTENDED_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3685
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3684
    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3687
    :goto_7
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmConfigStateCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->setOperationMode(I)V

    .line 3689
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 3690
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception p0

    .line 3701
    const-string v0, "Failed in createConfigurations"

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_3
    move-exception v0

    .line 3693
    const-string v1, "createReprocessableCaptureSessionByConfigurations() : Failed in"

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3694
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isIgnoreCameraError()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3695
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_8

    .line 3698
    :cond_15
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_9

    .line 3696
    :cond_16
    :goto_8
    const-string p0, "Failed in createReprocessableCaptureSessionByConfigurations"

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9
    return-void

    .line 3708
    :cond_17
    :try_start_3
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$mgetOperationMode(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)I

    move-result v2

    .line 3709
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_18

    .line 3710
    new-array v5, v8, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v7

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3713
    :cond_18
    new-instance v3, Landroid/hardware/camera2/params/SessionConfiguration;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSessionCallbackExecutor(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmConfigStateCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v6

    invoke-direct {v3, v7, v1, v5, v6}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 3716
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 3718
    sget-object v5, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_SESSION_OPERATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3719
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 3718
    invoke-virtual {v1, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3720
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isFhd60Fps()Z

    move-result v5

    if-nez v5, :cond_19

    .line 3721
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3722
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFpsRange()Landroid/util/Range;

    move-result-object v4

    .line 3721
    invoke-virtual {v1, v5, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3724
    :cond_19
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmConfigStateCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->setOperationMode(I)V

    .line 3725
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 3726
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_c

    :catch_4
    move-exception p0

    .line 3736
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    :catch_5
    move-exception v1

    .line 3728
    const-string v2, "CreateCaptureSessionTask() : Failed by CameraAccessException"

    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3729
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isIgnoreCameraError()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 3730
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_a

    .line 3733
    :cond_1a
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto/16 :goto_c

    .line 3731
    :cond_1b
    :goto_a
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 3739
    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3740
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3741
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmRecordingSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3742
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_1d

    .line 3743
    const-string v2, "[Add Stream] mPreviewSurface"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3744
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3747
    :cond_1d
    :try_start_4
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_1e

    .line 3748
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "[Create Session] Create ConstrainedHighSpeedCaptureSession"

    aput-object v3, v2, v7

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3750
    :cond_1e
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmConfigStateCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v4

    .line 3751
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v4

    .line 3750
    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/camera2/CameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_c

    :catch_6
    move-exception p0

    .line 3767
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :catch_7
    move-exception v0

    .line 3753
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 3754
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isIgnoreCameraError()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3755
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_b

    .line 3758
    :cond_1f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "Failed in createConstrainedHighSpeedCaptureSession by CameraAccessException. Reason:"

    .line 3759
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 3756
    :cond_20
    :goto_b
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected postCameraDeviceAccess()V
    .locals 2

    .line 3466
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-void

    .line 3474
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmOneShotCaptureTaskPendingList(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 4

    .line 3436
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    .line 3446
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 3449
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 3454
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    return v2

    .line 3457
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed due to wrong status in CreateCaptureSessionTask. status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3459
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return v1

    :cond_4
    return v2
.end method
