.class Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$TakePictureTask;
.super Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask;
.source "VirtualCameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TakePictureTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V
    .locals 1

    .line 229
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$TakePictureTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$TakePictureTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$TakePictureTask;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V

    return-void
.end method


# virtual methods
.method doCameraAccess()V
    .locals 3

    .line 239
    :try_start_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Send request for final Image"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$TakePictureTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmRemindedFinalJpgNum(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$TakePictureTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$TakePictureTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmImageReader(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/media/ImageReader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 243
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$TakePictureTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$TakePictureTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmCaptureCallback(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$TakePictureTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmCameraHandler(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v1, v0, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 245
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 246
    const-string v0, "Send request for final Image failed"

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method verifyStatus(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)Z
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$TakePictureTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    sget-object p1, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Ready:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    filled-new-array {p1}, [Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$misStatusOf(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;[Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)Z

    move-result p0

    return p0
.end method
