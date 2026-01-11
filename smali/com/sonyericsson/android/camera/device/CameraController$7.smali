.class Lcom/sonyericsson/android/camera/device/CameraController$7;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 864
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$7;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$7;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$7;->val$shutter:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$7;->val$jpeg:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    iput-object p5, p0, Lcom/sonyericsson/android/camera/device/CameraController$7;->val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 3

    .line 867
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 868
    const-string v0, "CameraController"

    const-string v1, "main frame image available"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 870
    :cond_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    .line 871
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$7;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->-$$Nest$macceptable(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Landroid/media/Image;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 872
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$7;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->-$$Nest$misPrepared(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 873
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$7;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$7;->val$shutter:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$7;->val$jpeg:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$7;->val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$7;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->-$$Nest$mgetData(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    move-result-object p0

    invoke-static {p1, v0, v1, v2, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mstartTakeZslPicture(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)V

    :cond_1
    return-void
.end method
