.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateCaptureCountdown"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$LedLightImpl;
    }
.end annotation


# instance fields
.field private mFeedback:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;

.field private final mLedLight:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/LedLight;

.field private final mTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTrigger(Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;)Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->mTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrecoverFlash(Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->recoverFlash()V

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;)V
    .locals 1

    .line 4745
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    .line 4746
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 4747
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 4748
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$LedLightImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$LedLightImpl;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$LedLightImpl-IA;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->mLedLight:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/LedLight;

    .line 4749
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->mTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;)V

    return-void
.end method

.method private recoverFlash()V
    .locals 2

    .line 4820
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4821
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 4822
    invoke-interface {p0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 4823
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getBooleanValue()Z

    move-result p0

    .line 4821
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setTorchAndCommit(Z)V

    goto :goto_0

    .line 4825
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4826
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 4827
    invoke-interface {p0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 4826
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFlashModeAndCommit(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private start(ILcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)V
    .locals 5

    .line 4753
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;)V

    .line 4803
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 4804
    invoke-interface {v1, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 4807
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->handleSelftimerStarted()V

    .line 4810
    :cond_1
    new-instance v3, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->mLedLight:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/LedLight;

    invoke-direct {v3, p1, v4, v1, v0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;-><init>(ILcom/sonyericsson/android/camera/controller/selftimerfeedback/LedLight;ZLcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;)V

    iput-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->mFeedback:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;

    .line 4812
    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->start(I)V

    if-eqz p2, :cond_2

    .line 4814
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->shouldPlayShutterSound()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4815
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/CameraActivity;->playSound(Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public entry()V
    .locals 3

    .line 4835
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoke StateCaptureCountdown"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4836
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getPhotoSelfTimerSetting()Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    move-result-object v0

    .line 4837
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->mTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;->SIDE_SENSE:Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    if-ne v1, v2, :cond_1

    .line 4838
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    if-ne v0, v1, :cond_1

    .line 4839
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->SIDE_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 4843
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->getDurationInMillisecond()I

    move-result v1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->getSoundType()Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->start(ILcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)V

    .line 4845
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmGestureShutter(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/GestureShutter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->handleSelftimerStarted()V

    return-void
.end method

.method public exit()V
    .locals 3

    .line 4850
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mstopPlaySound(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 4851
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->mFeedback:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->stop()V

    .line 4852
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_SELFTIMER_FINISHED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 4854
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->handleSelftimerStopped()V

    .line 4855
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmGestureShutter(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/GestureShutter;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->handleSelftimerStopped(Z)V

    return-void
.end method

.method public varargs handleCapture([Ljava/lang/Object;)V
    .locals 3

    .line 4896
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->recoverFlash()V

    .line 4897
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$3;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$3;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;)V

    .line 4905
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mshouldRestartSessionBeforeCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4906
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetNextSessionTypeForCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 4907
    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->setPendingTask(Ljava/lang/Runnable;)Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 4906
    invoke-static {v0, p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4909
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public varargs handleCaptureBurst([Ljava/lang/Object;)V
    .locals 4

    .line 4915
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misHighQualityBurstAvailable(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcheckBurstConditions(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4916
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->recoverFlash()V

    .line 4917
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$4;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$4;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;)V

    .line 4927
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->isMultiFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4928
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 4929
    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->setPendingTask(Ljava/lang/Runnable;)Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    .line 4928
    invoke-static {v0, p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4931
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 4935
    :cond_1
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$5;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$5;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;)V

    .line 4947
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mshouldRestartSessionBeforeCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4948
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcancelAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 4949
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetNextSessionTypeForCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 4950
    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->setPendingTask(Ljava/lang/Runnable;)Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    .line 4949
    invoke-static {v0, p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4952
    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public varargs handleCaptureCancel([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleCaptureReady([Ljava/lang/Object;)V
    .locals 5

    .line 4861
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 4862
    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 4864
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 4865
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->BURST_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 4866
    :goto_1
    new-instance v4, Lcom/sonyericsson/android/camera/controller/StateMachine$CameraKeyStatus;

    invoke-direct {v4, p1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$CameraKeyStatus;-><init>(ZZ)V

    .line 4867
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->recoverFlash()V

    .line 4868
    new-instance v3, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$2;

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$2;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;Lcom/sonyericsson/android/camera/controller/StateMachine$CameraKeyStatus;)V

    if-eqz p1, :cond_3

    .line 4877
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mshouldRestartSessionBeforeCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->BURST_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    .line 4878
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 4879
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetNextSessionTypeForCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v4

    invoke-direct {v0, p0, v4, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;Z)V

    .line 4880
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->setPendingTask(Ljava/lang/Runnable;)Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    .line 4879
    invoke-static {p1, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_2

    .line 4882
    :cond_2
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 4885
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mshouldRestartSessionBeforeCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4886
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetNextSessionTypeForCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v4

    invoke-direct {v2, p0, v4, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;Z)V

    .line 4887
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->setPendingTask(Ljava/lang/Runnable;)Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    .line 4886
    invoke-static {v0, p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_2

    .line 4889
    :cond_4
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :goto_2
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

.method public varargs handleOnHeatedOverCoolingUltraLow([Ljava/lang/Object;)V
    .locals 0

    .line 5060
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mnotifyCoolingUltraLow(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 0

    .line 4970
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->recoverFlash()V

    .line 4971
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;->handlePause([Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleSelfTimerCancel([Ljava/lang/Object;)V
    .locals 2

    .line 5049
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->recoverFlash()V

    .line 5050
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->mTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    invoke-virtual {p1, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendSelfTimerCancelledEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;)V

    .line 5051
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->isMultiFrame()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5052
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5054
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeToStandby(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    :goto_0
    return-void
.end method

.method public varargs handleSetSelectedObjectPosition([Ljava/lang/Object;)V
    .locals 3

    .line 5013
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 5014
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;->handleSetSelectedObjectPosition([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargs handleSetTouchedPosition([Ljava/lang/Object;)V
    .locals 3

    .line 4999
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .line 5000
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->isSmileCaptureOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 5001
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    .line 5003
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->isGestureShutterOn()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5006
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 5007
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;->handleSetTouchedPosition([Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs handleStartAfAfterObjectTracked([Ljava/lang/Object;)V
    .locals 3

    .line 5020
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraDeviceStatusReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5023
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 5024
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->recoverFlash()V

    .line 5025
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;->handleStartAfAfterObjectTracked([Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public varargs handleStartRecording([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .locals 3

    .line 4976
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke checkSaveDestinationCanBeChange:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 4977
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcheckSaveDestinationCanBeChange(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 4976
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 4978
    aget-object v0, p1, v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const/4 v1, 0x1

    .line 4979
    aget-object v1, p1, v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 4981
    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne v1, v2, :cond_2

    .line 4984
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Storage corruption : type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 4985
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 4988
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->recoverFlash()V

    .line 4989
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->isStorageActivated()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 4990
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcheckSaveDestinationCanBeChange(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4991
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning-IA;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_1

    .line 4993
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeToStandby(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    :goto_1
    return-void
.end method
