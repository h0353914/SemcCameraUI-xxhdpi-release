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

    .line 7293
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    const/4 v0, 0x0

    .line 7290
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 7294
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 p0, 0x1

    .line 7295
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmIsVideoRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 7296
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$msendVideoChapterThumbnailToViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .locals 1

    .line 7299
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    const/4 v0, 0x0

    .line 7290
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 7300
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 7301
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$msendVideoChapterThumbnailToViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    const/4 v0, 0x1

    .line 7302
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmIsVideoRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 7303
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    return-void
.end method


# virtual methods
.method public entry()V
    .locals 1

    .line 7308
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoke StateVideoRecording"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7309
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->entry()V

    .line 7310
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcheckThermalWarning(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleCapture([Ljava/lang/Object;)V
    .locals 4

    .line 7342
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    if-eqz p1, :cond_0

    return-void

    .line 7350
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result p1

    if-nez p1, :cond_1

    .line 7352
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->isPaused()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording-IA;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 7355
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 7356
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoCaptureWhileRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 7357
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->incrementCountSnapshotInRecording()V

    :cond_1
    return-void
.end method

.method public varargs handleChangeSelectedFace([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 7466
    aget-object p1, p1, v0

    check-cast p1, Landroid/graphics/Point;

    .line 7469
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoChangeSelectedFace(Lcom/sonyericsson/android/camera/controller/StateMachine;Landroid/graphics/Point;)V

    return-void
.end method

.method public varargs handleDeselectObjectPosition([Ljava/lang/Object;)V
    .locals 0

    .line 7442
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStopObjectTracking(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleDialogOpened([Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 7474
    array-length v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 7475
    aget-object v0, p1, v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 7476
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_UPDATE_DIALOGS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 7478
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted-IA;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnFaceDetected([Ljava/lang/Object;)V
    .locals 3

    .line 7410
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 7414
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mrequestVideoSmileCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleOnHeatedOverCoolingLow([Ljava/lang/Object;)V
    .locals 0

    .line 7447
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setLowPower()V

    return-void
.end method

.method public varargs handleOnHeatedOverCoolingUltraLow([Ljava/lang/Object;)V
    .locals 2

    .line 7452
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 7453
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStopRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 7457
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_THERMAL_FLASH_OFF_AND_WARN_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7459
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misStorageFull(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mnotifyCoolingUltraLow(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    :goto_0
    return-void
.end method

.method public varargs handleOnHeatedOverCritical([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 7491
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 7492
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->handleOnHeatedOverCritical([Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnObjectTracked([Ljava/lang/Object;)V
    .locals 2

    .line 7434
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

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

.method public varargs handleOnOnePreviewFrameUpdated([Ljava/lang/Object;)V
    .locals 0

    .line 7402
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->handleOnOnePreviewFrameUpdated([Ljava/lang/Object;)V

    .line 7403
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$msendVideoChapterThumbnailToViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleOnReachBatteryLimit([Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x1

    .line 7482
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 7483
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStopRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 7484
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v3, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v2, v5}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$StateFatal-IA;)V

    invoke-static {v1, v3, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 7485
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_BATTERY_CRITICAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    .line 7486
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnVideoRecordingDone([Ljava/lang/Object;)V
    .locals 3

    .line 7363
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore-IA;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 7368
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 7369
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mpauseVideoRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handlePauseRecording([Ljava/lang/Object;)V
    .locals 0

    .line 7334
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    if-eqz p1, :cond_0

    return-void

    .line 7337
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoPauseRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handlePreviewSteady([Ljava/lang/Object;)V
    .locals 1

    .line 7502
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmIsLaunchAndRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 7503
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->requestOnePreviewFrame()V

    .line 7504
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmIsLaunchAndRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 7506
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->lock3A(Z)V

    return-void
.end method

.method public varargs handleRequestSetupHeadUpDisplay([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 7319
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7321
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misStorageWritable(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mswitchSceneRecognition(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 7322
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mswitchVideoFaceDetection(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 7326
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 7329
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$msendVideoChapterThumbnailToViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleSetSelectedObjectPosition([Ljava/lang/Object;)V
    .locals 2

    .line 7419
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraDeviceStatusReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 7423
    aget-object p1, p1, v0

    check-cast p1, Landroid/graphics/Rect;

    .line 7424
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    if-ne v0, v1, :cond_1

    .line 7426
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStartObjectTracking(Lcom/sonyericsson/android/camera/controller/StateMachine;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public varargs handleStartRecording([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleStopRecording([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x1

    .line 7388
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 7389
    array-length v1, p1

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 7390
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-direct {v2, v3, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7392
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 7394
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStopRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 7395
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->isThermalWarningExtraState()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7396
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->enableFpsLimitation()V

    :cond_1
    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x1

    .line 7374
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 7375
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne p1, v1, :cond_1

    .line 7378
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Storage corruption : state = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 7379
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 7381
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 7382
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 7383
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStopRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method protected isPaused()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
