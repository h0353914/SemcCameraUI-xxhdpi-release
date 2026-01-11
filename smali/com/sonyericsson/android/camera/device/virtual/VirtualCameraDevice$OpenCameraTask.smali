.class Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$OpenCameraTask;
.super Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask;
.source "VirtualCameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenCameraTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V
    .locals 1

    .line 317
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$OpenCameraTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$OpenCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V

    return-void
.end method


# virtual methods
.method doCameraAccess()V
    .locals 4

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fputmLatch(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Ljava/util/concurrent/CountDownLatch;)V

    .line 328
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    sget-object v1, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Opening:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$mchangeStatus(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)V

    .line 329
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmContext(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 331
    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "OpenVirtualCamera:5"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 332
    :cond_0
    const-string v1, "5"

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmDeviceStateCallback(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;

    move-result-object v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmCameraHandler(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 334
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method verifyStatus(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)Z
    .locals 0

    .line 321
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    sget-object p1, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Closed:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    filled-new-array {p1}, [Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$misStatusOf(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;[Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)Z

    move-result p0

    return p0
.end method
