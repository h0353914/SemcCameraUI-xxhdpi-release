.class Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter$1;
.super Ljava/lang/Object;
.source "CameraSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;->onStorageReadyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

.field final synthetic val$type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1095
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter$1;->this$1:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter$1;->val$type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1098
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter$1;->this$1:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->-$$Nest$fgetmIsSdPermissionFinished(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter$1;->val$type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v0, v1, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter$1;->this$1:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->-$$Nest$fputmIsSdPermissionFinished(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Z)V

    .line 1100
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter$1;->this$1:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->-$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter$1;->val$type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1101
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter$1;->this$1:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 1102
    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->-$$Nest$monSettingValueChanged(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_0

    .line 1106
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter$1;->this$1:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->-$$Nest$mupdateSetting(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    :cond_1
    :goto_0
    return-void
.end method
