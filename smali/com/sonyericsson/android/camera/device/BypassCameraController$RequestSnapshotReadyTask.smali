.class Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotReadyTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "BypassCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/BypassCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestSnapshotReadyTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 1892
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotReadyTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1893
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotReadyTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotReadyTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .locals 2

    .line 1910
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotReadyTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$msetSnapshotReadyWaiting(Lcom/sonyericsson/android/camera/device/BypassCameraController;Z)V

    .line 1911
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "requestSnapshotReady()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1912
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotReadyTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fputmIsSnapshotReady(Lcom/sonyericsson/android/camera/device/BypassCameraController;Z)V

    .line 1913
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotReadyTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmBypassCamera(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestSnapshotReady()V

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 2

    .line 1898
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotReadyTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isOpenBypassCameraTaskPerformed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1900
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotReadyTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1902
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotReadyTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseBypassCameraTaskPerformed()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
