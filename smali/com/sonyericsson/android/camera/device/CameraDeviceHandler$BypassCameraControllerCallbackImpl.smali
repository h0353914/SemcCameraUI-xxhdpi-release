.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BypassCameraControllerCallbackImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$CloseCameraDeviceNotificationTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl;
    }
.end annotation


# instance fields
.field private mSnapshotReadyDoneTask:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    .line 4871
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    return-void
.end method

.method private setPredictiveCaptureInfo(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;IILjava/lang/String;)V
    .locals 0

    const/4 p0, 0x1

    if-le p3, p0, :cond_0

    .line 4960
    invoke-virtual {p1, p4}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setSaveTimeForCaptureGroup(Ljava/lang/String;)V

    sub-int/2addr p3, p2

    sub-int/2addr p3, p0

    .line 4961
    invoke-virtual {p1, p3}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setCaptureIdForCaptureGourp(I)V

    if-nez p2, :cond_0

    .line 4963
    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setPredictiveCaptureCover(Z)V

    :cond_0
    return-void
.end method

.method private toString(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 5093
    const-string p0, "null"

    return-object p0

    .line 5095
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5096
    iget v0, p1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;->colorRed:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    .line 5097
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5098
    iget v1, p1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;->colorGreen:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5099
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5100
    iget p1, p1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;->colorBlue:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5101
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCameraClosed()V
    .locals 3

    .line 4880
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked pre-process:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmPreProcessState(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4882
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmPreProcessState(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmPreProcessState(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 4886
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mchangePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    goto :goto_1

    .line 4884
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mchangePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    .line 4889
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmUiThreadHandler(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->mSnapshotReadyDoneTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 4890
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->mSnapshotReadyDoneTask:Ljava/lang/Runnable;

    .line 4891
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmUiThreadHandler(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$CloseCameraDeviceNotificationTask;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$CloseCameraDeviceNotificationTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$CloseCameraDeviceNotificationTask-IA;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPrepareBurstDone(Z)V
    .locals 2

    .line 4908
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked success:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4910
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmUiThreadHandler(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShutterDone(IIZ)V
    .locals 9

    .line 4924
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked captureId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " captureNum:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " isAfSuccess:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4927
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmPreProcessState(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne p1, v0, :cond_1

    .line 4928
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mchangePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    .line 4929
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$misNeedCreatePreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4931
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmCameraController(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraController;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmCameraSessionId(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    .line 4935
    :cond_1
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyyMMddHHmmssSSS"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4937
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    if-nez v0, :cond_2

    .line 4940
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmBypassCameraController(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/BypassCameraController;

    move-result-object v1

    .line 4941
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->peekLastSavingPhotoRequest()Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v4

    .line 4942
    invoke-direct {p0, v4, v0, p2, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->setPredictiveCaptureInfo(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;IILjava/lang/String;)V

    .line 4943
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmUiThreadHandler(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;

    move-result-object v1

    new-instance v8, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;IZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl-IA;)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 4947
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v1

    .line 4949
    invoke-direct {p0, v1, v0, p2, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->setPredictiveCaptureInfo(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;IILjava/lang/String;)V

    .line 4952
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmBypassCameraController(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/BypassCameraController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->enqueueSavingPhotoRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onSnapshotDone(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .locals 3

    .line 5030
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked requestId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5031
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmUiThreadHandler(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl-IA;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSnapshotReadyDone(Ljava/util/concurrent/ExecutorService;ZZZLcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;I)V
    .locals 6

    .line 5112
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked pre-process:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmPreProcessState(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isHighQualityBurstAvailable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isAfSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requireFlash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " displayFlashColor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5117
    invoke-direct {p0, p5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->toString(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CaptureStartPoint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5118
    invoke-virtual {p6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CaptureDuration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 5112
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5121
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fputmTimeOnSnapshotReadyDone(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;J)V

    .line 5122
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0, p6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fputmCaptureStartPoint(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;)V

    .line 5123
    iget-object p6, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p6, p7}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fputmCaptureDuration(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;I)V

    .line 5125
    new-instance p6, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;

    move-object v0, p6

    move-object v1, p0

    move v2, p3

    move v3, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;ZZZLcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;)V

    iput-object p6, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->mSnapshotReadyDoneTask:Ljava/lang/Runnable;

    .line 5156
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmPreProcessState(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object p2

    sget-object p3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SCAN_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne p2, p3, :cond_2

    .line 5157
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p2

    if-nez p2, :cond_1

    .line 5158
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->mSnapshotReadyDoneTask:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 5160
    :cond_1
    const-string p0, "BypassCameraRequestExecutor already Shutdown"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto :goto_0

    .line 5163
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmUiThreadHandler(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->mSnapshotReadyDoneTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
