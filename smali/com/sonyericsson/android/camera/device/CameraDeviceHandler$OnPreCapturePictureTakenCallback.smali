.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCapturePictureTakenCallback;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPreCapturePictureTakenCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    .line 2322
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCapturePictureTakenCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCapturePictureTakenCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCapturePictureTakenCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([B)V
    .locals 3

    .line 2328
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->SHOT_TO_SHOT_DELAY:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2329
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->SHOT_TO_SHOT_DELAY:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2331
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCapturePictureTakenCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mdequeueSavingPhotoRequestAndAttachImageReader(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;[B)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    .line 2332
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCapturePictureTakenCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mchangePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    .line 2335
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCapturePictureTakenCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmCameraController(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    .line 2351
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCapturePictureTakenCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2352
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setImageData([B)V

    .line 2353
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCapturePictureTakenCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onPreTakePictureDone(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    :cond_0
    return-void
.end method
