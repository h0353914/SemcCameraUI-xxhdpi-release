.class Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;
.super Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoCaptureAreaEventProcedure"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .locals 1

    .line 1698
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method

.method private startAutoFocusAfterObjectTrackedIfPossible(Landroid/graphics/Point;)V
    .locals 2

    .line 1701
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mcanSelfTimerActivation(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1704
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_AF_AFTER_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p0

    .line 1705
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getPosition(Landroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1704
    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public doTouchAreaScaleReady()V
    .locals 2

    .line 1783
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmAngleActionHandler(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->isJumpZooming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1784
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->mIsScaleReady:Z

    goto :goto_0

    .line 1786
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmAngleActionHandler(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$mpreparePinchZooming(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->mIsScaleReady:Z

    .line 1788
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isJumpZooming:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmAngleActionHandler(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->isJumpZooming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsScaleReady:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->mIsScaleReady:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method

.method public doTouchAreaScaling(F)V
    .locals 1

    .line 1794
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->mIsScaleReady:Z

    if-eqz v0, :cond_0

    .line 1795
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmAngleActionHandler(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$mperformPinchZooming(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;F)Z

    :cond_0
    return-void
.end method

.method public doTouchUp(Landroid/graphics/Point;)V
    .locals 4

    .line 1712
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isAutoReviewShowing()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1713
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hideAutoReview()V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1716
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmAngleActionHandler(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->isJumpZooming()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1717
    const-string p0, "Not handled due to isJumpZooming."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 1720
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmAngleActionHandler(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$mstopZooming(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    :goto_1
    return-void

    .line 1728
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->canFocusRectanglesBeUpdated()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 1732
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isZoomDialShown()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1733
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isFullZoomDialViewShown()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1734
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showZoomDialSimpleView(Landroid/graphics/Point;)V

    return-void

    .line 1740
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mgetCurrentCapturingMode(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v3, :cond_6

    return-void

    .line 1744
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mcanObjectTracking(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1745
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->setSelectedObjectPositionToDeviceAndViewFinder(Landroid/graphics/Point;)V

    goto :goto_2

    .line 1746
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$misCurrentStorageWritable(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1748
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->FIRST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->setFocusPositionToDeviceAndViewFinder(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 1751
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->RELEASE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->setFocusPositionToDeviceAndViewFinder(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 1754
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->switchSemiAutoStateByTouch(Z)V

    goto :goto_2

    .line 1757
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->switchSemiAutoStateByTouch(Z)V

    .line 1760
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$misTouchCaptureEnabled(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1764
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mcanObjectTracking(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1765
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->startAutoFocusAfterObjectTrackedIfPossible(Landroid/graphics/Point;)V

    .line 1768
    :cond_a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isSwitchingAnimationProgress()Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    .line 1772
    :cond_b
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->mIsBurst:Z

    if-eqz p1, :cond_c

    .line 1773
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_3

    .line 1775
    :cond_c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mselectDefaultPhotoAction(Lcom/sonyericsson/android/camera/view/UserEventHandler;Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1777
    :goto_3
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->TOUCH_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 1778
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setPredictiveLaunchState(Z)V

    return-void
.end method
