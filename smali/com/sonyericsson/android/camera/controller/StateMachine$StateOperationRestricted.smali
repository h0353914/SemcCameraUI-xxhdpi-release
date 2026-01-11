.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateOperationRestricted"
.end annotation


# instance fields
.field private mLastVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field private mParasCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 1

    .line 5320
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State-IA;)V

    .line 5306
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->mVideoStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 5307
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->mLastVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 5321
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_OPERATION_RESTRICTED:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 5323
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result p0

    if-nez p0, :cond_0

    .line 5324
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isThermalWarningExtraState()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5325
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->enableFpsLimitation()V

    .line 5330
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5331
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->enableAutoPowerOffTimer()V

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method private cacheParameter()V
    .locals 1

    .line 5551
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters()Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5553
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->cacheParameters()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->mParasCache:Ljava/util/Map;

    :cond_0
    return-void
.end method


# virtual methods
.method public entry()V
    .locals 1

    .line 5337
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoke StateOperationRestricted"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5338
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmPredictiveApplier(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->-$$Nest$mentrySuppressor(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;Ljava/lang/Object;)V

    return-void
.end method

.method public exit()V
    .locals 1

    .line 5343
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmPredictiveApplier(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->-$$Nest$mleaveSuppressor(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;Ljava/lang/Object;)V

    .line 5344
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->mParasCache:Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 5345
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public getParametersCache()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 5316
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->mParasCache:Ljava/util/Map;

    return-object p0
.end method

.method public varargs handleBokehConditionChanged([Ljava/lang/Object;)V
    .locals 1

    .line 5445
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_BOKEH_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleChangeAngleStart([Ljava/lang/Object;)V
    .locals 0

    .line 5364
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoChangeAngle(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleClearFocus([Ljava/lang/Object;)V
    .locals 2

    .line 5351
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_TOUCH_FOCUS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 5355
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->resetFocusModeAndCommit()V

    .line 5356
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misTouchAeEnabled(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5357
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 5358
    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    const/4 v0, 0x0

    .line 5357
    invoke-virtual {p1, v0, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setMeteringAreaAndCommit(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V

    :cond_0
    return-void
.end method

.method public varargs handleDeselectObjectPosition([Ljava/lang/Object;)V
    .locals 0

    .line 5484
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStopObjectTracking(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleDialogClosed([Ljava/lang/Object;)V
    .locals 2

    .line 5385
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_CLOSE_ALL_DIALOGS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 5386
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoPowerOffTimer()V

    .line 5388
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeToStandby(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 5391
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->mVideoStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    if-eqz p1, :cond_1

    .line 5392
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5393
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->mVideoStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$monOneShotStoreCompleted(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    goto :goto_0

    .line 5395
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 5396
    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne p1, v0, :cond_1

    .line 5397
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->hasDeviceError()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5398
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->mVideoStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchVideoEditor(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs handleDialogOpened([Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 5377
    array-length v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5378
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 5379
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_UPDATE_DIALOGS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargs handleFusionConditionChanged([Ljava/lang/Object;)V
    .locals 1

    .line 5532
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_FUSION_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleKeyMenu([Ljava/lang/Object;)V
    .locals 1

    .line 5406
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_UPDATE_DIALOGS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnAmberBlueColorChanged([Ljava/lang/Object;)V
    .locals 1

    .line 5430
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mupdateAmberBlueColor(Lcom/sonyericsson/android/camera/controller/StateMachine;F)V

    return-void
.end method

.method public varargs handleOnAutoFlashChanged([Ljava/lang/Object;)V
    .locals 2

    .line 5560
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_AUTO_FLASH_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnAutoHdrChanged([Ljava/lang/Object;)V
    .locals 2

    .line 5569
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_AUTO_HDR_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnAutoNightChanged([Ljava/lang/Object;)V
    .locals 2

    .line 5578
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_AUTO_NIGHT_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnBokehStrengthChanged([Ljava/lang/Object;)V
    .locals 1

    .line 5440
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mupdateBokehStrength(Lcom/sonyericsson/android/camera/controller/StateMachine;F)V

    return-void
.end method

.method public varargs handleOnBrightnessChanged([Ljava/lang/Object;)V
    .locals 1

    .line 5435
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mupdateBrightness(Lcom/sonyericsson/android/camera/controller/StateMachine;F)V

    return-void
.end method

.method public varargs handleOnContinuousPreviewFrameUpdated([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnEvfPrepared([Ljava/lang/Object;)V
    .locals 2

    .line 5466
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Lcom/sonymobile/cameracommon/evf/Evf;

    invoke-interface {p1}, Lcom/sonymobile/cameracommon/evf/Evf;->asSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPreviewSurface(Landroid/view/Surface;)V

    .line 5467
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startPreview()V

    return-void
.end method

.method public varargs handleOnHeatedOverWarningExtra([Ljava/lang/Object;)V
    .locals 0

    .line 5451
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5452
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->enableFpsLimitation()V

    :cond_0
    return-void
.end method

.method public varargs handleOnOrientationChanged([Ljava/lang/Object;)V
    .locals 3

    .line 5369
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 5372
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetOrientation(Lcom/sonyericsson/android/camera/controller/StateMachine;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setOrientationAndCommit(I)V

    return-void
.end method

.method public varargs handleOnSemiAutoDisabled([Ljava/lang/Object;)V
    .locals 0

    .line 5478
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmIsSemiAutoEnabled(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method public varargs handleOnSemiAutoEnabled([Ljava/lang/Object;)V
    .locals 1

    .line 5472
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmIsSemiAutoEnabled(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 5473
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopSceneRecognition()V

    return-void
.end method

.method public varargs handleOnStoreCompleted([Ljava/lang/Object;)V
    .locals 1

    .line 5517
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnStoreCompleted([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5518
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 5520
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    instance-of v0, v0, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    if-eqz v0, :cond_0

    .line 5521
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->mVideoStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    :cond_0
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 4

    .line 5413
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

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

.method public varargs handleRequestSetupHeadUpDisplay([Ljava/lang/Object;)V
    .locals 1

    .line 5489
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 5504
    :pswitch_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5495
    :pswitch_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public varargs handleRequestUpdateHighSensitivityFusionMode([Ljava/lang/Object;)V
    .locals 1

    .line 5527
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mupdateFusionModeSetting(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)V

    return-void
.end method

.method public varargs handleStartTransitionOperation([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 5458
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    .line 5459
    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mDegree:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    sget-object v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->START:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    if-ne p1, v1, :cond_0

    .line 5460
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging-IA;)V

    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargs handleSwitchCamera([Ljava/lang/Object;)V
    .locals 4

    .line 5423
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_CLOSE_ALL_DIALOGS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 5425
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    aget-object p1, p1, v2

    check-cast p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mswitchCamera(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V

    return-void
.end method

.method public varargs handleVideoSizeChanged([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 5538
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 5539
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->mLastVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_1

    .line 5540
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 5541
    const-string p0, "Already applied same video size change action, return"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 5545
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->mLastVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 5546
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->cacheParameter()V

    .line 5547
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeCameraIfNeeded(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method
