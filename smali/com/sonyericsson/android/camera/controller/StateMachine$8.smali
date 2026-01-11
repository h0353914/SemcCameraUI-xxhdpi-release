.class Lcom/sonyericsson/android/camera/controller/StateMachine$8;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOrientationListener(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;)V
    .locals 0

    .line 693
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->addOrienationListener(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;)V

    return-void
.end method

.method public getLayoutOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;
    .locals 0

    .line 688
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLastDetectedOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    move-result-object p0

    return-object p0
.end method

.method public prepareGestureShutterCountDown()V
    .locals 0

    .line 654
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->prepareGestureShutterCountDown()V

    return-void
.end method

.method public removeOrientationListener(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;)V
    .locals 0

    .line 683
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->removeOrienationListener(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;)V

    return-void
.end method

.method public resetGestureShutterCountDown()V
    .locals 2

    .line 678
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mupdatePhotoSelftimer(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V

    return-void
.end method

.method public startGestureShutterCountDown()V
    .locals 3

    .line 659
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isMessageDialogOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isSwitchingAnimationProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misLazyInitializationRunning(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 668
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misStorageWritable(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 672
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;->GESTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 673
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoPowerOffTimer()V

    return-void
.end method
