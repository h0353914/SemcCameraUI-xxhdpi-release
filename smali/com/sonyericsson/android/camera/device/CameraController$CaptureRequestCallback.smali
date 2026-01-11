.class final Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraController.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CaptureRequestCallback"
.end annotation


# static fields
.field private static final CANCEL_CAPTURE_TIMEOUT_MILLS:I = 0xbb8


# instance fields
.field mCaptureTimeoutRunnable:Ljava/lang/Runnable;

.field mImageReader:Landroid/media/ImageReader;

.field mIsCaptureCompleted:Z

.field mNeedCancelCaptureAfterImageReaderTimeout:Z

.field mPictureCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

.field mShutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

.field mSnapCaptureFrameDropped:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 2219
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Z)V
    .locals 1

    .line 2224
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    const/4 p1, 0x0

    .line 2208
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mImageReader:Landroid/media/ImageReader;

    const/4 v0, 0x0

    .line 2209
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mIsCaptureCompleted:Z

    .line 2210
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mSnapCaptureFrameDropped:Z

    .line 2214
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mCaptureTimeoutRunnable:Ljava/lang/Runnable;

    .line 2225
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mShutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    .line 2226
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mPictureCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    .line 2227
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mNeedCancelCaptureAfterImageReaderTimeout:Z

    return-void
.end method

.method private checkCaptureDone()V
    .locals 9

    .line 2336
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v1, "CameraController"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "checkCaptureDone() : mImageReader = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mIsCaptureCompleted = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mIsCaptureCompleted:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mSnapCaptureFrameDropped = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mSnapCaptureFrameDropped:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2340
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mImageReader:Landroid/media/ImageReader;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2342
    :try_start_0
    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2344
    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    .line 2345
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 2346
    sget-object v7, Lcom/sonyericsson/android/camera/util/PerfLog;->IMAGE_CAPTURED:Lcom/sonyericsson/android/camera/util/PerfLog;

    sub-long/2addr v3, v5

    invoke-virtual {v7, v3, v4}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit(J)V

    .line 2348
    :cond_1
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2349
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v4, v4, [B

    .line 2350
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2351
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 2353
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmUiThreadHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$3;

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$3;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;[B)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2365
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkCaptureDone: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 2368
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mImageReader:Landroid/media/ImageReader;

    .line 2369
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mIsCaptureCompleted:Z

    .line 2370
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mSnapCaptureFrameDropped:Z

    goto :goto_1

    .line 2371
    :cond_2
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mSnapCaptureFrameDropped:Z

    if-eqz v0, :cond_3

    .line 2372
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmUiThreadHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$4;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2380
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mSnapCaptureFrameDropped:Z

    .line 2381
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mIsCaptureCompleted:Z

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 2291
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "CameraController"

    const-string p2, "onCaptureCompleted()"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2299
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->hideDisplayFlashScreen()V

    const/4 p1, 0x1

    .line 2311
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mIsCaptureCompleted:Z

    .line 2312
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mSnapCaptureFrameDropped:Z

    if-eqz p1, :cond_1

    .line 2313
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->checkCaptureDone()V

    :cond_1
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    .line 2320
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "CameraController"

    const-string p1, "onCaptureFailed()"

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 2277
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string p2, "CameraController"

    if-eqz p1, :cond_0

    const-string p1, "onCaptureProgressed()"

    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2280
    :cond_0
    :try_start_0
    sget-object p1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CAPTURE_IS_BACKGROUND_TASK:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 2284
    :goto_0
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "isBackground :"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2285
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onHalDecideBackgroundTask(Z)V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    .line 2242
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "CameraController"

    const-string p3, "onCaptureStarted()"

    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2244
    :cond_0
    sget-object p1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_BURST_SHOT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 2247
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    move p2, p3

    .line 2251
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmUiThreadHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$1;

    invoke-direct {p3, p0, p2}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;Z)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2261
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mNeedCancelCaptureAfterImageReaderTimeout:Z

    if-eqz p1, :cond_2

    .line 2262
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$2;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$2;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mCaptureTimeoutRunnable:Ljava/lang/Runnable;

    .line 2270
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmUiThreadHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mCaptureTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0xbb8

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 2

    .line 2325
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraController"

    const-string v1, "onImageAvailable()"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2326
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mCaptureTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 2327
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmUiThreadHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mCaptureTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x0

    .line 2329
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mNeedCancelCaptureAfterImageReaderTimeout:Z

    const/4 v0, 0x0

    .line 2330
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mCaptureTimeoutRunnable:Ljava/lang/Runnable;

    .line 2331
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mImageReader:Landroid/media/ImageReader;

    .line 2332
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->checkCaptureDone()V

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 2231
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mImageReader:Landroid/media/ImageReader;

    const/4 v1, 0x0

    .line 2232
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mIsCaptureCompleted:Z

    .line 2233
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mShutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    .line 2234
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mPictureCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    .line 2235
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mNeedCancelCaptureAfterImageReaderTimeout:Z

    .line 2236
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mCaptureTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method
