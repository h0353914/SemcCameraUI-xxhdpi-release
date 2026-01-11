.class Lcom/sonyericsson/android/camera/device/CameraController$8;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController;->startTakeMainFrameForNightPortrait(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;

.field final synthetic val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field final synthetic val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

.field final synthetic val$jpeg:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

.field final synthetic val$shutter:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 890
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$8;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$8;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$8;->val$shutter:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$8;->val$jpeg:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    iput-object p5, p0, Lcom/sonyericsson/android/camera/device/CameraController$8;->val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 894
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 895
    const-string p1, "CameraController"

    const-string p2, "main frame CaptureCompleted"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 897
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$8;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    invoke-static {p1, p3}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->-$$Nest$macceptable(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 898
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$8;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->-$$Nest$misPrepared(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 899
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$8;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$8;->val$shutter:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$8;->val$jpeg:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$8;->val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$8;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->-$$Nest$mgetData(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    move-result-object p0

    invoke-static {p1, p2, p3, v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mstartTakeZslPicture(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)V

    :cond_1
    return-void
.end method
