.class Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;
.super Ljava/lang/Object;
.source "CameraStorageManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckFsDirectoryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

.field private final type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->this$0:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 493
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public call()Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 498
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 500
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->this$0:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->-$$Nest$fgetmWritableCheckResult(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->this$0:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->-$$Nest$fgetmWritableCheckResult(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;)Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_0

    .line 503
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CheckFsDirectoryTask ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] write check : E"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 504
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->checkWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 505
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 507
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->this$0:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->-$$Nest$fgetmWritableCheckResult(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "] write check : X"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 487
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->call()Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    move-result-object p0

    return-object p0
.end method
