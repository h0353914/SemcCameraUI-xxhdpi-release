.class Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CloseCameraTask;
.super Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask;
.source "VirtualCameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseCameraTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V
    .locals 1

    .line 208
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CloseCameraTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CloseCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V

    return-void
.end method


# virtual methods
.method doCameraAccess()V
    .locals 3

    .line 218
    :try_start_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CloseCameraTask"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 222
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    sget-object v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Closed:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$mchangeStatus(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    sget-object v1, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Closed:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$mchangeStatus(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)V

    .line 225
    throw v0
.end method

.method verifyStatus(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)Z
    .locals 1

    .line 212
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    sget-object p1, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Opened:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    sget-object v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Ready:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    filled-new-array {p1, v0}, [Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$misStatusOf(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;[Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)Z

    move-result p0

    return p0
.end method
