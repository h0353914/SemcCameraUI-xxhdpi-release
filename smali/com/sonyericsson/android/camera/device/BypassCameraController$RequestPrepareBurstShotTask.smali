.class Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareBurstShotTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "BypassCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/BypassCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestPrepareBurstShotTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 864
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareBurstShotTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 865
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareBurstShotTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareBurstShotTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .locals 3

    .line 880
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "requestPrepareBurstShot()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareBurstShotTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmBypassCamera(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestPrepareBurstShot()V

    .line 883
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareBurstShotTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mgetApplicationContext(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 885
    new-instance v1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareBurstShotTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v2

    .line 886
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareBurstShotTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance p0, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting;

    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;)V

    .line 887
    invoke-virtual {v1, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 888
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    :cond_1
    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 2

    .line 870
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareBurstShotTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isOpenBypassCameraTaskPerformed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 872
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareBurstShotTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseBypassCameraTaskPerformed()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
