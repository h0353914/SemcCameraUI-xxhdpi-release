.class Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 0

    .line 1066
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method private handleFlashDependency()V
    .locals 2

    .line 1841
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->NIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    .line 1842
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBokehOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1843
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->resetFlashSetting()V

    :cond_0
    return-void
.end method

.method private handleNightDependency()V
    .locals 2

    .line 1889
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 1890
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1892
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    .line 1893
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-eq v0, v1, :cond_2

    .line 1894
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBokehOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1895
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->resetNightSetting()V

    goto :goto_0

    .line 1900
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    .line 1902
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    if-eq v0, v1, :cond_2

    .line 1903
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBokehOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1904
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->resetNightSetting()V

    :cond_2
    :goto_0
    return-void
.end method

.method private isSceneRecognitionValid(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z
    .locals 1

    .line 1806
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :cond_0
    move p1, v0

    goto :goto_0

    .line 1816
    :pswitch_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne p0, p2, :cond_0

    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-eq p3, p0, :cond_0

    :cond_1
    :goto_0
    :pswitch_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private notifySettingChanged(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 3

    .line 1792
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    monitor-enter v0

    .line 1793
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isSetupHeadupDisplayInvoked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v1

    .line 1794
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_MODE_CHANGING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v1

    .line 1795
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v1

    .line 1796
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAITING_EVF_PREPARED_IN_MODE_CHANGE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-eq v1, v2, :cond_0

    .line 1798
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->onSettingChanged(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 1800
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private recoverParameter()V
    .locals 1

    .line 1767
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v0

    instance-of v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;

    if-eqz v0, :cond_0

    .line 1768
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;->getParametersCache()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1771
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setParameter(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private resetFlashSetting()V
    .locals 3

    .line 1851
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 1852
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 1854
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    .line 1855
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-eq v0, v1, :cond_2

    .line 1856
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    .line 1857
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isSetupHeadupDisplayInvoked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    .line 1858
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isCameraSwitching()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1859
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 1860
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_FORCED_CHANGE_FLASH_HINT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1866
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    .line 1868
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    if-eq v0, v1, :cond_2

    .line 1869
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    .line 1870
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isSetupHeadupDisplayInvoked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    .line 1871
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isCameraSwitching()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1872
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 1873
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_FORCED_CHANGE_FLASH_HINT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private resetNightSetting()V
    .locals 2

    .line 1917
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->NIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    .line 1918
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    if-ne v0, v1, :cond_0

    .line 1919
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    .line 1920
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isSetupHeadupDisplayInvoked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    .line 1921
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isCameraSwitching()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1922
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 1923
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_FORCED_CHANGE_NIGHT_HINT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private resetZoom()V
    .locals 2

    .line 1831
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setZoom(F)V

    .line 1832
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/16 v0, 0xa8

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onZoomChange(I)V

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 2

    .line 1517
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1518
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->recoverParameter()V

    .line 1520
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misVideo(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1521
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcreateRecordingProfile(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->updateRecordingProfile(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)V

    goto :goto_0

    .line 1523
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->updateRecordingProfile(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)V

    .line 1525
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetOrientation(Lcom/sonyericsson/android/camera/controller/StateMachine;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setOrientation(I)V

    .line 1526
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->commit()V

    .line 1528
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1529
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->commit()V

    .line 1532
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mpublishCameraStatus(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 1534
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->handleFlashDependency()V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;)V
    .locals 0

    .line 1684
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setAIClearFace(Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;)V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;)V
    .locals 0

    .line 1294
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->notifySettingChanged(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/BackSoftSkin;)V
    .locals 2

    .line 1332
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1333
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1334
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/BackSoftSkin;->getBooleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setSoftSkin(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;)V
    .locals 0

    .line 1371
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setVideoBacklightCorrection(Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;)V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;)V
    .locals 1

    .line 1777
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    if-ne p1, v0, :cond_0

    .line 1778
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->handleNightDependency()V

    :cond_0
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 3

    .line 1085
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 1086
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 1087
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->isSceneRecognitionValid(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result v1

    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$msetIsSceneRecognitionValid(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 1089
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getZoom()Ljava/lang/Float;

    move-result-object v1

    .line 1090
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_0

    .line 1091
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mshowBlackScreen(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 1093
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 1097
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;)V
    .locals 1

    .line 1648
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmGestureShutter(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/GestureShutter;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misStorageWritable(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->setEnabled(Z)V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)V
    .locals 2

    .line 1102
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setDisplayFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)V

    .line 1108
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 1109
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1112
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    if-ne p1, v0, :cond_2

    .line 1113
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startAutoFlashMonitoring()V

    goto :goto_0

    .line 1115
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopAutoFlashMonitoring()V

    .line 1122
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->handleNightDependency()V

    .line 1123
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->notifySettingChanged(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;)V
    .locals 0

    .line 1653
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setDistortionCorrection(Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;)V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Ev;)V
    .locals 0

    .line 1128
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setEv(Lcom/sonyericsson/android/camera/configuration/parameters/Ev;)V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Facing;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V
    .locals 3

    .line 1138
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V

    .line 1145
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 1146
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 1149
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->RED_EYE:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 1152
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopAutoFlashMonitoring()V

    goto :goto_1

    .line 1150
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startAutoFlashMonitoring()V

    .line 1159
    :goto_1
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->NIGHT_PORTRAIT_FLASH:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne v0, p1, :cond_4

    .line 1160
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NIGHT_PORTRAIT_FLASH_SELECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1164
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->handleNightDependency()V

    .line 1165
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->notifySettingChanged(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V
    .locals 0

    .line 1206
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFocusMode(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;)V
    .locals 3

    .line 1558
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1559
    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getInt(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I

    move-result v1

    .line 1558
    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFocusRange(Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;I)V

    .line 1561
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isSetupHeadupDisplayInvoked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1562
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->updateFocusIconType(Z)V

    .line 1565
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1568
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misTouchAeEnabled(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1569
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1570
    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    .line 1569
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setMetering(Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V

    .line 1572
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    if-eq p1, v0, :cond_3

    .line 1573
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmObjectTracking(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->stop()V

    :cond_3
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/FrameLines;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)V
    .locals 6

    .line 1186
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1187
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set(FrontAngle) value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1189
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    if-ne p1, v0, :cond_2

    .line 1190
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 1191
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getWideZoomTargetRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    const p1, 0x3fc4dd2f    # 1.538f

    .line 1196
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 1197
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxZoomRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result v0

    float-to-double v4, p1

    sub-double/2addr v4, v2

    float-to-double v0, v0

    sub-double/2addr v0, v2

    div-double/2addr v4, v0

    double-to-float p1, v4

    goto :goto_0

    :cond_2
    const/high16 p1, 0x43280000    # 168.0f

    .line 1200
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setZoom(F)V

    :cond_3
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;)V
    .locals 3

    .line 1170
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFrontFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;)V

    .line 1176
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->NIGHT_PORTRAIT_FLASH:Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    if-ne v0, p1, :cond_1

    .line 1177
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NIGHT_PORTRAIT_FLASH_SELECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1181
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->notifySettingChanged(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;)V
    .locals 2

    .line 1340
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1341
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1342
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->getBooleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setSoftSkin(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)V
    .locals 4

    .line 1732
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1734
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 1735
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 1738
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyCheckUtil;->isFusionAvailableOnVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFusionMode(Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)V

    goto :goto_0

    .line 1741
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFusionMode(Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)V

    .line 1744
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isSetupHeadupDisplayInvoked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1745
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_UPDATE_FUSION_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)V
    .locals 3

    .line 1211
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setHdr(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)V

    .line 1212
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShotPhoto()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setDisableBGProcess(Z)V

    .line 1213
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 1214
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopAutoHdrMonitoring()V

    goto :goto_0

    .line 1217
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v2

    .line 1218
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isAlwaysHdrOnEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1219
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startAutoHdrMonitoring()V

    goto :goto_0

    .line 1221
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopAutoHdrMonitoring()V

    .line 1228
    :goto_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    if-ne p1, v0, :cond_2

    .line 1229
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setHdrRequired(Z)V

    goto :goto_1

    .line 1230
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    if-ne p1, v0, :cond_3

    .line 1231
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setHdrRequired(Z)V

    .line 1233
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->notifySettingChanged(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)V
    .locals 2

    .line 1238
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SPEED:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    if-eq v0, v1, :cond_1

    .line 1239
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1240
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->RED_EYE:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1241
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne v0, v1, :cond_1

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 1245
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setIso(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V
    .locals 0

    .line 1250
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setMetering(Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;)V
    .locals 3

    .line 1699
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setNightMode(Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;)V

    .line 1700
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShotPhoto()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setDisableBGProcess(Z)V

    .line 1701
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 1702
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 1712
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopAutoNightMonitoring()V

    goto :goto_0

    .line 1705
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBokehOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1706
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startAutoNightMonitoring()V

    goto :goto_0

    .line 1708
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopAutoNightMonitoring()V

    .line 1716
    :goto_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    if-ne p1, v0, :cond_2

    .line 1717
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setNightAvailable(Z)V

    goto :goto_1

    .line 1718
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    if-ne p1, v0, :cond_3

    .line 1719
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setNightAvailable(Z)V

    .line 1722
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->notifySettingChanged(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;)V
    .locals 1

    .line 1544
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    if-ne p1, v0, :cond_0

    .line 1546
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->set(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    .line 1549
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isSetupHeadupDisplayInvoked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1550
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmObjectTracking(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->stop()V

    .line 1551
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;)V
    .locals 2

    .line 1255
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    .line 1256
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getBooleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 1255
    :goto_0
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V

    .line 1258
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->notifySettingChanged(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;)V
    .locals 1

    .line 1663
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setQrCodeDetection(Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;)V

    .line 1664
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmQrDetectionController(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->handleSettingsChanged(Z)V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/ResetSettings;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V
    .locals 5

    .line 1263
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1265
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getZoom()Ljava/lang/Float;

    move-result-object v1

    .line 1266
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_0

    .line 1267
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mshowBlackScreen(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    goto :goto_0

    .line 1269
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mshowBlackScreen(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 1271
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setResolution(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    .line 1272
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1273
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->resetZoom()V

    .line 1278
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_RESOLUTION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1279
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object p1

    instance-of p1, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    .line 1280
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->isSwitchBokeh()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1281
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1, v0, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mrequestResizeEvf(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 1283
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isSetupHeadupDisplayInvoked()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1284
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/16 v1, 0xa8

    .line 1285
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1284
    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1286
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1288
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmObjectTracking(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->stop()V

    :cond_4
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V
    .locals 3

    .line 1299
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mupdatePhotoSelftimer(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V

    .line 1300
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isSetupHeadupDisplayInvoked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_SELF_TIMER_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1305
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->notifySettingChanged(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;)V
    .locals 2

    .line 1579
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    if-eq v0, v1, :cond_1

    .line 1580
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1581
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->RED_EYE:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1582
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne v0, v1, :cond_1

    .line 1583
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 1586
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setShutterSpeed(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;)V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;)V
    .locals 3

    .line 1311
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1313
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setShutterTrigger(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;)V

    .line 1319
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmGestureShutter(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/GestureShutter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->isGestureShutterOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->handleSettingsChanged(Z)V

    .line 1320
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isSetupHeadupDisplayInvoked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1321
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->setupFocusRectangles()V

    .line 1322
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1325
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1326
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->setShutterTrigger(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;)V

    :cond_3
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;)V
    .locals 2

    .line 1751
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 1758
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    if-ne p1, v0, :cond_0

    .line 1759
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->enableSideSense()V

    goto :goto_0

    .line 1761
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->disableSideSense()V

    :cond_1
    :goto_0
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)V
    .locals 5

    .line 1593
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setSlowMotion(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)V

    .line 1595
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-eq p1, v0, :cond_1

    .line 1596
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1598
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne p1, v1, :cond_0

    .line 1599
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    goto :goto_0

    .line 1600
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 1601
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 1602
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->isSceneRecognitionValid(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result v2

    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$msetIsSceneRecognitionValid(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 1603
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-virtual {v2, v3, v1, v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPreviewSizeAndFpsRangeForVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    .line 1605
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 1606
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1607
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->resetZoom()V

    .line 1611
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->updateSlowMotionView(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)V

    .line 1612
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_SLOW_MOTION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;)V
    .locals 0

    .line 1669
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setSuperResolutionZoom(Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;)V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;)V
    .locals 3

    .line 1376
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setMetering(Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V

    .line 1377
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isSetupHeadupDisplayInvoked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->FOCUS_AND_EXPOSURE:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    if-eq p1, v0, :cond_0

    .line 1382
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V
    .locals 8

    .line 1433
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1436
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1437
    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    if-ne v1, v2, :cond_0

    .line 1438
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mshowBlackScreen(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 1441
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 1442
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v1, v2, :cond_2

    .line 1443
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne p1, v2, :cond_1

    .line 1444
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    goto :goto_0

    .line 1445
    :cond_1
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne p1, v2, :cond_6

    .line 1446
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    goto :goto_0

    .line 1448
    :cond_2
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_PLUS_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v1, v2, :cond_4

    .line 1449
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne p1, v2, :cond_3

    .line 1450
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_PLUS_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    goto :goto_0

    .line 1451
    :cond_3
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne p1, v2, :cond_6

    .line 1452
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    goto :goto_0

    .line 1454
    :cond_4
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v1, v2, :cond_6

    .line 1455
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne p1, v2, :cond_5

    .line 1456
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    goto :goto_0

    .line 1457
    :cond_5
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne p1, v2, :cond_6

    .line 1458
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 1462
    :cond_6
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setVideoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    .line 1464
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->notifySettingChanged(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 1466
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    .line 1467
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-static {v3, v1, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyCheckUtil;->isFusionAvailableOnVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1468
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    .line 1470
    :cond_7
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFusionMode(Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)V

    .line 1472
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v3, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 1473
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq p1, v5, :cond_8

    .line 1474
    invoke-direct {p0, v0, v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->isSceneRecognitionValid(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v7

    goto :goto_1

    :cond_8
    move v3, v6

    .line 1473
    :goto_1
    invoke-static {v4, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$msetIsSceneRecognitionValid(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 1476
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v3

    .line 1477
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v4

    invoke-virtual {v3, v4, v1, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPreviewSizeAndFpsRangeForVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    .line 1479
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1, v0, v7}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mrequestResizeEvf(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 1481
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isSetupHeadupDisplayInvoked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1482
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_VIDEO_HDR_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    .line 1483
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    .line 1482
    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1484
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/16 v1, 0xa8

    .line 1485
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1484
    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1486
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mswitchVideoFaceDetection(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 1487
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmIsSemiAutoEnabled(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 1488
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misStorageWritable(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mswitchSceneRecognition(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 1490
    :cond_9
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1492
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_UPDATE_FUSION_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1494
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmObjectTracking(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->stop()V

    :cond_a
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;)V
    .locals 0

    .line 1500
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1501
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->updateVideoShutterTrigger()V

    :cond_0
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V
    .locals 6

    .line 1390
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked VideoSize : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1391
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1393
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 1394
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v2, :cond_1

    .line 1395
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorder()V

    .line 1397
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0, v0, p1, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->isSceneRecognitionValid(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$msetIsSceneRecognitionValid(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 1398
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v2

    .line 1399
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-virtual {v2, v3, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPreviewSizeAndFpsRangeForVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    .line 1400
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getZoom()Ljava/lang/Float;

    move-result-object v2

    .line 1401
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_2

    .line 1402
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mshowBlackScreen(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    goto :goto_0

    .line 1404
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mshowBlackScreen(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 1406
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 1407
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    .line 1408
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-static {v3, p1, v1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyCheckUtil;->isFusionAvailableOnVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1409
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    .line 1411
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFusionMode(Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)V

    .line 1414
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v5, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_VIDEO_SIZE_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v5, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1415
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1, v0, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mrequestResizeEvf(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 1417
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isSetupHeadupDisplayInvoked()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1418
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_VIDEO_HDR_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v3, 0x0

    .line 1419
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 1418
    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1420
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/16 v1, 0xa8

    .line 1422
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1420
    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1423
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1425
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_UPDATE_FUSION_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1427
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmObjectTracking(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->stop()V

    :cond_4
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)V
    .locals 3

    .line 1348
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 1350
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShotVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-virtual {p0, p1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setVideoStabilizer(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;Z)V

    return-void

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShotVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v0

    .line 1356
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    .line 1357
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 1363
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setVideoStabilizer(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;Z)V

    goto :goto_1

    .line 1365
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setVideoStabilizer(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;Z)V

    :goto_1
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;)V
    .locals 0

    .line 1674
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setVideoSuperResolutionZoom(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;)V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;)V
    .locals 0

    .line 1507
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setWhiteBalance(Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;)V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;)V
    .locals 1

    .line 1679
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "NO_FRAME"

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setZoomAssistDetail(ZLjava/lang/String;)V

    return-void
.end method
