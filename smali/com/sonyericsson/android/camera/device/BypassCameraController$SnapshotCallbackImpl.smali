.class Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;
.super Ljava/lang/Object;
.source "BypassCameraController.java"

# interfaces
.implements Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/BypassCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SnapshotCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V
    .locals 0

    .line 971
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 4

    .line 995
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->BYPASSCAMERA_ON_IMAGE_AVAILABLE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 996
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/PerfLog;->IS_ENABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmImageFpsMonitor(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->addSampleMillis(J)V

    .line 998
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invoked imageReader:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "pre-process:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v2

    .line 999
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    .line 998
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_4

    .line 1002
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1003
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mdequeueSavingPhotoRequestAndAttachImageReader(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/media/ImageReader;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object p1

    .line 1004
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_3

    .line 1006
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;->onSnapshotDone(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    goto :goto_1

    .line 1008
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->close()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onShutterDone(IIZ)V
    .locals 3

    .line 976
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->BYPASSCAMERA_ON_SHUTTER_DONE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 977
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/PerfLog;->IS_ENABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmShutterFpsMonitor(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    move-result-object v0

    .line 978
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 977
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->addSampleMillis(J)V

    .line 979
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->SHOT_TO_SHOT_DELAY:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 981
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->SHOT_TO_SHOT_DELAY:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 984
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;->onShutterDone(IIZ)V

    return-void
.end method

.method public onSnapshotDone(I)V
    .locals 0

    .line 989
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->BYPASSCAMERA_ON_SNAPSHOT_DONE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    return-void
.end method
