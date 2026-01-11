.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->onSnapshotReadyDone(Ljava/util/concurrent/ExecutorService;ZZZLcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

.field final synthetic val$displayFlashColor:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;

.field final synthetic val$isAfSuccess:Z

.field final synthetic val$isHighQualityBurstAvailable:Z

.field final synthetic val$requireFlash:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;ZZZLcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5125
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;->val$isAfSuccess:Z

    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;->val$isHighQualityBurstAvailable:Z

    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;->val$requireFlash:Z

    iput-object p5, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;->val$displayFlashColor:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 5128
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnapshotReadyDoneTask invoked pre-process:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmPreProcessState(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fast-capture:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmFastCaptureSetting(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5132
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmPreProcessState(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SCAN_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne v0, v1, :cond_3

    .line 5133
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SCAN_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mchangePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    .line 5136
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmFastCaptureSetting(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5143
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;->val$isAfSuccess:Z

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onInitialAutoFocusDone(Z)V

    goto :goto_1

    .line 5138
    :cond_2
    :goto_0
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setTimeAfDone()V

    .line 5139
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->FAST_CAPTURING_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 5140
    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 5141
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preCapture()Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    goto :goto_1

    .line 5145
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmPreProcessState(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmPreProcessState(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne v0, v1, :cond_5

    .line 5147
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5148
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;->val$isHighQualityBurstAvailable:Z

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;->val$isAfSuccess:Z

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;->val$requireFlash:Z

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;->val$displayFlashColor:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;

    iget v5, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;->colorRed:I

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;->val$displayFlashColor:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;

    iget v6, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;->colorGreen:I

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$2;->val$displayFlashColor:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;

    iget v7, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;->colorBlue:I

    invoke-virtual/range {v1 .. v7}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onAutoFocusDone(ZZZIII)V

    :cond_5
    :goto_1
    return-void
.end method
