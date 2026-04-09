.class Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;
.super Ljava/lang/Object;
.source "UserEventHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/SideTouchEventDetector$OnSideTouchGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSideTouchGestureListenerImpl"
.end annotation


# instance fields
.field private mTriggerEvent:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .locals 0

    .line 1650
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V
    .locals 0

    .line 1650
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method

.method private isSideTouchAvailableMode()Z
    .locals 1

    .line 1655
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6000(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onDoubleTap(Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;II)V
    .locals 5

    .line 1675
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnSideTouchGestureListenerImpl#onDoubleTap() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1677
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    sget-object v3, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;->SIDE_SENSOR:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6200(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1680
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->isSideTouchAvailableMode()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 1684
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3700(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$2200(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 1688
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeSettingDialogIfOpened()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 1689
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 1690
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isTutorialOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_2

    .line 1693
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3900(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 1697
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6300(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    move-result-object v0

    sget-object v3, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE_BURST:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    if-ne v0, v3, :cond_6

    return-void

    .line 1702
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->predictiveLaunchCoverExists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1703
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->SIDE_SENSING:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hidePredictiveLaunchCover(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;)V

    .line 1704
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setPredictiveLaunchState(Z)V

    goto :goto_0

    .line 1706
    :cond_7
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setPredictiveLaunchState(Z)V

    .line 1709
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isSelfTimerCountDownViewShown()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1710
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6000(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1711
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1713
    :cond_8
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1716
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isPreviewLayout()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 1720
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->onSideTapped(Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1721
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setSideSensePosition(II)V

    .line 1722
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array p2, v1, [Ljava/lang/Object;

    sget-object p3, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;->SIDE_SENSE:Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    aput-object p3, p2, v2

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_b
    :goto_1
    return-void

    :cond_c
    :goto_2
    return-void
.end method

.method public onGestureFinished()V
    .locals 2

    .line 1784
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;->SIDE_SENSOR:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6200(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1787
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$1500(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method

.method public onGestureStart()V
    .locals 1

    .line 1670
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;->SIDE_SENSOR:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6100(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    return-void
.end method

.method public onScroll(Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;)V
    .locals 4

    .line 1770
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnSideTouchGestureListenerImpl#onScrollEnd() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1771
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;->SIDE_SENSOR:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6200(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1774
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6000(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1775
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->mTriggerEvent:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->mTriggerEvent:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;->area:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;->area:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    if-ne v0, v1, :cond_2

    .line 1776
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3700(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object v0

    iget p1, p1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;->position:I

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->mTriggerEvent:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;

    iget p0, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;->position:I

    sub-int/2addr p1, p0

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$6500(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;I)V

    :cond_2
    return-void
.end method

.method public onScrollEnd()V
    .locals 2

    .line 1759
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnSideTouchGestureListenerImpl#onScrollEnd()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1760
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;->SIDE_SENSOR:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6200(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1763
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6000(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1764
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3700(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$2200(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    :cond_2
    return-void
.end method

.method public onScrollStart(Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;)V
    .locals 4

    .line 1730
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnSideTouchGestureListenerImpl#onScrollStart() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1732
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;->SIDE_SENSOR:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6200(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1735
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->isSideTouchAvailableMode()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 1738
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 1739
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isTutorialOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 1743
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->predictiveLaunchCoverExists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1744
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6000(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1745
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->mTriggerEvent:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;

    .line 1746
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3700(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$6400(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1747
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 1748
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3700(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->getCurrentAngle()I

    move-result p0

    .line 1747
    invoke-virtual {v0, p1, p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->onSideTouchZoom(Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;I)V

    goto :goto_0

    .line 1752
    :cond_4
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->notifyZoomOperationRejected()V

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    return-void
.end method
