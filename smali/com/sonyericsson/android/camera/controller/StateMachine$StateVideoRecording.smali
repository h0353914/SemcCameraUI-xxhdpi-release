.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateVideoRecording"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateMachine.StateVideoRecording"


# instance fields
.field private mAlreadyRequestStop:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 1

    .line 5684
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    const/4 v0, 0x0

    .line 5681
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 5685
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 p0, 0x1

    .line 5686
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11502(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)Z

    .line 5687
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12000(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .locals 0

    .line 5678
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .locals 1

    .line 5690
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    const/4 v0, 0x0

    .line 5681
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 5691
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 5692
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12000(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    const/4 v0, 0x1

    .line 5693
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11502(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)Z

    .line 5694
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    return-void
.end method


# virtual methods
.method public entry()V
    .locals 1

    .line 5699
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoke StateVideoRecording"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5700
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->entry()V

    .line 5701
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$9000(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleCapture([Ljava/lang/Object;)V
    .locals 4

    .line 5733
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    if-eqz p1, :cond_0

    return-void

    .line 5741
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5742
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->canRecorderTakeSnapshot()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5744
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->isPaused()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 5747
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 5748
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12300(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 5749
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->incrementCountSnapshotInRecording()V

    :cond_1
    return-void
.end method

.method public varargs handleChangeSelectedFace([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 5844
    aget-object p1, p1, v0

    check-cast p1, Landroid/graphics/Point;

    .line 5847
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$7800(Lcom/sonyericsson/android/camera/controller/StateMachine;Landroid/graphics/Point;)V

    return-void
.end method

.method public varargs handleDeselectObjectPosition([Ljava/lang/Object;)V
    .locals 0

    .line 5828
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1400(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleDialogOpened([Ljava/lang/Object;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 5852
    array-length v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5853
    aget-object v1, p1, v0

    check-cast v1, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 5854
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_UPDATE_DIALOGS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-interface {v2, v3, v4}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 5856
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnFaceDetected([Ljava/lang/Object;)V
    .locals 4

    .line 5796
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object p1, p1, v3

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 5800
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12400(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleOnHeatedOverCoolingLow([Ljava/lang/Object;)V
    .locals 0

    .line 5833
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setLowPower()V

    return-void
.end method

.method public varargs handleOnHeatedOverCoolingUltraLow([Ljava/lang/Object;)V
    .locals 1

    .line 5838
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$400(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$8500(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$8600(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method public varargs handleOnHeatedOverCritical([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 5869
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 5870
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->handleOnHeatedOverCritical([Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnObjectTracked([Ljava/lang/Object;)V
    .locals 3

    .line 5820
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_TRACKED_OBJECT_STATE_UPDATED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    aput-object p1, v1, v2

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnOnePreviewFrameUpdated([Ljava/lang/Object;)V
    .locals 0

    .line 5788
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->handleOnOnePreviewFrameUpdated([Ljava/lang/Object;)V

    .line 5789
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12000(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleOnReachBatteryLimit([Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x1

    .line 5860
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 5861
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11400(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 5862
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v3, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v2, v5}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    invoke-static {v1, v3, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 5863
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_BATTERY_CRITICAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v0, [Ljava/lang/Object;

    .line 5864
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-interface {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnVideoRecordingDone([Ljava/lang/Object;)V
    .locals 3

    .line 5756
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 5761
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 5762
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11700(Lcom/sonyericsson/android/camera/controller/StateMachine;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handlePauseRecording([Ljava/lang/Object;)V
    .locals 0

    .line 5725
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    if-eqz p1, :cond_0

    return-void

    .line 5728
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12100(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleRequestSetupHeadUpDisplay([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    .line 5710
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5712
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$400(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1000(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1300(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 5713
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2900(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 5717
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    aput-object v3, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 5720
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12000(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleSetSelectedObjectPosition([Ljava/lang/Object;)V
    .locals 2

    .line 5805
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraDeviceStatusReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5809
    aget-object p1, p1, v0

    check-cast p1, Landroid/graphics/Rect;

    .line 5810
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    if-ne v0, v1, :cond_1

    .line 5812
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$7900(Lcom/sonyericsson/android/camera/controller/StateMachine;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public varargs handleStartRecording([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleStopRecording([Ljava/lang/Object;)V
    .locals 3

    const/4 p1, 0x1

    .line 5781
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 5782
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 5783
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11400(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x1

    .line 5767
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 5768
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 5771
    new-array p1, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Storage corruption : state = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 5772
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 5774
    :cond_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 5775
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 5776
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11400(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method protected isPaused()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
