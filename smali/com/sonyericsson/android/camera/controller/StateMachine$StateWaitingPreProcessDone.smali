.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingPreProcessDone;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateWaitingPreProcessDone"
.end annotation


# instance fields
.field private final mFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V
    .locals 1

    .line 8375
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingPreProcessDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State-IA;)V

    .line 8376
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAITING_PRE_PROCESS_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingPreProcessDone;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 8377
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingPreProcessDone;->mFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    return-void
.end method

.method private cancelPreProcess()V
    .locals 2

    .line 8381
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingPreProcessDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcancelAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 8382
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingPreProcessDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->cancelPreProcessState()V

    .line 8383
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingPreProcessDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x1

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mstartFastCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V

    return-void
.end method


# virtual methods
.method public varargs handleFusionConditionChanged([Ljava/lang/Object;)V
    .locals 1

    .line 8409
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingPreProcessDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_FUSION_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnInitialAutoFocusDone([Ljava/lang/Object;)V
    .locals 0

    .line 8388
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingPreProcessDone;->cancelPreProcess()V

    return-void
.end method

.method public varargs handleOnPreTakePictureDone([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 8394
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 8395
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->close()V

    .line 8398
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingPreProcessDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->prepareCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;)V

    .line 8399
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingPreProcessDone;->cancelPreProcess()V

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 4

    .line 8404
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingPreProcessDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingPreProcessDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

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
