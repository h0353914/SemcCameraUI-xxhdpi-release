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

    .line 1806
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method

.method private isSideTouchAvailableMode()Z
    .locals 2

    .line 1811
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mgetCurrentCapturingMode(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public onDoubleTap(Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;II)V
    .locals 3

    .line 1831
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnSideTouchGestureListenerImpl#onDoubleTap() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1833
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;->SIDE_SENSOR:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$misEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1836
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->isSideTouchAvailableMode()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 1840
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmAngleActionHandler(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$mstopZooming(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 1844
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeSettingDialogIfOpened()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    .line 1845
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    .line 1846
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isTutorialOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    .line 1849
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$misCurrentStorageWritable(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 1853
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmActionByKey(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE_BURST:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    if-ne v0, v1, :cond_6

    return-void

    .line 1858
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->predictiveLaunchCoverExists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 1859
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->SIDE_SENSING:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hidePredictiveLaunchCover(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;)V

    .line 1860
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setPredictiveLaunchState(Z)V

    goto :goto_0

    .line 1862
    :cond_7
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setPredictiveLaunchState(Z)V

    .line 1865
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isSelfTimerCountDownViewShown()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1866
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mgetCurrentCapturingMode(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1867
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1869
    :cond_8
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1872
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isPreviewLayout()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 1876
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->onSideTapped(Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1877
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setSideSensePosition(II)V

    .line 1878
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;->SIDE_SENSE:Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_b
    :goto_1
    return-void
.end method

.method public onGestureFinished()V
    .locals 2

    .line 1940
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;->SIDE_SENSOR:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$misEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1943
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mresetSideTouchEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method

.method public onGestureStart()V
    .locals 1

    .line 1826
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;->SIDE_SENSOR:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mstartEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    return-void
.end method

.method public onScroll(Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;)V
    .locals 2

    .line 1926
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnSideTouchGestureListenerImpl#onScrollEnd() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1927
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;->SIDE_SENSOR:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$misEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1930
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mgetCurrentCapturingMode(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1931
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->mTriggerEvent:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;->area:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;->area:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    if-ne v0, v1, :cond_2

    .line 1932
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmAngleActionHandler(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object v0

    iget p1, p1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;->position:I

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->mTriggerEvent:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;

    iget p0, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;->position:I

    sub-int/2addr p1, p0

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$mupdateSideTouchZoomStrength(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;I)V

    :cond_2
    return-void
.end method

.method public onScrollEnd()V
    .locals 2

    .line 1915
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnSideTouchGestureListenerImpl#onScrollEnd()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1916
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;->SIDE_SENSOR:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$misEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1919
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mgetCurrentCapturingMode(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1920
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmAngleActionHandler(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$mstopZooming(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    :cond_2
    return-void
.end method

.method public onScrollStart(Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;)V
    .locals 2

    .line 1886
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnSideTouchGestureListenerImpl#onScrollStart() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1888
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;->SIDE_SENSOR:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$misEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1891
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->isSideTouchAvailableMode()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 1894
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    .line 1895
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isTutorialOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 1899
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->predictiveLaunchCoverExists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1900
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mgetCurrentCapturingMode(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1901
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->mTriggerEvent:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;

    .line 1902
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmAngleActionHandler(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$mprepareSideTouchZoom(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1903
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmAngleActionHandler(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object p0

    .line 1904
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->getCurrentAngle()I

    move-result p0

    .line 1903
    invoke-virtual {v0, p1, p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->onSideTouchZoom(Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;I)V

    goto :goto_0

    .line 1908
    :cond_4
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->notifyZoomOperationRejected()V

    :cond_5
    :goto_0
    return-void
.end method
