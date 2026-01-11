.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateWaitingEvfPreparedByModeChange"
.end annotation


# instance fields
.field private isEvfPrepared:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 1

    .line 2719
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State-IA;)V

    const/4 p1, 0x0

    .line 2717
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;->isEvfPrepared:Z

    .line 2720
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAITING_EVF_PREPARED_IN_MODE_CHANGE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method


# virtual methods
.method public varargs handleOnEvfPrepared([Ljava/lang/Object;)V
    .locals 2

    .line 2730
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Lcom/sonymobile/cameracommon/evf/Evf;

    invoke-interface {p1}, Lcom/sonymobile/cameracommon/evf/Evf;->asSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPreviewSurface(Landroid/view/Surface;)V

    .line 2731
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startPreview()V

    const/4 p1, 0x1

    .line 2732
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;->isEvfPrepared:Z

    .line 2733
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isTutorialNeededToBeShownForCurrentMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2734
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted-IA;)V

    sget-object p0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->TUTORIAL:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2736
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetisPostChangeCameraTask(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2737
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeToStandby(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 4

    .line 2725
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

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

.method public handlePreviewSessionConfigured([Ljava/lang/Object;)V
    .locals 1

    .line 2744
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;->isEvfPrepared:Z

    if-eqz v0, :cond_0

    .line 2745
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeToStandby(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 2746
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handlePreviewSessionConfigured([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargs handleResolutionChanged([Ljava/lang/Object;)V
    .locals 0

    .line 2752
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeCameraIfNeeded(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method public varargs handleSlowMotionChanged([Ljava/lang/Object;)V
    .locals 0

    .line 2762
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeCameraIfNeeded(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method public varargs handleVideoSizeChanged([Ljava/lang/Object;)V
    .locals 0

    .line 2757
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeCameraIfNeeded(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method
