.class Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatePhotoWaitingTrackedObjectForAfStart"
.end annotation


# instance fields
.field mIsAutoFocusStarted:Z

.field mIsBurstCaptureRequired:Z

.field mIsCaptureRequired:Z

.field mIsFirstCallback:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 1

    .line 5591
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State-IA;)V

    const/4 p1, 0x0

    .line 5585
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsAutoFocusStarted:Z

    const/4 v0, 0x1

    .line 5586
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsFirstCallback:Z

    .line 5587
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsCaptureRequired:Z

    .line 5588
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsBurstCaptureRequired:Z

    .line 5592
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_WAITING_TRACKED_OBJECT_FOR_AF_START:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method


# virtual methods
.method public varargs handleCapture([Ljava/lang/Object;)V
    .locals 0

    .line 5742
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsBurstCaptureRequired:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 5743
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsCaptureRequired:Z

    :cond_0
    return-void
.end method

.method public varargs handleCaptureBurst([Ljava/lang/Object;)V
    .locals 0

    .line 5763
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsCaptureRequired:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 5764
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsBurstCaptureRequired:Z

    :cond_0
    return-void
.end method

.method public varargs handleCaptureCancel([Ljava/lang/Object;)V
    .locals 2

    .line 5729
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsAutoFocusStarted:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 5730
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcancelAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 5732
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleClearFocus([Ljava/lang/Object;)V
    .locals 0

    .line 5737
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->handleCaptureCancel([Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleFusionConditionChanged([Ljava/lang/Object;)V
    .locals 1

    .line 5757
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_FUSION_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnObjectLost([Ljava/lang/Object;)V
    .locals 5

    .line 5684
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnObjectLost([Ljava/lang/Object;)V

    .line 5686
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsCaptureRequired:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 5687
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mstartAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;[Ljava/lang/Object;)Z

    .line 5688
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsAutoFocusStarted:Z

    .line 5689
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v0, p0, v3, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone-IA;)V

    new-array p0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 5691
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsBurstCaptureRequired:Z

    if-eqz v0, :cond_4

    .line 5692
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mstartAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;[Ljava/lang/Object;)Z

    .line 5693
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsAutoFocusStarted:Z

    .line 5694
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misHighQualityBurstAvailable(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v4

    invoke-static {v0, v4, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcheckBurstConditions(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5695
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->isMultiFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5696
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mrestartPreviewSessionBeforeBurst(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 5697
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mshowCannotBurstInDarkCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    goto :goto_0

    .line 5699
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v2, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone-IA;)V

    invoke-static {v0, v2, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5703
    :cond_2
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart$2;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart$2;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;)V

    .line 5714
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mshouldRestartSessionBeforeCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5715
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsAutoFocusStarted:Z

    .line 5716
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcancelAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 5717
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetNextSessionTypeForCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 5718
    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->setPendingTask(Ljava/lang/Runnable;)Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    .line 5717
    invoke-static {v0, p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5720
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v0, v4, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch-IA;)V

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 5721
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mshowCannotBurstInDarkCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public varargs handleOnObjectTracked([Ljava/lang/Object;)V
    .locals 5

    .line 5600
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_TRACKED_OBJECT_STATE_UPDATED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 5604
    aget-object v0, p1, v2

    check-cast v0, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;

    .line 5605
    iget-boolean v0, v0, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mIsLost:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsFirstCallback:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 5611
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mstartAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;[Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 5612
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsAutoFocusStarted:Z

    .line 5614
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsCaptureRequired:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 5615
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v0, p0, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone-IA;)V

    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 5617
    :cond_1
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsBurstCaptureRequired:Z

    if-eqz v1, :cond_5

    .line 5618
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misHighQualityBurstAvailable(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v4

    invoke-static {v1, v4, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcheckBurstConditions(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5619
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->isMultiFrame()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5620
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mrestartPreviewSessionBeforeBurst(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    goto :goto_0

    .line 5622
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, p0, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone-IA;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5626
    :cond_3
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart$1;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;)V

    .line 5637
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentSessionType()Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    if-eq v1, v4, :cond_4

    .line 5638
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcancelAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 5639
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_LOW_LIGHT:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-direct {v1, p0, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 5640
    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->setPendingTask(Ljava/lang/Runnable;)Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    .line 5639
    invoke-static {v0, p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5642
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, v4, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch-IA;)V

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 5643
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mshowCannotBurstInDarkCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    :cond_5
    :goto_0
    return-void

    .line 5606
    :cond_6
    :goto_1
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsFirstCallback:Z

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 4

    .line 5749
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsAutoFocusStarted:Z

    if-eqz v0, :cond_0

    .line 5750
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcancelAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 5752
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

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

.method public varargs handleStartAfAfterObjectTracked([Ljava/lang/Object;)V
    .locals 2

    .line 5651
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraDeviceStatusReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5654
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsAutoFocusStarted:Z

    if-eqz v0, :cond_1

    return-void

    .line 5659
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isObjectTrackingSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5664
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misStorageWritable(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 5670
    aget-object p1, p1, v0

    check-cast p1, Landroid/graphics/Rect;

    .line 5673
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStopObjectTracking(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 5674
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStartObjectTracking(Lcom/sonyericsson/android/camera/controller/StateMachine;Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    .line 5677
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsAutoFocusStarted:Z

    .line 5678
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsCaptureRequired:Z

    .line 5679
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsBurstCaptureRequired:Z

    return-void
.end method

.method public varargs handleStorageMounted([Ljava/lang/Object;)V
    .locals 0

    .line 5770
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmPredictiveApplier(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->-$$Nest$mattemptCommitSettings(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;)V

    return-void
.end method
