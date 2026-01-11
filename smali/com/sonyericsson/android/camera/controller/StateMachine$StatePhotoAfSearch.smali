.class Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatePhotoAfSearch"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateMachine.StatePhotoAfSearch"


# instance fields
.field private mIsCancelRequested:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 1

    .line 5781
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase-IA;)V

    const/4 p1, 0x0

    .line 5778
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->mIsCancelRequested:Z

    .line 5782
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method


# virtual methods
.method public varargs handleCapture([Ljava/lang/Object;)V
    .locals 4

    .line 5873
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->mIsCancelRequested:Z

    if-nez v0, :cond_0

    .line 5874
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone-IA;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargs handleCaptureBurst([Ljava/lang/Object;)V
    .locals 6

    .line 5838
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->mIsCancelRequested:Z

    if-nez v0, :cond_3

    .line 5839
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misHighQualityBurstAvailable(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcheckBurstConditions(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZ)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 5840
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->isMultiFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5841
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mrestartPreviewSessionBeforeBurst(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    goto :goto_0

    .line 5843
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v2, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone-IA;)V

    invoke-static {v0, v2, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5847
    :cond_1
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch$1;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;)V

    .line 5859
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mshouldRestartSessionBeforeCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5860
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcancelAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 5861
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetNextSessionTypeForCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 5862
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->setPendingTask(Ljava/lang/Runnable;)Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    .line 5861
    invoke-static {p1, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5864
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v4, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v4, v5, v2, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone-IA;)V

    invoke-static {v0, v4, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 5865
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mshowCannotBurstInDarkCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public varargs handleCaptureCancel([Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x1

    .line 5833
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->mIsCancelRequested:Z

    return-void
.end method

.method public varargs handleClearFocus([Ljava/lang/Object;)V
    .locals 0

    .line 5807
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->handleCaptureCancel([Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnAutoFocusDone([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x1

    .line 5789
    aget-object v1, p1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 5791
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->mIsCancelRequested:Z

    if-eqz v2, :cond_0

    .line 5792
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcancelAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 5793
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {p1, v2, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5795
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone-IA;)V

    invoke-static {v0, v2, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public varargs handleOnFaceDetected([Ljava/lang/Object;)V
    .locals 2

    .line 5826
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnObjectTracked([Ljava/lang/Object;)V
    .locals 2

    .line 5812
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isTrackingFocusDuringLockSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5817
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_TRACKED_OBJECT_STATE_UPDATED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 4

    .line 5801
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcancelAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 5802
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

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

.method public varargs handleStorageMounted([Ljava/lang/Object;)V
    .locals 0

    .line 5880
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmPredictiveApplier(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->-$$Nest$mattemptCommitSettings(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;)V

    return-void
.end method
