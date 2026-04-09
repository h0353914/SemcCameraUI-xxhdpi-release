.class Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater$1;
.super Ljava/lang/Object;
.source "StorageStateUpdater.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater$1;->this$0:Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;I)V
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater$1;->this$0:Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->access$000(Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;)Ljava/util/Queue;

    move-result-object v0

    monitor-enter v0

    .line 54
    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", id: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 55
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater$1;->this$0:Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->access$000(Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;)Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 56
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
