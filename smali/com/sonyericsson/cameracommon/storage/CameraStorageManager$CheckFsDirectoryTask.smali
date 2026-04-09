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

.field private final forceSdCardGrantedCheck:Z

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

.field private final type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Z)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->this$0:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 567
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->context:Landroid/content/Context;

    .line 568
    iput-boolean p4, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->forceSdCardGrantedCheck:Z

    return-void
.end method


# virtual methods
.method public call()Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 573
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 574
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getPathFromType(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 576
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_3

    .line 577
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->forceSdCardGrantedCheck:Z

    if-eqz v2, :cond_8

    .line 578
    new-array v2, v5, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckFsDirectoryTask ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "] write check : E"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 579
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->this$0:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getSdGrantedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 581
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->context:Landroid/content/Context;

    .line 582
    invoke-static {v3, v2}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->checkSdCardGranted(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;

    move-result-object v3

    .line 583
    sget-object v6, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;->READ_ONLY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;

    if-ne v3, v6, :cond_0

    .line 584
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_0

    .line 585
    :cond_0
    sget-object v6, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;->GRANTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;

    if-ne v3, v6, :cond_1

    .line 586
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->setSdCardGranted(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 588
    :cond_1
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_UNGRANTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 590
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x3

    .line 591
    invoke-virtual {v3, v2, v6}, Landroid/content/ContentResolver;->releasePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "can not releasePersistableUriPermission"

    .line 595
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 599
    :cond_2
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_UNGRANTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 601
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->this$0:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->access$000(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    new-array v2, v5, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckFsDirectoryTask ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "] write check : X"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v4

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 605
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->this$0:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->access$000(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 606
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->this$0:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->access$000(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_2

    .line 608
    :cond_4
    new-array v2, v5, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckFsDirectoryTask ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "] write check : E"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    if-nez v1, :cond_5

    const-string v0, "storage path is null"

    .line 610
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 611
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_NO_DCIM:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_1

    .line 612
    :cond_5
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->checkAndCreateDirectory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 613
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_NO_DCIM:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_1

    .line 614
    :cond_6
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->checkWritable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 615
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 617
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->this$0:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->access$000(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    new-array v2, v5, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckFsDirectoryTask ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "] write check : X"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v4

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 623
    :cond_8
    :goto_2
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-ne v0, p0, :cond_9

    .line 624
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->isAlreadyLastFileExist(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 625
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL_COUNT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    :cond_9
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 559
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->call()Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    move-result-object p0

    return-object p0
.end method
