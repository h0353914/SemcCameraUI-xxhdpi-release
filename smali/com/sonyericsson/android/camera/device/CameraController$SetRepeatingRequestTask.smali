.class Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetRepeatingRequestTask"
.end annotation


# static fields
.field private static final REPEATING_BURST_COUNT:I = 0x1


# instance fields
.field private mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field private final mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

.field private final mCaptureSurface:Landroid/view/Surface;

.field private mImageReader:Landroid/media/ImageReader;

.field mIsSlowMotion:Z

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field mNeedZslBuffer:Z

.field private mOperationMode:I

.field private mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

.field private mTag:Ljava/lang/Object;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;ILcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;Landroid/media/MediaRecorder;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;)V
    .locals 0

    .line 4173
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4174
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 4175
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 4176
    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mImageReader:Landroid/media/ImageReader;

    .line 4177
    iput-object p5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 p5, 0x0

    if-eqz p4, :cond_0

    .line 4178
    invoke-virtual {p4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p4

    goto :goto_0

    :cond_0
    move-object p4, p5

    :goto_0
    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCaptureSurface:Landroid/view/Surface;

    if-nez p6, :cond_1

    .line 4179
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureRequestHolder(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object p6

    :cond_1
    iput-object p6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    .line 4180
    iput p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mOperationMode:I

    .line 4181
    iput-object p7, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mTag:Ljava/lang/Object;

    .line 4182
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p2

    const/4 p4, 0x1

    if-eqz p2, :cond_3

    .line 4183
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p2

    .line 4184
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object p2

    sget-object p6, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-eq p2, p6, :cond_2

    move p2, p4

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mIsSlowMotion:Z

    .line 4186
    :cond_3
    new-instance p2, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    invoke-direct {p2, p1, p3, p4, p5}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback-IA;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    .line 4187
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->SET_REPEATING_REQUEST_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->setPerformancefLog(Lcom/sonyericsson/android/camera/util/PerfLog;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;ILcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;Landroid/media/MediaRecorder;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;ILcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;Landroid/media/MediaRecorder;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .locals 14

    const-string/jumbo v0, "setRepeatingBurst() requestNum:"

    .line 4236
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4237
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Preview surface is not created, so the request is refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4241
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    const-string v2, "Preview surface is not valid, so the request is refused."

    if-nez v1, :cond_3

    .line 4242
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 4243
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 4249
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4250
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmZslImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mNeedZslBuffer:Z

    if-eqz v1, :cond_4

    .line 4251
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmZslImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v4

    .line 4252
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v4

    .line 4251
    invoke-virtual {v1, v3, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 4255
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmOutputConfiguration(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_6

    .line 4258
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmOutputConfiguration(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v5

    if-eq v1, v5, :cond_5

    .line 4259
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmOutputConfiguration(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v1

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4266
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    new-array v5, v4, [Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmOutputConfiguration(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v6

    aput-object v6, v5, v3

    .line 4267
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 4266
    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CameraCaptureSession;->finalizeOutputConfigurations(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4281
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmOutputConfiguration(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/OutputConfiguration;)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setRepeatingRequest: finalizeOutputConfigurations failed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    .line 4269
    :catch_1
    const-string/jumbo v0, "setRepeatingRequest: finalizeOutputConfigurations failed."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 4271
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4272
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 4273
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 4271
    invoke-static {v0, v1, p0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$monCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void

    :catch_2
    move-exception p0

    .line 4262
    const-string v0, "addSurface failed IllegalArgumentException : "

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 4284
    :cond_6
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4287
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isPreCaptureOnGoing()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v5

    .line 4288
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isPreScanOnGoing()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4289
    :cond_7
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4291
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4289
    invoke-virtual {v5, v6, v7}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4294
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Add preview operation mode:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mOperationMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4295
    iget v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mOperationMode:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_9

    .line 4296
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v6, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_SESSION_OPERATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mOperationMode:I

    .line 4298
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4296
    invoke-virtual {v5, v6, v7}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4301
    :cond_9
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCaptureSurface:Landroid/view/Surface;

    const/4 v6, 0x5

    const-string v7, "SetRepeatingRequestTask : CaptureRequest cannot be created. mCaptureSurface is null."

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmRecordingSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v5

    if-nez v5, :cond_d

    .line 4303
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmZslImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mNeedZslBuffer:Z

    if-eqz v5, :cond_a

    .line 4304
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v10, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v10}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v10

    iget-object v11, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mTag:Ljava/lang/Object;

    iget-object v12, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v12}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v12

    iget-object v13, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v13}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmZslImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v13

    .line 4309
    invoke-virtual {v13}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v13

    new-array v8, v8, [Landroid/view/Surface;

    aput-object v12, v8, v3

    aput-object v13, v8, v4

    .line 4304
    invoke-virtual {v5, v10, v6, v11, v8}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;ILjava/lang/Object;[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    .line 4310
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_b

    const-string/jumbo v6, "setRepeatingBurst() add zsl request"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_1

    .line 4312
    :cond_a
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v6

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mTag:Ljava/lang/Object;

    iget-object v10, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v10}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v10

    new-array v11, v4, [Landroid/view/Surface;

    aput-object v10, v11, v3

    invoke-virtual {v5, v6, v4, v8, v11}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;ILjava/lang/Object;[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    .line 4317
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_b

    const-string/jumbo v6, "setRepeatingBurst() add preview request"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_b
    :goto_1
    if-nez v5, :cond_c

    .line 4321
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 4326
    :cond_c
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 4328
    :cond_d
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmRecordingSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 4329
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4330
    iget-boolean v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mIsSlowMotion:Z

    if-eqz v5, :cond_f

    .line 4331
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4332
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v7

    iget-object v10, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v10}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmRecordingSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v10

    new-array v8, v8, [Landroid/view/Surface;

    aput-object v7, v8, v3

    aput-object v10, v8, v4

    .line 4333
    invoke-virtual {v1, v5, v6, v9, v8}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createHighSpeedRequestList(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;I[Landroid/view/Surface;)Ljava/util/List;

    move-result-object v1

    .line 4336
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_1b

    const-string/jumbo v5, "setRepeatingBurst() for slowmotion recording"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4338
    :cond_e
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v7

    iget-object v10, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v10}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmRecordingSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v10

    new-array v8, v8, [Landroid/view/Surface;

    aput-object v7, v8, v3

    aput-object v10, v8, v4

    .line 4339
    invoke-virtual {v1, v5, v6, v9, v8}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createHighSpeedRequestList(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;I[Landroid/view/Surface;)Ljava/util/List;

    move-result-object v1

    .line 4342
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_1b

    const-string/jumbo v5, "setRepeatingBurst() for slowmotion preview"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4346
    :cond_f
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isRecording()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 4347
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v6, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_RECORDING_END_OF_STREAM:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4348
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    .line 4347
    invoke-virtual {v5, v6, v10}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4349
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4350
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v6

    iget-object v10, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mTag:Ljava/lang/Object;

    iget-object v11, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v11}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v11

    iget-object v12, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v12}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmRecordingSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v12

    new-array v8, v8, [Landroid/view/Surface;

    aput-object v11, v8, v3

    aput-object v12, v8, v4

    invoke-virtual {v5, v6, v9, v10, v8}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;ILjava/lang/Object;[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    .line 4356
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_11

    const-string/jumbo v6, "setRepeatingBurst() add video request for recording"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_2

    .line 4358
    :cond_10
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v6, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_RECORDING_END_OF_STREAM:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4359
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    .line 4358
    invoke-virtual {v5, v6, v8}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4360
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v6

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mTag:Ljava/lang/Object;

    iget-object v10, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v10}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v10

    new-array v11, v4, [Landroid/view/Surface;

    aput-object v10, v11, v3

    invoke-virtual {v5, v6, v4, v8, v11}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;ILjava/lang/Object;[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    .line 4366
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_11

    const-string/jumbo v6, "setRepeatingBurst() do not add video request for preview"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_11
    :goto_2
    if-nez v5, :cond_12

    .line 4369
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    :cond_12
    if-nez v5, :cond_13

    .line 4376
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 4381
    :cond_13
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4384
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 4385
    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v5

    .line 4386
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v5

    .line 4387
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v5, v6, :cond_1b

    .line 4388
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isRecording()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 4389
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v6, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_RECORDING_END_OF_STREAM:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4390
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    .line 4389
    invoke-virtual {v5, v6, v7}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4391
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mTag:Ljava/lang/Object;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmRecordingSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v8

    new-array v10, v4, [Landroid/view/Surface;

    aput-object v8, v10, v3

    invoke-virtual {v5, v6, v9, v7, v10}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;ILjava/lang/Object;[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    if-nez v5, :cond_14

    .line 4397
    const-string p0, "SetRepeatingRequestTask : CaptureRequestV cannot be created. mCaptureSurface is null."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 4402
    :cond_14
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_15

    .line 4403
    const-string/jumbo v6, "setRepeatingBurst() add video stream request for 60fps"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4404
    :cond_15
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 4412
    :cond_16
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmZslImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v5

    if-eqz v5, :cond_17

    iget-boolean v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mNeedZslBuffer:Z

    if-eqz v5, :cond_17

    .line 4413
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmZslImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    .line 4415
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v5

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmZslImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v7

    iget-object v10, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCaptureSurface:Landroid/view/Surface;

    new-array v11, v9, [Landroid/view/Surface;

    aput-object v5, v11, v3

    aput-object v7, v11, v4

    aput-object v10, v11, v8

    .line 4417
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mTag:Ljava/lang/Object;

    invoke-virtual {v5, v7, v6, v8, v11}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;ILjava/lang/Object;[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    .line 4422
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_19

    const-string/jumbo v6, "setRepeatingBurst() add request for zsl"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_3

    .line 4424
    :cond_17
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    .line 4426
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCaptureSurface:Landroid/view/Surface;

    new-array v7, v8, [Landroid/view/Surface;

    aput-object v5, v7, v3

    aput-object v6, v7, v4

    .line 4427
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_18

    const-string/jumbo v5, "setRepeatingBurst() add request for with callback"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4431
    :cond_18
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v6

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mTag:Ljava/lang/Object;

    invoke-virtual {v5, v6, v4, v8, v7}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;ILjava/lang/Object;[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    :cond_19
    :goto_3
    if-nez v5, :cond_1a

    .line 4439
    const-string p0, "SetRepeatingRequestTask : CaptureRequest cannot be created. mCaptureSurface is not null."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 4444
    :cond_1a
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4449
    :cond_1b
    :goto_4
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Surface;->isValid()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 4450
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 4451
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1c

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1c
    return-void

    .line 4456
    :cond_1d
    :try_start_2
    sget-object v2, Lcom/sonyericsson/android/camera/util/PerfLog;->START_PREVIEW:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 4458
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_1e

    new-array v2, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4459
    :cond_1e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v4

    .line 4461
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v4

    .line 4459
    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 4462
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 4463
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureRequestDumper(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    move-result-object v0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->update(Landroid/hardware/camera2/CaptureRequest;)V

    .line 4464
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureRequestDumper(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->dump()V

    .line 4468
    :cond_1f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4469
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4470
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    goto :goto_5

    .line 4472
    :cond_20
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->VIDEO_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    goto :goto_5

    .line 4475
    :cond_21
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->STILL_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    .line 4477
    :goto_5
    new-instance v1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4479
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mgetApplicationContext(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v3

    .line 4480
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 4481
    new-instance v2, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    invoke-direct {v2, v0}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 4482
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->publish()V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_7

    :catch_3
    move-exception p0

    .line 4510
    const-string v0, "Failed in setRepeatingRequest."

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :catch_4
    move-exception v0

    .line 4484
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isIgnoreCameraError()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 4485
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_6

    .line 4487
    :cond_22
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_23

    .line 4488
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 4489
    const-string/jumbo p0, "setRepeatingRequest : mPreviewSurface is invalid.(after performing set repeating request)"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_7

    .line 4491
    :cond_23
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    if-ne v1, v9, :cond_24

    .line 4492
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed in setRepeatingRequest  by CameraAccessException. Reason:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4493
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 4492
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4494
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4495
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 4496
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 4494
    invoke-static {v0, v1, p0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$monCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    goto :goto_7

    .line 4499
    :cond_24
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed in setRepeatingRequest by CameraAccessException. Reason:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4502
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4486
    :cond_25
    :goto_6
    const-string p0, "Failed in setRepeatingRequest"

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    return-void
.end method

.method public hashCode()I
    .locals 2

    .line 4193
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    shl-int v0, v1, v0

    .line 4194
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mImageReader:Landroid/media/ImageReader;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, 0x3

    shl-int/2addr v0, v1

    .line 4195
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/lit8 v1, v1, 0x3

    shl-int/2addr v0, v1

    .line 4196
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mNeedZslBuffer:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    shl-int/2addr v0, v1

    .line 4197
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mIsSlowMotion:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->hashCode()I

    move-result p0

    add-int/lit8 p0, p0, 0x3

    shl-int p0, v0, p0

    return p0
.end method

.method public setNeedZslBuffer(Z)V
    .locals 0

    .line 4202
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mNeedZslBuffer:Z

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 4

    .line 4207
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmRepeatingRequestTaskSet(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4208
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 4219
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 4222
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    return v2

    .line 4227
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed due to wrong status in SetRepeatingRequestTask. status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4229
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return v1

    :cond_3
    return v2
.end method
