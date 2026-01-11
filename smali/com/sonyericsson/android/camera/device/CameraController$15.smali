.class Lcom/sonyericsson/android/camera/device/CameraController$15;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;

.field final synthetic val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field final synthetic val$requestList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V
    .locals 0

    .line 1419
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$15;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$15;->val$requestList:Ljava/util/List;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$15;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doCameraDeviceAccess()V
    .locals 3

    .line 1423
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$15;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1424
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    const-string v0, "CameraController"

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "captureBurst task: CaptureSession is null"

    const/4 v1, 0x1

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1427
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$15;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$15;->val$requestList:Ljava/util/List;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$15;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$15;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1429
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 1

    .line 1435
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$15;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
