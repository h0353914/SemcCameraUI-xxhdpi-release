.class Lcom/sonyericsson/android/camera/device/CameraController$6$2;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController$6;->doCameraDeviceAccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraController$6;

.field final synthetic val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$6;Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$6;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$2;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 794
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$2;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    invoke-static {p1, p3}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->-$$Nest$macceptable(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 795
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$2;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->-$$Nest$misPrepared(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 796
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$2;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->-$$Nest$mrecycle(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)V

    .line 797
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$6;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/CameraController$6;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$6;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/device/CameraController$6;->val$shutter:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$6;

    iget-object p3, p3, Lcom/sonyericsson/android/camera/device/CameraController$6;->val$jpeg:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$6;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$6;->val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {p1, p2, p3, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mstartPreCaptureForNightPortrait(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :cond_0
    return-void
.end method
