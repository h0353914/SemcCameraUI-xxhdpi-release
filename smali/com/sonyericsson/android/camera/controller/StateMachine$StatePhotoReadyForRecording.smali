.class Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatePhotoReadyForRecording"
.end annotation


# instance fields
.field private final mBySideSense:Z

.field private final mIsLaunchAndRecording:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .locals 1

    .line 5074
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase-IA;)V

    .line 5075
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_READY_FOR_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 5076
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->mBySideSense:Z

    const/4 p1, 0x0

    .line 5077
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->mIsLaunchAndRecording:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZ)V
    .locals 1

    .line 5080
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase-IA;)V

    .line 5081
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_READY_FOR_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 5082
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->mBySideSense:Z

    .line 5083
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->mIsLaunchAndRecording:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZ)V

    return-void
.end method

.method private requestStartRecording()V
    .locals 4

    .line 5140
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->START_REC:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 5142
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/storage/Storage;->canPushStoreRequest(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5143
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void

    .line 5150
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraDeviceStatusReady()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->mIsLaunchAndRecording:Z

    if-nez v0, :cond_1

    .line 5151
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void

    .line 5155
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mpauseAudioPlaybackForRecord(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 5157
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 5158
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 5159
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isFhd60Fps()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isScreenRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5160
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onRecordingRestricted()V

    .line 5161
    const-string p0, "Can not start 4K / FHD(60fps) video recording during screen recording"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    .line 5166
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->hideHudIcons()V

    .line 5171
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->mBySideSense:Z

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmStartRecordingTask(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;)V

    .line 5172
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmStartRecordingTask(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5174
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->START_REC:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method


# virtual methods
.method public varargs handleCapture([Ljava/lang/Object;)V
    .locals 0

    .line 5111
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->requestStartRecording()V

    return-void
.end method

.method public varargs handleCaptureCancel([Ljava/lang/Object;)V
    .locals 1

    .line 5116
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOn4KVideoRecordingRestricted([Ljava/lang/Object;)V
    .locals 1

    .line 5179
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnFaceDetected([Ljava/lang/Object;)V
    .locals 2

    .line 5185
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

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

.method public varargs handleOnObjectTracked([Ljava/lang/Object;)V
    .locals 2

    .line 5134
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

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

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 4

    .line 5088
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

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

.method public varargs handleStartRecording([Ljava/lang/Object;)V
    .locals 2

    .line 5121
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->isThermalWarningExtraState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5122
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->disableFpsLimitation()V

    .line 5123
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 5124
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 5125
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->resumeNormalFpsOnThermalVideoRecord(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    .line 5127
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->requestStartRecording()V

    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 5093
    aget-object v0, p1, v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const/4 v1, 0x1

    .line 5094
    aget-object v1, p1, v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 5096
    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne v1, v2, :cond_1

    .line 5099
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Storage corruption : type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 5100
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 5103
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->isStorageActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 5104
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcheckSaveDestinationCanBeChange(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5105
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning-IA;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public varargs handleTriggerSlowMotion([Ljava/lang/Object;)V
    .locals 0

    .line 5192
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;->requestStartRecording()V

    return-void
.end method
