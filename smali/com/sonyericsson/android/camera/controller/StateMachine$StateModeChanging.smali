.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateModeChanging"
.end annotation


# instance fields
.field mPreviewBokehSatus:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 1

    .line 7731
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase-IA;)V

    .line 7732
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_MODE_CHANGING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 7733
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BOKEH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;->mPreviewBokehSatus:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method


# virtual methods
.method public entry()V
    .locals 1

    .line 7738
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoke StateModeChanging"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7741
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSceneRecognitionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7742
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopSceneRecognition()V

    :cond_1
    return-void
.end method

.method public varargs handleFinishTransitionOperation([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    .line 7748
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    .line 7749
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    iget-object v2, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mDegree:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_1

    .line 7758
    :cond_0
    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mType:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v3, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->SWITCH_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    if-eq v1, v3, :cond_3

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 7759
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getPhysicalCamera()I

    move-result v1

    iget-object v3, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mFrom:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 7760
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getPhysicalCamera()I

    move-result v3

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 7763
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    iget-object v3, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v1, v3, :cond_5

    .line 7764
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;->mPreviewBokehSatus:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    if-ne v1, v3, :cond_2

    move v0, v2

    .line 7765
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mType:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-static {p0, v1, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mrequestChangeModeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Z)V

    goto :goto_1

    .line 7761
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mType:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mswitchCamera(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V

    goto :goto_1

    .line 7751
    :cond_4
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeToStandby(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public varargs handleFusionConditionChanged([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnBokehDisabled([Ljava/lang/Object;)V
    .locals 1

    .line 7810
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setZoom(F)V

    .line 7811
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/16 v0, 0xa8

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onZoomChange(I)V

    .line 7812
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->disableBokehModeAndCommit()V

    .line 7813
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopBokehMonitoring()V

    .line 7814
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmPredictiveApplier(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->-$$Nest$mleaveSuppressor(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;Ljava/lang/Object;)V

    .line 7815
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_BOKEH_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v0, 0x0

    .line 7816
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 7815
    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnEvfPrepared([Ljava/lang/Object;)V
    .locals 2

    .line 7794
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Lcom/sonymobile/cameracommon/evf/Evf;

    invoke-interface {p1}, Lcom/sonymobile/cameracommon/evf/Evf;->asSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPreviewSurface(Landroid/view/Surface;)V

    .line 7795
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startPreview()V

    return-void
.end method

.method public varargs handleOnSemiAutoDisabled([Ljava/lang/Object;)V
    .locals 1

    .line 7782
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;->handleOnSemiAutoDisabled([Ljava/lang/Object;)V

    .line 7783
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    const/16 v0, -0x64

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setAmberBlueColorAndCommit(I)V

    .line 7784
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setBrightnessAndCommit(I)V

    .line 7786
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSemiAutoSettingAmberBlueValue(I)V

    .line 7787
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSemiAutoSettingBrightnessValue(I)V

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 4

    .line 7777
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

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

.method public varargs handleResolutionChanged([Ljava/lang/Object;)V
    .locals 0

    .line 7805
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeCameraIfNeeded(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method
