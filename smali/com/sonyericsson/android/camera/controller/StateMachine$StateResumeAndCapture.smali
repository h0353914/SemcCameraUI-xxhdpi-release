.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateResumeAndCapture"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonymobile/cameracommon/evf/Evf;Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V
    .locals 6

    .line 3247
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3248
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonymobile/cameracommon/evf/Evf;Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume-IA;)V

    .line 3249
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESUME_AND_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonymobile/cameracommon/evf/Evf;Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonymobile/cameracommon/evf/Evf;Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V

    return-void
.end method


# virtual methods
.method protected doStateReady()V
    .locals 5

    .line 3255
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 3256
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    if-ne v0, v1, :cond_0

    .line 3257
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 3258
    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v0

    .line 3259
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 3260
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcheckSaveDestinationCanBeChange(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v1

    .line 3261
    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->REMOVED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne v0, v2, :cond_0

    .line 3262
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    if-nez v1, :cond_0

    .line 3264
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_ERROR:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 3266
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const/4 v4, 0x0

    .line 3267
    invoke-interface {v2, v3, v0, v1, v4}, Lcom/sonyericsson/android/camera/view/ViewFinder;->notifyStorageStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;ZZ)V

    .line 3273
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->mStartupAction:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    invoke-static {v0, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mstartFastCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V

    return-void
.end method

.method protected getResumeTimeLimit()I
    .locals 0

    .line 3315
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->getResumeTimeLimit()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public varargs handleOnTakePictureDone([Ljava/lang/Object;)V
    .locals 3

    .line 3278
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3279
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->mIsResumeSequenceStarted:Z

    if-nez v0, :cond_2

    .line 3280
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->handleOnTakePictureDone([Ljava/lang/Object;)V

    .line 3282
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mhasRemainSavingRequest(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3283
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->hideSavingProgressBar()V

    .line 3284
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->enableAutoPowerOffTimer()V

    .line 3285
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->startResuming()V

    .line 3288
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->moveStateIfCaptureReady()V

    return-void

    .line 3292
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->isStorageActivated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3294
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mnotifyDelayedEvent(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;

    return-void

    .line 3297
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misStorageWritable(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->shouldPlayShutterSound()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3300
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->playSound(I)V

    .line 3302
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcancelAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    const/4 v0, 0x0

    .line 3305
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 3307
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoke id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3308
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mrequestStorePicture(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    .line 3310
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;->mStartupAction:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mstartFastCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V

    return-void
.end method
