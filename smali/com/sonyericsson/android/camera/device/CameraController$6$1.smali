.class Lcom/sonyericsson/android/camera/device/CameraController$6$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 776
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$6;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$1;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 2

    .line 779
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    .line 780
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$1;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->-$$Nest$macceptable(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Landroid/media/Image;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 781
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$1;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->-$$Nest$misPrepared(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 782
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$1;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->-$$Nest$mrecycle(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)V

    .line 783
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$6;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/CameraController$6;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$6;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$6;->val$shutter:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$6;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/device/CameraController$6;->val$jpeg:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$6;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$6;->val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {p1, v0, v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mstartPreCaptureForNightPortrait(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :cond_0
    return-void
.end method
