.class Lcom/sonyericsson/android/camera/device/CameraController$2;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController;->startAutoFocus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraAutoFocusCallback;ZZZLandroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;

.field final synthetic val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$2;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$2;->val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doCameraDeviceAccess()V
    .locals 6

    .line 561
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$2;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmAfStateChecker(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AfStateChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/AfStateChecker;->getAfState()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$2;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmAfStateChecker(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AfStateChecker;

    move-result-object v0

    .line 562
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/AfStateChecker;->getAfState()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 564
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$2;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$2;->val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->cancelAutoFocus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$2;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mcreateAfTriggerRequest(Lcom/sonyericsson/android/camera/device/CameraController;Z)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$2;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$2;->val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, v1, v5}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback-IA;)V

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mcapture(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 1

    .line 572
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$2;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

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
