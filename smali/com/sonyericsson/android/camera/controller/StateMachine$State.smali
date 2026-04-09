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
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 0

    .line 1638
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1639
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .locals 0

    .line 1633
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method private isLastStoreDataResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z
    .locals 4

    .line 1797
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->takenByFastCapture:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1802
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "Last saving request is not exist."

    .line 1803
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return v1

    .line 1808
    :cond_1
    iget-object p1, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getRequestId()I

    move-result p1

    .line 1809
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 1810
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getRequestId()I

    move-result p0

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    .line 1812
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1813
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result p0

    if-ne p0, p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1

    .line 1817
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1818
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getRequestId()I

    move-result v3

    if-le v0, v3, :cond_7

    .line 1819
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result p0

    if-ne p0, p1, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    return v1

    .line 1821
    :cond_7
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

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

    .line 1660
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-object p0
.end method

.method public varargs handleCancelTouchedPosition([Ljava/lang/Object;)V
    .locals 2

    .line 1941
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1942
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 1941
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->resetFocusAreaAndRect(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    .line 1943
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1944
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    const/4 v0, 0x0

    .line 1943
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

.method public varargs handleOnAmberBlueColorChanged([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnAutoFocusDone([Ljava/lang/Object;)V
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
    .locals 5

    const/4 v0, 0x0

    .line 1704
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 1706
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, p1, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 1707
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_CRITICAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1708
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v0

    .line 1707
    invoke-interface {p0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnHeatedOverNormal([Ljava/lang/Object;)V
    .locals 1

    .line 1713
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_NORMAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnHeatedOverWarning([Ljava/lang/Object;)V
    .locals 1

    .line 1688
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

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

    const-string p1, "ERROR:PRE-SCAN Event is not handled correctly. Check sequence."

    .line 1722
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1725
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3500(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method public varargs handleOnLazyInitializationTaskRun([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnObjectLost([Ljava/lang/Object;)V
    .locals 0

    .line 1999
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

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

    .line 1957
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4200(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    return-void
.end method

.method public varargs handleOnPrepareBurstDone([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public handleOnPreviewStarted()V
    .locals 0

    return-void
.end method

.method public varargs handleOnReachBatteryLevelChanged([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 2038
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2039
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->updateBatteryIndicator(I)V

    return-void
.end method

.method public varargs handleOnReachBatteryLimit([Ljava/lang/Object;)V
    .locals 5

    .line 2027
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v3, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 2028
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_BATTERY_CRITICAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2029
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    .line 2028
    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnReachBatteryLow([Ljava/lang/Object;)V
    .locals 1

    .line 2033
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

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

.method public varargs handleOnStorageUngranted([Ljava/lang/Object;)V
    .locals 0

    .line 1862
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 1863
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Since processing is not executed in the current state, confirmation is necessary"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public varargs handleOnStoreCompleted([Ljava/lang/Object;)V
    .locals 5

    .line 1772
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3702(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 1774
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->access$3900(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;Ljava/lang/Object;)V

    .line 1776
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    move-result-object p1

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1777
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1778
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    move-result-object p1

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object p1

    .line 1777
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->isPredictiveCaptureLastImage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1779
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PREDICTIVE_CAPTURE_GROUP_STORE_COMPLETED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1780
    invoke-static {v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1779
    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1785
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1786
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getPhotoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;->onCaptureSucceeded()V

    .line 1789
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1790
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_STORE_COMPLETED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1791
    invoke-static {v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1792
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->isLastStoreDataResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v3, v0

    .line 1790
    invoke-interface {p1, v2, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public varargs handleOnStoreRequested([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnTakePictureDone([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    .line 1750
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 1752
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1752
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1755
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3600(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

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

.method public varargs handleRecordReady([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleRequestSetupHeadUpDisplay([Ljava/lang/Object;)V
    .locals 3

    .line 1870
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

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

.method public varargs handleResume([Ljava/lang/Object;)V
    .locals 1

    .line 1670
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraDisabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1671
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_USE_OF_CAMERA_RESTRICTED:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    :cond_0
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
    .locals 4

    const/4 v0, 0x0

    .line 1843
    aget-object v1, p1, v0

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const/4 v2, 0x1

    .line 1844
    aget-object p1, p1, v2

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 1846
    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne p1, v3, :cond_0

    .line 1847
    new-array p1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Storage corruption : type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 1848
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_SD_UNAVAILABLE_FOR_CORRUPT:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    .line 1849
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

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

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1652
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-nez v0, :cond_0

    .line 1653
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1655
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
