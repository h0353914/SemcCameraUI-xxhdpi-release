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

    .line 1763
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1764
    iput-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const/4 p0, 0x1

    .line 1765
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$3102(Lcom/sonyericsson/android/camera/CameraActivity;Z)Z

    return-void
.end method

.method private retry()V
    .locals 3

    .line 1831
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->postDelayedEvent(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1771
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1772
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$700(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1773
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2900(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1781
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$700(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreScanOnGoing()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1782
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$700(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreCaptureOnGoing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 1790
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->canHandleAsynchronizedTask()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1794
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    .line 1795
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1796
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$700(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1797
    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getBooleanValue()Z

    move-result v0

    .line 1796
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setTorchAndCommit(Z)V

    goto :goto_0

    .line 1799
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1800
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$700(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1801
    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    .line 1800
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setDisplayFlashModeAndCommit(Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)V

    goto :goto_0

    .line 1803
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$700(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFlashModeAndCommit(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V

    .line 1807
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1808
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v4

    .line 1807
    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1810
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$3200(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1812
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$3200(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->notifyStatus()V

    .line 1816
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$3302(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;)Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;

    .line 1817
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$3300(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$3400(Lcom/sonyericsson/android/camera/CameraActivity;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1823
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->retry()V

    :goto_1
    return-void

    .line 1784
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->retry()V

    return-void

    .line 1775
    :cond_7
    :goto_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->retry()V

    return-void
.end method
