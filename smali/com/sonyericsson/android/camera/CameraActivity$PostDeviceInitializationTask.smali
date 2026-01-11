.class Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostDeviceInitializationTask"
.end annotation


# instance fields
.field private final mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .line 1862
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1863
    iput-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const/4 p0, 0x1

    .line 1864
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fputmIsLazyInitializationRunning(Lcom/sonyericsson/android/camera/CameraActivity;Z)V

    return-void
.end method

.method private retry()V
    .locals 3

    .line 1938
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->postDelayedEvent(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1870
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1880
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreScanOnGoing()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    .line 1881
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreCaptureOnGoing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 1889
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->canHandleAsynchronizedTask()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1893
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    .line 1894
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1895
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1896
    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getBooleanValue()Z

    move-result v2

    .line 1895
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setTorchAndCommit(Z)V

    goto :goto_0

    .line 1898
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1899
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1900
    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    .line 1899
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setDisplayFlashModeAndCommit(Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)V

    goto :goto_0

    .line 1902
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFlashModeAndCommit(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V

    .line 1907
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmStoredSettings(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1908
    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1907
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getBokehSetting(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    if-ne v0, v1, :cond_4

    .line 1910
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->VIEWER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 1911
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmStoredSettings(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 1914
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    .line 1915
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1914
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1917
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmGeotagManager(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1919
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmGeotagManager(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->notifyStatus()V

    .line 1923
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fputmLazyInitializationiTask(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;)V

    .line 1924
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmLazyInitializationiTask(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$mpostEvent(Lcom/sonyericsson/android/camera/CameraActivity;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1930
    :cond_6
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->retry()V

    :goto_1
    return-void

    .line 1883
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->retry()V

    return-void

    .line 1874
    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->retry()V

    return-void
.end method
