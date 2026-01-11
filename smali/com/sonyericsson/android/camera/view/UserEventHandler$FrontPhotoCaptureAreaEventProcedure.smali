.class Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;
.super Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaEventProcedure;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrontPhotoCaptureAreaEventProcedure"
.end annotation


# instance fields
.field protected mIsBurst:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .locals 1

    .line 1590
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaEventProcedure-IA;)V

    const/4 p1, 0x0

    .line 1591
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->mIsBurst:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 4

    .line 1632
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmAngleActionHandler(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->isJumpZooming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1633
    const-string p0, "Not handled due to isJumpZooming."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 1636
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmAngleActionHandler(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$mstopZooming(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1640
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->clearBurstShootingRejectedReason()V

    .line 1641
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    .line 1642
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isTouchFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->mIsBurst:Z

    if-nez v1, :cond_2

    .line 1643
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CLEAR_FOCUS:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    goto :goto_0

    .line 1644
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    :goto_0
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 1641
    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1645
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->mIsBurst:Z

    return-void
.end method

.method public doClick(Landroid/graphics/Point;)V
    .locals 3

    .line 1686
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_AF_AFTER_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v2

    .line 1687
    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getPosition(Landroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 1686
    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1688
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$misTouchCaptureEnabled(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1689
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isSwitchingAnimationProgress()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1692
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mselectDefaultPhotoAction(Lcom/sonyericsson/android/camera/view/UserEventHandler;Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1693
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->TOUCH_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    :cond_1
    return-void
.end method

.method public doLongClick(Landroid/graphics/Point;)V
    .locals 3

    .line 1650
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isSwitchingAnimationProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1654
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$misTouchCaptureEnabled(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1658
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$misInternalStorageWritable(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1659
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$misBurstShotEnabled(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1660
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hideAutoReview()V

    .line 1662
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mcanObjectTracking(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1664
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_AF_AFTER_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v2

    .line 1665
    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getPosition(Landroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 1664
    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1668
    :cond_2
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->FIRST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->setFocusPositionToDeviceAndViewFinder(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 1671
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->RELEASE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->setFocusPositionToDeviceAndViewFinder(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    :goto_0
    const/4 p1, 0x1

    .line 1674
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->mIsBurst:Z

    .line 1675
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_BURST:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1677
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmHandlingEventSource(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mnotifyBurstShotRejectedReason(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V

    goto :goto_1

    .line 1679
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$misBurstShotEnabled(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1680
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmHandlingEventSource(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mnotifyBurstShotRejectedReason(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public doTouchDown()V
    .locals 1

    const/4 v0, 0x0

    .line 1595
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->mIsBurst:Z

    return-void
.end method

.method public doTouchUp(Landroid/graphics/Point;)V
    .locals 1

    .line 1600
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isFrontAngleChanging()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1604
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isAutoReviewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1605
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hideAutoReview()V

    return-void

    .line 1609
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->canFocusRectanglesBeUpdated()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 1613
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$misTouchCaptureEnabled(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1614
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isSwitchingAnimationProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 1618
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mselectDefaultPhotoAction(Lcom/sonyericsson/android/camera/view/UserEventHandler;Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1620
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->TOUCH_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    goto :goto_0

    .line 1621
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$misCurrentStorageWritable(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1623
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->FIRST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->setFocusPositionToDeviceAndViewFinder(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 1626
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->RELEASE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;->setFocusPositionToDeviceAndViewFinder(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    :cond_5
    :goto_0
    return-void
.end method
