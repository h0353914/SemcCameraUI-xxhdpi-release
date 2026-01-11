.class Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;
.super Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask;
.source "VirtualCameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigSessionTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V
    .locals 1

    .line 251
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V

    return-void
.end method


# virtual methods
.method doCameraAccess()V
    .locals 5

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$mclearPendingProcessingMedia(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$mclearPendingProcessingCount(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmImageReader(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/media/ImageReader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmImageReader(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/media/ImageReader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmCaptureSize(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmCaptureSize(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 281
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "configSurface:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmCaptureSize(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmCaptureSize(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmCaptureSize(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/16 v3, 0x100

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fputmImageReader(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Landroid/media/ImageReader;)V

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmImageReader(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/media/ImageReader;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmOnImageAvailableListener(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmCameraHandler(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 285
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmImageReader(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/media/ImageReader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 286
    new-instance v1, Landroid/hardware/camera2/params/SessionConfiguration;

    .line 287
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmExecutor(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmSessionStateCallback(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$SessionStateCallback;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v0, v2, v3}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v2, 0x2

    .line 290
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 291
    sget-object v2, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_SESSION_OPERATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const v3, 0x8000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 292
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 293
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/hardware/camera2/CameraDevice;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 295
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void

    .line 278
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CaptureSize invalid "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmCaptureSize(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void
.end method

.method verifyStatus(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)Z
    .locals 3

    .line 256
    :try_start_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmLatch(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 257
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmLatch(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 259
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const-string v1, "Camera is not opened, retry config session"

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmCameraHandler(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 265
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 267
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    sget-object p1, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Opened:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    sget-object v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Ready:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    filled-new-array {p1, v0}, [Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$misStatusOf(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;[Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)Z

    move-result p0

    return p0
.end method
