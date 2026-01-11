.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateInitialize"
.end annotation


# instance fields
.field private mEvf:Lcom/sonymobile/cameracommon/evf/Evf;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 1

    .line 2770
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State-IA;)V

    .line 2771
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_INITIALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method


# virtual methods
.method public varargs handleOnEvfPrepared([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 2846
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonymobile/cameracommon/evf/Evf;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->mEvf:Lcom/sonymobile/cameracommon/evf/Evf;

    return-void
.end method

.method public varargs handleOnInitialAutoFocusDone([Ljava/lang/Object;)V
    .locals 0

    .line 2824
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preCapture()Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmShutterFeedback(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;)V

    return-void
.end method

.method public varargs handleOnPreShutterDone([Ljava/lang/Object;)V
    .locals 1

    .line 2830
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mnotifyDelayedEvent(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;

    return-void
.end method

.method public varargs handleOnPreTakePictureDone([Ljava/lang/Object;)V
    .locals 1

    .line 2836
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mnotifyDelayedEvent(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 4

    .line 2841
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StatePause-IA;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleResume([Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x0

    .line 2776
    aget-object v1, p1, v0

    move-object v4, v1

    check-cast v4, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v1, 0x1

    .line 2777
    aget-object v2, p1, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v2, 0x2

    .line 2778
    aget-object p1, p1, v2

    move-object v6, p1

    check-cast v6, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    .line 2780
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraDisabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2781
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_USE_OF_CAMERA_RESTRICTED:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    return-void

    .line 2785
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->initLogicalCameraMode()V

    .line 2787
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2798
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    .line 2799
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getAndClearPreCaptureResult()Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2801
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mnotifyDelayedEvent(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;

    goto :goto_0

    .line 2790
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preCapture()Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmShutterFeedback(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;)V

    :cond_3
    :goto_0
    if-eqz v8, :cond_4

    .line 2808
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->mEvf:Lcom/sonymobile/cameracommon/evf/Evf;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonymobile/cameracommon/evf/Evf;Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture-IA;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 2810
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mhasRemainSavingRequest(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 2811
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    .line 2808
    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_1

    .line 2813
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->mEvf:Lcom/sonymobile/cameracommon/evf/Evf;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonymobile/cameracommon/evf/Evf;Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume-IA;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 2815
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mhasRemainSavingRequest(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 2816
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    .line 2813
    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
