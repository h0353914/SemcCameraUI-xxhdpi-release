.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraDeviceHandlerInquirer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    .line 5534
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method awaitLoadSettingsThread()Z
    .locals 0

    .line 5592
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->awaitLoadSettingsThread()Z

    move-result p0

    return p0
.end method

.method changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V
    .locals 0

    .line 5602
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mchangePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    return-void
.end method

.method public getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .locals 0

    .line 5662
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentCaptureMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 1

    .line 5674
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5677
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    return-object p0
.end method

.method getDeviceThreadHandler()Landroid/os/Handler;
    .locals 0

    .line 5581
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmCameraDeviceThreadHandler(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;
    .locals 0

    .line 5536
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mgetParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    return-object p0
.end method

.method getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;
    .locals 0

    .line 5598
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmPreProcessState(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize()Landroid/graphics/Rect;
    .locals 1

    .line 5653
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmCameraSessionId(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mgetParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5655
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSettingHdrValue()Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;
    .locals 0

    .line 5645
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getSettingHdrValue()Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    move-result-object p0

    return-object p0
.end method

.method public getVideoStabilizerDeviceValue(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;Z)Ljava/lang/String;
    .locals 6

    .line 5621
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mgetVideoStabilizerDeviceValue(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideDisplayFlashScreen()V
    .locals 0

    .line 5711
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mhideDisplayFlashScreen(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    return-void
.end method

.method public isBokehOn()Z
    .locals 0

    .line 5699
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBokehOn()Z

    move-result p0

    return p0
.end method

.method public isCameraFront()Z
    .locals 0

    .line 5666
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraFront()Z

    move-result p0

    return p0
.end method

.method isIgnoreCameraError()Z
    .locals 0

    .line 5544
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmActivityIsInForeground(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Z

    move-result p0

    return p0
.end method

.method public isInFocus()Z
    .locals 0

    .line 5703
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isInFocus()Z

    move-result p0

    return p0
.end method

.method public isLogicCameraOperationMode()Z
    .locals 0

    .line 5691
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isLogicCameraOperationMode()Z

    move-result p0

    return p0
.end method

.method isNeedCreatePreviewSession()Z
    .locals 0

    .line 5540
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$misNeedCreatePreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Z

    move-result p0

    return p0
.end method

.method public isPreCaptureOnGoing()Z
    .locals 2

    .line 5610
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmPreProcessState(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmPreProcessState(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isPreScanOnGoing()Z
    .locals 1

    .line 5606
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmPreProcessState(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SCAN_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecorderAvailable()Z
    .locals 0

    .line 5649
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$misRecorderAvailable(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Z

    move-result p0

    return p0
.end method

.method isRecording()Z
    .locals 0

    .line 5552
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecording()Z

    move-result p0

    return p0
.end method

.method public isScreenRecording()Z
    .locals 0

    .line 5715
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isScreenRecording()Z

    move-result p0

    return p0
.end method

.method isSnapshotRunning()Z
    .locals 0

    .line 5615
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmBypassCameraController(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/BypassCameraController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->isSnapshotRunning()Z

    move-result p0

    return p0
.end method

.method public isStillHDROn()Z
    .locals 0

    .line 5670
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isStillHDROn()Z

    move-result p0

    return p0
.end method

.method public isSuperNightMode()Z
    .locals 0

    .line 5695
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isSuperNightMode()Z

    move-result p0

    return p0
.end method

.method isVideo()Z
    .locals 0

    .line 5548
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmIsVideo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Z

    move-result p0

    return p0
.end method

.method public isZoomed()Z
    .locals 0

    .line 5681
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isZoomed()Z

    move-result p0

    return p0
.end method

.method public needsForceSetAsAutoFocus()Z
    .locals 0

    .line 5707
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mneedsForceSetAsAutoFocus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Z

    move-result p0

    return p0
.end method

.method public onCaptureRequested()V
    .locals 2

    .line 5633
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5634
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mpeekLastSavingPhotoRequest(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isAutoFocus:Z

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onCaptureRequested(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;Z)V

    :cond_0
    return-void
.end method

.method public onPreviewSessionConfigured(Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V
    .locals 1

    .line 5626
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5627
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onPreviewSessionConfigured(Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 5628
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->clearSavingPhotoRequest()V

    :cond_0
    return-void
.end method

.method public onPreviewSteady()V
    .locals 1

    .line 5685
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5686
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onPreviewSteady()V

    :cond_0
    return-void
.end method

.method postCameraDevice2Thread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    .locals 0

    .line 5587
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mrunOnCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    .locals 0

    .line 5573
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mrunOnCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method postCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    .locals 0

    .line 5577
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mrunOnCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method preScan()V
    .locals 0

    .line 5568
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preScan()V

    return-void
.end method

.method prepareCaptureImageReader()V
    .locals 1

    .line 5564
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->prepareCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;)V

    return-void
.end method

.method releaseRecorderOnCameraClosed()V
    .locals 1

    .line 5556
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5557
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mreleaseRecorderOnCameraClosed(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    return-void
.end method

.method public updatedDebugInfoInViewFinder(Ljava/lang/String;)V
    .locals 1

    .line 5639
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5640
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updatedDebugInfoInViewFinder(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
