.class Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;->onStorageReadyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;

.field final synthetic val$type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter$1;->val$type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 479
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter$1;->val$type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 481
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 482
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 483
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    if-eq v0, v1, :cond_0

    .line 484
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_READY_STATE_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 487
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    .line 488
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showHiSpeedSdCardRecommendDialogOnDestinationChange()V

    :cond_1
    return-void
.end method
