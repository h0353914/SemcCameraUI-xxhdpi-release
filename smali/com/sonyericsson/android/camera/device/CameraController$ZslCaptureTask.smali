.class Lcom/sonyericsson/android/camera/device/CameraController$ZslCaptureTask;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZslCaptureTask"
.end annotation


# instance fields
.field private final mCameraPictureCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

.field private final mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field private final mCameraShutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 1454
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$ZslCaptureTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1455
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$ZslCaptureTask;->mCameraShutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    .line 1456
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$ZslCaptureTask;->mCameraPictureCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    .line 1457
    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$ZslCaptureTask;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    return-void
.end method


# virtual methods
.method public capture(Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)V
    .locals 3

    .line 1466
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraController"

    const-string v1, "### capture() E"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1467
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$ZslCaptureTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$ZslCaptureTask;->mCameraShutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$ZslCaptureTask;->mCameraPictureCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$ZslCaptureTask;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mstartTakeZslPicture(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)V

    return-void
.end method
