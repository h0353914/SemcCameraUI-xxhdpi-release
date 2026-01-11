.class Lcom/sonyericsson/android/camera/device/CameraController$4;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController;->startAutoExposure(ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;

.field final synthetic val$aeLock:Z

.field final synthetic val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$4;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$4;->val$aeLock:Z

    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$4;->val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doCameraDeviceAccess()V
    .locals 6

    .line 595
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraController"

    const-string v1, "### startAutoExposure() E"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$4;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmAeStateChecker(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AeStateChecker;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$4;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$4;->val$aeLock:Z

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$4;->val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/AeStateChecker;->setStateListener(Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;)V

    .line 597
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$4;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmAeStateChecker(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AeStateChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$4;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmSemiAutoStatus(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->-$$Nest$mgetSS(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/AeStateChecker;->setCurrShutterSpeedValue(J)V

    .line 598
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$4;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureResultCheckerLock(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 599
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$4;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmStateCheckerSet(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$4;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmAeStateChecker(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AeStateChecker;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 600
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$4;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mcreateAePrecaptureTriggerRequest(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$4;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$4;->val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, p0, v4, v5}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback-IA;)V

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mcapture(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    .line 603
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "CameraController"

    const-string v0, "### startAutoExposure() X"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 600
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 1

    .line 608
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$4;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

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
