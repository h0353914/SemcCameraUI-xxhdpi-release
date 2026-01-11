.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateVideoStore"
.end annotation


# instance fields
.field private final mResult:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 1

    .line 7683
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->SUCCESS:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V
    .locals 0

    .line 7677
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 7678
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STORE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 7679
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;->mResult:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V

    return-void
.end method


# virtual methods
.method public varargs handleOnOnePreviewFrameUpdated([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnStoreCompleted([Ljava/lang/Object;)V
    .locals 1

    .line 7721
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->handleOnStoreCompleted([Ljava/lang/Object;)V

    .line 7722
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7723
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$monOneShotStoreCompleted(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    :cond_0
    return-void
.end method

.method public varargs handleOnStoreRequested([Ljava/lang/Object;)V
    .locals 3

    .line 7688
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShotVideo()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->isInLockTaskMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7689
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 7690
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result:[I

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;->mResult:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 7697
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_MAX_FILESIZE_REACHED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7692
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_MAX_DURATION_REACHED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 4

    .line 7706
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

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
