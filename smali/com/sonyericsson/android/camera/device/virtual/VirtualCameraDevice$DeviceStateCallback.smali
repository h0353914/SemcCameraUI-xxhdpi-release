.class Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "VirtualCameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    sget-object p1, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Closed:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$mchangeStatus(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 1

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "VirtualCameraDevice error:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    sget-object p2, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Closed:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$mchangeStatus(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)V

    .line 203
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$mclearPendingProcessingMedia(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V

    .line 204
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$mclearPendingProcessingCount(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fputmCameraDevice(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Landroid/hardware/camera2/CameraDevice;)V

    .line 185
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    sget-object v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Opened:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$mchangeStatus(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)V

    .line 186
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "OpenVirtualCamera:5 successful"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 187
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmLatch(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 188
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmLatch(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 191
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmCaptureSize(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->configSurface(Landroid/util/Size;)V

    return-void
.end method
