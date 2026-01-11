.class Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StorageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/StorageImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/storage/StorageImpl;Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;-><init>(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)V

    return-void
.end method

.method private notifyStorageStatusChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 105
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getMountableStorageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v1, p1, :cond_0

    .line 113
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    invoke-virtual {p3}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->isStorageReadable()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 114
    const-string p3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 115
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    invoke-static {p3}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->-$$Nest$fgetmStorageController(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)Lcom/sonyericsson/cameracommon/storage/StorageController;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0}, Lcom/sonyericsson/cameracommon/storage/StorageController;->checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Z)V

    .line 118
    :cond_1
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    invoke-static {p3}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->-$$Nest$fgetmCameraStorageManager(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 119
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->-$$Nest$fgetmCameraStorageManager(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStorageStateByAction(Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    goto :goto_0

    .line 122
    :cond_2
    const-string p0, "onReceive: storage is not activated."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "StorageType is not mountable. action = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " path="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 82
    const-string v2, "android.os.storage.extra.STORAGE_VOLUME"

    const-class v3, Landroid/os/storage/StorageVolume;

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/storage/StorageVolume;

    .line 85
    invoke-static {p2, v1, p1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getStorageType(Landroid/os/storage/StorageVolume;Ljava/lang/String;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p1

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Action = "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ", Type = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ", Path = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 89
    const-string p2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 90
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->notifyStorageStatusChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_0
    const-string p2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 92
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->notifyStorageStatusChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    const-string p2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 94
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->notifyStorageStatusChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_2
    const-string p2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 96
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->notifyStorageStatusChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
