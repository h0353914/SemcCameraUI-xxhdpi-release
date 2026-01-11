.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateVideoReady"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateMachine.StateVideoReady"


# instance fields
.field private mStartupAction:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 1

    .line 4375
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V
    .locals 1

    .line 4378
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 4379
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 4380
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->mStartupAction:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    .line 4384
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, p2, :cond_0

    .line 4385
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$msetCurrentCapturingMode(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public entry()V
    .locals 7

    .line 4394
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4395
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcheckThermalWarning(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 4398
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmPendingTaskListForStandby(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4399
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmPendingTaskListForStandby(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 4400
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4402
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmPendingTaskListForStandby(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4405
    :cond_2
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->hasDeviceError()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 4411
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4412
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->enableAutoPowerOffTimer()V

    .line 4415
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isTouchFocus()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4416
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mswitchVideoFaceDetection(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 4418
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmIsSemiAutoEnabled(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 4419
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misStorageWritable(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mswitchSceneRecognition(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 4423
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 4425
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetSensorOrientation(Lcom/sonyericsson/android/camera/controller/StateMachine;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 4423
    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 4427
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 4428
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isSettingChangeAcceptable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 4427
    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 4430
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isHeadUpDisplayReady()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4431
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misFusionMonitoringNeeded(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4432
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_FUSION_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v2

    .line 4434
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getLatestFusionResult()Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 4432
    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 4438
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    .line 4439
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misStorageWritable(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 4441
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_ERROR:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object p0

    .line 4442
    invoke-interface {p0, v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 4441
    invoke-virtual {v1, v2, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void

    .line 4446
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v0

    .line 4447
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getVideoQualityConfigurations()Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    move-result-object v0

    .line 4449
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 4450
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 4451
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 4452
    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 4453
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 4455
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne v1, v3, :cond_9

    .line 4456
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmHideBlackScreenFrameNum(Lcom/sonyericsson/android/camera/controller/StateMachine;I)V

    goto :goto_1

    .line 4458
    :cond_9
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v3, v5}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmHideBlackScreenFrameNum(Lcom/sonyericsson/android/camera/controller/StateMachine;I)V

    .line 4462
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misEnoughStorageSizeAvailableForOneShotVideo(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_a

    .line 4463
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_SHORTAGE_ON_ONE_SHOT_VIDEO:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    return-void

    .line 4465
    :cond_a
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v3, v1, :cond_b

    .line 4467
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;->isQualityLow()Z

    move-result v0

    if-nez v0, :cond_b

    .line 4469
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_SHORTAGE_ON_ONE_SHOT_VIDEO:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    return-void

    .line 4474
    :cond_b
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v5, :cond_c

    if-eq v0, v4, :cond_c

    goto :goto_2

    .line 4477
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0, v6}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mprepareRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 4481
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsSceneRecognitionValid:Z

    if-nez v0, :cond_d

    .line 4482
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->notifySceneRecognitionDisabled()V

    :cond_d
    return-void
.end method

.method public varargs handleChangeAngleStart([Ljava/lang/Object;)V
    .locals 0

    .line 4488
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoChangeAngle(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleChangeSelectedFace([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 4661
    aget-object p1, p1, v0

    check-cast p1, Landroid/graphics/Point;

    .line 4664
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoChangeSelectedFace(Lcom/sonyericsson/android/camera/controller/StateMachine;Landroid/graphics/Point;)V

    return-void
.end method

.method public varargs handleDeselectObjectPosition([Ljava/lang/Object;)V
    .locals 0

    .line 4692
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStopObjectTracking(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleDialogOpened([Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 4535
    array-length v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4536
    aget-object v0, p1, v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 4537
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_UPDATE_DIALOGS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 4551
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted-IA;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleKeyMenu([Ljava/lang/Object;)V
    .locals 2

    .line 4586
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_UPDATE_DIALOGS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 4590
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted-IA;)V

    sget-object p0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnEvfPrepared([Ljava/lang/Object;)V
    .locals 2

    .line 4493
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Lcom/sonymobile/cameracommon/evf/Evf;

    invoke-interface {p1}, Lcom/sonymobile/cameracommon/evf/Evf;->asSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPreviewSurface(Landroid/view/Surface;)V

    .line 4494
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startPreview()V

    return-void
.end method

.method public varargs handleOnFaceDetected([Ljava/lang/Object;)V
    .locals 2

    .line 4653
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

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

.method public varargs handleOnHeatedOverCoolingLow([Ljava/lang/Object;)V
    .locals 0

    .line 4697
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setLowPower()V

    return-void
.end method

.method public varargs handleOnHeatedOverCoolingUltraLow([Ljava/lang/Object;)V
    .locals 1

    .line 4702
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misStorageFull(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mnotifyCoolingUltraLow(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 4703
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    if-ne p1, v0, :cond_0

    .line 4704
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 4705
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->enableFpsLimitation()V

    .line 4707
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_THERMAL_FLASH_OFF_AND_WARN_HINT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnHeatedOverWarningExtra([Ljava/lang/Object;)V
    .locals 0

    .line 4638
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->enableFpsLimitation()V

    return-void
.end method

.method public varargs handleOnLazyInitializationTaskRun([Ljava/lang/Object;)V
    .locals 4

    .line 4725
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->mStartupAction:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->RECORD:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    if-ne p1, v0, :cond_0

    .line 4726
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl-IA;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setOnPreviewStartedListener(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;)V

    .line 4728
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady$1;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public varargs handleOnObjectTracked([Ljava/lang/Object;)V
    .locals 2

    .line 4684
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

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

.method public varargs handleOnPreviewStarted([Ljava/lang/Object;)V
    .locals 2

    .line 4717
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->handleOnPreviewStarted([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4718
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->mStartupAction:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->RECORD:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    if-ne p1, v1, :cond_0

    .line 4719
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargs handleOnSemiAutoDisabled([Ljava/lang/Object;)V
    .locals 1

    .line 4575
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->handleOnSemiAutoDisabled([Ljava/lang/Object;)V

    .line 4576
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misStorageWritable(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mswitchSceneRecognition(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 4577
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    const/16 v0, -0x64

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setAmberBlueColorAndCommit(I)V

    .line 4578
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setBrightnessAndCommit(I)V

    .line 4580
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSemiAutoSettingAmberBlueValue(I)V

    .line 4581
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSemiAutoSettingBrightnessValue(I)V

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 4

    .line 4556
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

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

.method public varargs handleRecordReady([Ljava/lang/Object;)V
    .locals 4

    .line 4600
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraDeviceStatusReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4601
    const-string p0, "ignore the event because device is not ready"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 4605
    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4606
    :cond_1
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v0

    .line 4607
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording-IA;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleRequestSetupHeadUpDisplay([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 4499
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4501
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misStorageWritable(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mswitchSceneRecognition(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 4502
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mswitchVideoFaceDetection(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 4506
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 4510
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isTutorialNeededToBeShownForCurrentMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4511
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted-IA;)V

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->TUTORIAL:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4518
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->getLaunchCameraMode()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->isSlowMotion()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4519
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->postSlowMotionHintText()V

    .line 4530
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->clearLaunchCameraMode()V

    return-void
.end method

.method public varargs handleRequestUpdateHighSensitivityFusionMode([Ljava/lang/Object;)V
    .locals 1

    .line 4712
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mupdateFusionModeSetting(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)V

    return-void
.end method

.method public varargs handleSetSelectedObjectPosition([Ljava/lang/Object;)V
    .locals 2

    .line 4669
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraDeviceStatusReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4673
    aget-object p1, p1, v0

    check-cast p1, Landroid/graphics/Rect;

    .line 4674
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    if-ne v0, v1, :cond_1

    .line 4676
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStartObjectTracking(Lcom/sonyericsson/android/camera/controller/StateMachine;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public varargs handleStartCaptureCountDown([Ljava/lang/Object;)V
    .locals 3

    .line 4631
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;->NORMAL:Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$smgetEventParam([Ljava/lang/Object;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    .line 4633
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown-IA;)V

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleStartRecording([Ljava/lang/Object;)V
    .locals 4

    .line 4612
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraDeviceStatusReady()Z

    move-result p1

    if-nez p1, :cond_2

    .line 4613
    const-string p1, "ignore the event because device is not ready"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 4614
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 4615
    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 4616
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isFhd60Fps()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isScreenRecording()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4617
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onRecordingRestricted()V

    .line 4618
    const-string p0, "Can not start 4K / FHD(60fps) video recording during screen recording"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 4623
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misLazyInitializationRunning(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 4624
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording-IA;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 4625
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public varargs handleStartTransitionOperation([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 4643
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    .line 4644
    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mDegree:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    sget-object v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->START:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    if-ne p1, v1, :cond_0

    .line 4645
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging-IA;)V

    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    .line 4561
    aget-object v1, p1, v0

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const/4 v2, 0x1

    .line 4562
    aget-object v2, p1, v2

    check-cast v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 4564
    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 4565
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Storage corruption : type = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", state = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 4566
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_SD_UNAVAILABLE_FOR_CORRUPT:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    .line 4567
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, p0, v0, v0, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$StateFatal-IA;)V

    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4568
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->isStorageActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 4569
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcheckSaveDestinationCanBeChange(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4570
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, p0, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning-IA;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs handleSwitchCamera([Ljava/lang/Object;)V
    .locals 1

    .line 4595
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mswitchCamera(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V

    return-void
.end method
