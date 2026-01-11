.class Lcom/sonyericsson/android/camera/controller/StateMachine$State;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/StateMachine$State$ReTrySetupHeadUpDisplayTask;
    }
.end annotation


# instance fields
.field protected mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method static bridge synthetic -$$Nest$misLastStoreDataResult(Lcom/sonyericsson/android/camera/controller/StateMachine$State;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->isLastStoreDataResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 0

    .line 2108
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2109
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method private isLastStoreDataResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z
    .locals 4

    .line 2319
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->takenByFastCapture:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2324
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLastPhotoSavingRequest(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLastVideoSavingRequest(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2325
    const-string p0, "Last saving request is not exist."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return v1

    .line 2330
    :cond_1
    iget-object p1, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getRequestId()I

    move-result p1

    .line 2331
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLastPhotoSavingRequest(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 2332
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLastVideoSavingRequest(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getRequestId()I

    move-result p0

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    .line 2334
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLastVideoSavingRequest(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object v0

    if-nez v0, :cond_5

    .line 2335
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLastPhotoSavingRequest(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result p0

    if-ne p0, p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1

    .line 2339
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLastPhotoSavingRequest(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLastVideoSavingRequest(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object v3

    .line 2340
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getRequestId()I

    move-result v3

    if-le v0, v3, :cond_7

    .line 2341
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLastPhotoSavingRequest(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result p0

    if-ne p0, p1, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    return v1

    .line 2343
    :cond_7
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLastVideoSavingRequest(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getRequestId()I

    move-result p0

    if-ne p0, p1, :cond_8

    goto :goto_3

    :cond_8
    move v1, v2

    :goto_3
    return v1
.end method


# virtual methods
.method public entry()V
    .locals 0

    return-void
.end method

.method public exit()V
    .locals 0

    return-void
.end method

.method public getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;
    .locals 0

    .line 2130
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-object p0
.end method

.method public varargs handleBokehConditionChanged([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleCancelTouchedPosition([Ljava/lang/Object;)V
    .locals 2

    .line 2473
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 2474
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 2473
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->resetFocusAreaAndRect(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    .line 2475
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 2476
    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    const/4 v0, 0x0

    .line 2475
    invoke-virtual {p1, v0, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setMeteringAreaAndCommit(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V

    return-void
.end method

.method public varargs handleCapture([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleCaptureBurst([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleCaptureCancel([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleCaptureReady([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleChangeAngleStart([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleChangeCapturingMode([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleChangeSelectedFace([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleClearFocus([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleDeselectObjectPosition([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleDialogClosed([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleDialogOpened([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleFinalize([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleFinishTransitionOperation([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleFinishZoom([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleFusionConditionChanged([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleHighFameRateRecordingDone([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleInitialize([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleKeyMenu([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOn4KVideoRecordingRestricted([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnAmberBlueColorChanged([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnAutoFlashChanged([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnAutoFocusDone([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnAutoHdrChanged([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnAutoNightChanged([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnBokehDisabled([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnBokehEnabled([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnBokehStrengthChanged([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnBrightnessChanged([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnBurstShutterDone([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnBurstStoreCompleted([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnCameraDeviceClosed([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnCameraDeviceOpened([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnCaptureRequested([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnContinuousPreviewFrameUpdated([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnEvfPrepared([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnFaceDetected([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnHeatedOverCoolingLow([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnHeatedOverCoolingUltraLow([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnHeatedOverCritical([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    .line 2176
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2178
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, p1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$StateFatal-IA;)V

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 2179
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_CRITICAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    .line 2180
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 2179
    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnHeatedOverNormal([Ljava/lang/Object;)V
    .locals 3

    .line 2185
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_NORMAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 2187
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_CANCEL_THERMAL_HINT_AND_ENABLE_FLASH_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnHeatedOverWarning([Ljava/lang/Object;)V
    .locals 1

    .line 2160
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_WARNING:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnHeatedOverWarningExtra([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnInitialAutoFocusDone([Ljava/lang/Object;)V
    .locals 0

    .line 2196
    const-string p1, "ERROR:PRE-SCAN Event is not handled correctly. Check sequence."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 2199
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcancelAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method public varargs handleOnLazyInitializationTaskRun([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnObjectLost([Ljava/lang/Object;)V
    .locals 0

    .line 2547
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->onObjectLost()V

    return-void
.end method

.method public varargs handleOnObjectTracked([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnOnePreviewFrameUpdated([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnOrientationChanged([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnPreShutterDone([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnPreTakePictureDone([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnPredictiveCaptureGroupStoreCompleted([Ljava/lang/Object;)V
    .locals 1

    .line 2489
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$monPredictiveCaptureStoreComplete(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    return-void
.end method

.method public varargs handleOnPrepareBurstDone([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnPreviewStarted([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 2685
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2686
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_PREVIEW_STARTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargs handleOnReachBatteryLevelChanged([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 2586
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2587
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->updateBatteryIndicator(I)V

    return-void
.end method

.method public varargs handleOnReachBatteryLimit([Ljava/lang/Object;)V
    .locals 4

    .line 2575
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v3, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$StateFatal-IA;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 2576
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_BATTERY_CRITICAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    .line 2577
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 2576
    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnReachBatteryLow([Ljava/lang/Object;)V
    .locals 1

    .line 2581
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOW_BATTERY_WARNING:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnRecordingError([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnRecordingStartWaitDone([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnRecordingStarted([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnSceneModeChanged([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnSemiAutoDisabled([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnSemiAutoEnabled([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnShutterDone([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnStorageReadyStateChanged([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnStoreCompleted([Ljava/lang/Object;)V
    .locals 2

    .line 2288
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmLastStoreDataResult(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    .line 2290
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmPredictiveApplier(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLastStoreDataResult(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->-$$Nest$mleaveSuppressor(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;Ljava/lang/Object;)V

    .line 2292
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLastStoreDataResult(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    move-result-object p1

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2293
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLastStoreDataResult(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    move-result-object p1

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    .line 2294
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object p1

    .line 2293
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->isPredictiveCaptureLastImage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2295
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PREDICTIVE_CAPTURE_GROUP_STORE_COMPLETED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLastStoreDataResult(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2300
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2301
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$State$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State$1;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$State;)V

    .line 2309
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v0

    instance-of v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLastStoreDataResult(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    move-result-object v0

    .line 2310
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->isLastStoreDataResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2311
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->setPendingTask(Ljava/lang/Runnable;)Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    goto :goto_0

    .line 2313
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method

.method public varargs handleOnStoreRequested([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnTakePictureDone([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    .line 2234
    aget-object v1, p1, v0

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    if-eqz v1, :cond_5

    .line 2237
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invoke id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2238
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 2237
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2240
    :cond_0
    iget-object v2, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->takenByFastCapture:Z

    if-eqz v2, :cond_4

    .line 2241
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/storage/Storage;->isStorageActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2242
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mnotifyDelayedEvent(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;

    return-void

    .line 2245
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misStorageWritable(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2246
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->shouldPlayShutterSound()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2251
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->playSound(I)V

    goto :goto_0

    .line 2254
    :cond_2
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->close()V

    .line 2256
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misCurrentStorageExternal(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2257
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 2258
    invoke-interface {p1, v1}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object p1

    .line 2259
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->REMOVED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-eq p1, v1, :cond_3

    .line 2260
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->COULD_NOT_SAVE_PHOTO:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 2266
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mrequestStorePicture(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    :cond_5
    return-void
.end method

.method public varargs handleOnVideoRecordingDone([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handlePauseRecording([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handlePerformZoom([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handlePrepareZoom([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public handlePreviewSessionConfigured([Ljava/lang/Object;)V
    .locals 2

    .line 2390
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmCurrentSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 2391
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mpublishCameraStatus(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handlePreviewSteady([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleRecordReady([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleRequestSetupHeadUpDisplay([Ljava/lang/Object;)V
    .locals 3

    .line 2385
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$State$ReTrySetupHeadUpDisplayTask;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State$ReTrySetupHeadUpDisplayTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$State;Z)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public varargs handleRequestUpdateHighSensitivityFusionMode([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleRequestUpdateVideoHdr([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleResolutionChanged([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleResume([Ljava/lang/Object;)V
    .locals 2

    .line 2140
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraDisabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2141
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_USE_OF_CAMERA_RESTRICTED:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    .line 2144
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->initLogicalCameraMode()V

    return-void
.end method

.method public varargs handleResumeRecording([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleResumeTimeout([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleSelfTimerCancel([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleSetSelectedObjectPosition([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleSetTouchedPosition([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleSlowMotionChanged([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleSlowMotionFeedbackAnimationEnd([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleStartAfAfterObjectTracked([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleStartCaptureCountDown([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleStartPreScan([Ljava/lang/Object;)V
    .locals 3

    .line 2205
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone-IA;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleStartRecording([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleStartTransitionOperation([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleStopRecording([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleStopRecordingSlowMotion([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 2365
    aget-object v1, p1, v0

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const/4 v2, 0x1

    .line 2366
    aget-object p1, p1, v2

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 2368
    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne p1, v2, :cond_0

    .line 2369
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Storage corruption : type = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", state = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 2370
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_SD_UNAVAILABLE_FOR_CORRUPT:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    .line 2371
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$StateFatal-IA;)V

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargs handleStorageMounted([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleSwitchCamera([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public handleTouchContentProgress()V
    .locals 0

    return-void
.end method

.method public varargs handleTriggerSlowMotion([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleVideoSizeChanged([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 2122
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-nez p0, :cond_0

    .line 2123
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2125
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
