.class Lcom/sonyericsson/android/camera/device/CameraController$9$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController$9;->doCameraDeviceAccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraController$9;

.field final synthetic val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

.field final synthetic val$shutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$9;Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 926
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$9$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$9;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$9$1;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$9$1;->val$shutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 3

    .line 929
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraController"

    const-string v1, "### invoke E"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 930
    :cond_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    .line 931
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$9$1;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->-$$Nest$macceptable(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Landroid/media/Image;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 932
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$9$1;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->-$$Nest$misPrepared(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 933
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$9$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$9;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$9$1;->val$shutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$9$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$9;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$jpeg:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$9$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$9;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$9$1;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->-$$Nest$mgetData(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    move-result-object p0

    invoke-static {p1, v0, v1, v2, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mstartTakeZslPicture(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)V

    :cond_1
    return-void
.end method
