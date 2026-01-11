.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateVideoBase"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 1

    .line 6919
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State-IA;)V

    return-void
.end method


# virtual methods
.method public varargs handleFinishZoom([Ljava/lang/Object;)V
    .locals 1

    .line 7008
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_STOP:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleFusionConditionChanged([Ljava/lang/Object;)V
    .locals 1

    .line 6975
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_FUSION_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnHeatedOverCritical([Ljava/lang/Object;)V
    .locals 2

    .line 6981
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6982
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStopRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 6984
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnHeatedOverCritical([Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnOnePreviewFrameUpdated([Ljava/lang/Object;)V
    .locals 4

    .line 6930
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, [B

    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x2

    aget-object p1, p1, v3

    check-cast p1, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2, p1}, Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;-><init>([BLjava/lang/Integer;Landroid/graphics/Rect;)V

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmChapterThumbnail(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;)V

    return-void
.end method

.method public varargs handleOnOrientationChanged([Ljava/lang/Object;)V
    .locals 2

    .line 6923
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnRecordingError([Ljava/lang/Object;)V
    .locals 0

    .line 6970
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoHandleRecordingError(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleOnSemiAutoDisabled([Ljava/lang/Object;)V
    .locals 0

    .line 6943
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmIsSemiAutoEnabled(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method public varargs handleOnSemiAutoEnabled([Ljava/lang/Object;)V
    .locals 0

    .line 6938
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmIsSemiAutoEnabled(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method public varargs handleOnStoreCompleted([Ljava/lang/Object;)V
    .locals 1

    .line 6948
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnStoreCompleted([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 6950
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 6952
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6953
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$monOneShotStoreCompleted(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    goto :goto_0

    .line 6955
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 6956
    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne p1, v0, :cond_1

    .line 6957
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->hasDeviceError()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6959
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->finishSlowMotionRecording()V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs handlePerformZoom([Ljava/lang/Object;)V
    .locals 2

    .line 6996
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraDeviceStatusReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6997
    const-string p0, "ignore PerformZoom event because device is not ready"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 7000
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$msetZoomKeyTag(Lcom/sonyericsson/android/camera/controller/StateMachine;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 7001
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    .line 7002
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->getRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setZoomAndCommit(F)V

    .line 7003
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->getIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onZoomChange(I)V

    return-void
.end method

.method public varargs handlePrepareZoom([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 6989
    aget-object v0, p1, v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    .line 6990
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->handleClearFocus([Ljava/lang/Object;)V

    .line 6991
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_START:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->getIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method
