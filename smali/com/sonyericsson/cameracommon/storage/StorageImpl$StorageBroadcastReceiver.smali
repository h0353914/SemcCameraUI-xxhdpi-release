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

    .line 68
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/storage/StorageImpl;Lcom/sonyericsson/cameracommon/storage/StorageImpl$1;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;-><init>(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)V

    return-void
.end method

.method private notifyStorageStatusChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 94
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getMountableStorageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v1, p1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    .line 102
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    invoke-virtual {p3}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->isStorageReadable()Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 103
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 104
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    invoke-static {p3}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->access$100(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)Lcom/sonyericsson/cameracommon/storage/StorageController;

    move-result-object p3

    invoke-virtual {p3, p1, v3}, Lcom/sonyericsson/cameracommon/storage/StorageController;->checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Z)V

    .line 107
    :cond_2
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    invoke-static {p3}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->access$200(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 108
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->access$200(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStorageStateByAction(Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    goto :goto_1

    :cond_3
    const-string p0, "onReceive: storage is not activated."

    .line 111
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_4
    new-array p0, v3, [Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "StorageType is not mountable. action = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " path="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 73
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 74
    invoke-static {p2, p1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p1

    const/4 v1, 0x1

    .line 76
    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", Path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->notifyStorageStatusChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->notifyStorageStatusChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->notifyStorageStatusChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->notifyStorageStatusChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
