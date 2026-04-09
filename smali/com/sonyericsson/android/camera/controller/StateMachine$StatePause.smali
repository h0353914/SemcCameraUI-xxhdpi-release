.class Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatePause"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateMachine.StatePause"


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .locals 1

    .line 6167
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    .line 6168
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 6170
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->hideDisplayFlashScreen()V

    .line 6175
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result p0

    if-nez p0, :cond_0

    .line 6179
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorder()V

    .line 6183
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopFaceDetection()V

    .line 6184
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopSceneRecognition()V

    .line 6185
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopFusionMonitoring()V

    .line 6188
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6189
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1400(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 6192
    :cond_1
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$9100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 6193
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$9100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 6197
    :cond_2
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopPreview()V

    .line 6199
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object p0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$5600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->removeStorageStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;)V

    .line 6200
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->commit()V

    .line 6202
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$5700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;->stop()V

    .line 6205
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_5

    .line 6206
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eqz p0, :cond_5

    .line 6211
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->exists(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 6212
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6215
    :cond_3
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 6217
    :cond_4
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$13000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/setting/LastSettings;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 6218
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$13000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/setting/LastSettings;->writePauseTime()V

    .line 6219
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$13000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/setting/LastSettings;->save()V

    :cond_5
    if-eqz p2, :cond_6

    .line 6224
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$13100(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 6228
    :cond_6
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$13200(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .locals 0

    .line 6163
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method


# virtual methods
.method public entry()V
    .locals 0

    .line 6233
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "invoke StatePause"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs handleFinalize([Ljava/lang/Object;)V
    .locals 3

    .line 6255
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFinalize;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFinalize;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleFusionConditionChanged([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnTakePictureDone([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    .line 6261
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 6263
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6264
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 6263
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6266
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3600(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    return-void
.end method

.method public varargs handleResume([Ljava/lang/Object;)V
    .locals 12

    const/4 v0, 0x1

    .line 6239
    aget-object v1, p1, v0

    move-object v4, v1

    check-cast v4, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v1, 0x2

    .line 6240
    aget-object v2, p1, v1

    move-object v7, v2

    check-cast v7, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    .line 6242
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraDisabled()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    .line 6243
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_USE_OF_CAMERA_RESTRICTED:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v0, v9, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    return-void

    .line 6247
    :cond_0
    aget-object p1, p1, v9

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 6249
    iget-object v10, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v11, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, v11

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonymobile/cameracommon/evf/Evf;Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v9

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 6250
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$5000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v1, v0

    .line 6249
    invoke-static {v10, v11, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method
