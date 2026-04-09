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

    .line 5327
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    return-void
.end method


# virtual methods
.method public varargs handleFinishZoom([Ljava/lang/Object;)V
    .locals 1

    .line 5407
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_STOP:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleFusionConditionChanged([Ljava/lang/Object;)V
    .locals 1

    .line 5379
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_FUSION_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnHeatedOverCritical([Ljava/lang/Object;)V
    .locals 2

    .line 5385
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5386
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11400(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 5388
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnHeatedOverCritical([Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnOnePreviewFrameUpdated([Ljava/lang/Object;)V
    .locals 4

    .line 5338
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

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11202(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;)Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    return-void
.end method

.method public varargs handleOnOrientationChanged([Ljava/lang/Object;)V
    .locals 3

    .line 5331
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    aput-object p1, v1, v2

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnRecordingError([Ljava/lang/Object;)V
    .locals 0

    .line 5374
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11300(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleOnSemiAutoDisabled([Ljava/lang/Object;)V
    .locals 0

    .line 5351
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3002(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)Z

    return-void
.end method

.method public varargs handleOnSemiAutoEnabled([Ljava/lang/Object;)V
    .locals 0

    .line 5346
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3002(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)Z

    return-void
.end method

.method public varargs handleOnStoreCompleted([Ljava/lang/Object;)V
    .locals 2

    .line 5356
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnStoreCompleted([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5358
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 5360
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5361
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$10600(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    goto :goto_0

    .line 5363
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 5364
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne v0, v1, :cond_1

    .line 5365
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->hasDeviceError()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5366
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchVideoEditor(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs handlePerformZoom([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 5400
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    .line 5401
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->getRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setZoomAndCommit(F)V

    .line 5402
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->getIndex()I

    move-result p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3200(Lcom/sonyericsson/android/camera/controller/StateMachine;I)V

    return-void
.end method

.method public varargs handlePrepareZoom([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 5393
    aget-object v1, p1, v0

    check-cast v1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    .line 5394
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->handleClearFocus([Ljava/lang/Object;)V

    .line 5395
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_START:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-interface {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method
