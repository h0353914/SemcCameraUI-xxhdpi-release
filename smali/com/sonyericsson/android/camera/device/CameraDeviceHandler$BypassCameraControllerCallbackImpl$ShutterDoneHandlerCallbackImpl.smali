.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutterDoneHandlerCallbackImpl"
.end annotation


# instance fields
.field private final mCaptureRequestNum:I

.field private final mIsAfSuccess:Z

.field private final mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;IZ)V
    .locals 0

    .line 4974
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4975
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 4976
    iput p3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->mCaptureRequestNum:I

    .line 4977
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->mIsAfSuccess:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;IZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;IZ)V

    return-void
.end method

.method private playShutterDoneSound(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 1

    .line 5018
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mshouldPlayShutterSound(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5019
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmShutterFeedback(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->getSoundOnShutterDone()Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mplayCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    :cond_0
    return-void
.end method

.method private updatePredictiveCaptureNumForResearchUtil(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 2

    .line 5006
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    .line 5008
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    .line 5010
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    if-ne p1, v0, :cond_0

    .line 5011
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setPredictiveCaptureNum(I)V

    goto :goto_0

    .line 5013
    :cond_0
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->mCaptureRequestNum:I

    invoke-virtual {p1, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setPredictiveCaptureNum(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 4982
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShutterDoneHandlerCallbackImpl invoked pre-process:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmPreProcessState(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4986
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->get(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4987
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->get(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object v0

    .line 4988
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->shutterDone:J

    .line 4991
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmPreProcessState(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmPreProcessState(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne v0, v1, :cond_4

    .line 4993
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4994
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->updatePredictiveCaptureNumForResearchUtil(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 4995
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    iget v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->mCaptureRequestNum:I

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->mIsAfSuccess:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onShutterDone(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;IZ)V

    .line 4996
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->playShutterDoneSound(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    goto :goto_0

    .line 4998
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachineForSavingRequest(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4999
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachineForSavingRequest(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->updatePredictiveCaptureNumForResearchUtil(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 5000
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachineForSavingRequest(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl;->playShutterDoneSound(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    :cond_4
    :goto_0
    return-void
.end method
