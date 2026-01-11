.class Lcom/sonyericsson/android/camera/device/CameraController$6;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController;->takeNightPortraitCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;

.field final synthetic val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field final synthetic val$jpeg:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

.field final synthetic val$shutter:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$6;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$6;->val$shutter:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$6;->val$jpeg:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$6;->val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doCameraDeviceAccess()V
    .locals 7

    .line 756
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$6;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureRequestHolder(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v1

    .line 757
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 758
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 759
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_SOMC_CAMERA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x9

    .line 760
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 759
    invoke-virtual {v1, v0, v5}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 761
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$6;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureRequestHolder(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v0

    sget-object v5, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AE_MODE_ON_ALWAYS_FLASH_NIGHTPORTRAIT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v5, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 763
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$6;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$6;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmMultiFramePreCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v3

    .line 767
    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    new-array v6, v2, [Landroid/view/Surface;

    aput-object v3, v6, v4

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v2, v0

    .line 763
    invoke-virtual/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequestList(Landroid/hardware/camera2/CameraDevice;IIZ[Landroid/view/Surface;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    .line 770
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 772
    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;->NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    invoke-direct {v2, v1, v3}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;-><init>(ILcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;)V

    .line 775
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$6;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmMultiFramePreCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v1

    new-instance v3, Lcom/sonyericsson/android/camera/device/CameraController$6$1;

    invoke-direct {v3, p0, v2}, Lcom/sonyericsson/android/camera/device/CameraController$6$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$6;Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)V

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$6;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v4

    .line 787
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v4

    .line 775
    invoke-virtual {v1, v3, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 788
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CameraController"

    const-string/jumbo v3, "start burst three frame without flash"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 789
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$6;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    new-instance v3, Lcom/sonyericsson/android/camera/device/CameraController$6$2;

    invoke-direct {v3, p0, v2}, Lcom/sonyericsson/android/camera/device/CameraController$6$2;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$6;Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)V

    invoke-static {v1, v0, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mcaptureBurst(Lcom/sonyericsson/android/camera/device/CameraController;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 1

    .line 806
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$6;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

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
