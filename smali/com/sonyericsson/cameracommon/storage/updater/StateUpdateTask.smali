.class public Lcom/sonyericsson/cameracommon/storage/updater/StateUpdateTask;
.super Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;
.source "StateUpdateTask.java"


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;Ljava/util/concurrent/Semaphore;Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V
    .locals 0
    .param p1    # Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/Semaphore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;-><init>(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;Ljava/util/concurrent/Semaphore;Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/updater/StateUpdateTask;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/updater/StateUpdateTask;->getInquiry()Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;->getReservedSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J

    move-result-wide v1

    .line 39
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/updater/StateUpdateTask;->getRequestReason()Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    move-result-object v3

    .line 41
    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->APP_LAUNCH:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/updater/StateUpdateTask;->acquire()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/updater/StateUpdateTask;->getStorageManager()Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStateByVolumeInfo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;JLcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 46
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/updater/StateUpdateTask;->getStorageManager()Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/updater/StateUpdateTask;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "occurred exception"

    .line 50
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "trace no semaphore release"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "Semaphore could not be released."

    .line 56
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    throw p0

    .line 61
    :cond_0
    new-array v1, v6, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StateUpdateTask["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]: One time update failed."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-wide/16 v7, 0x0

    cmp-long v4, v1, v7

    if-nez v4, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/updater/StateUpdateTask;->tryAcquire()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 68
    :try_start_2
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/updater/StateUpdateTask;->getStorageManager()Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStateByVolumeInfo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;JLcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 69
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/updater/StateUpdateTask;->getStorageManager()Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/updater/StateUpdateTask;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "trace"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "Semaphore could not be released."

    .line 76
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    throw p0

    .line 81
    :cond_2
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_3

    new-array v1, v6, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StateUpdateTask["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]: SKIP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 83
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/updater/StateUpdateTask;->getStorageManager()Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v1

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/updater/StateUpdateTask;->getStorageManager()Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/updater/StateUpdateTask;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->calculateNextPollingInterval(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->PERIODIC_UPDATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    .line 83
    invoke-virtual {v1, v0, v2, v3}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->requestVolumeCheck(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 88
    :goto_2
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/updater/StateUpdateTask;->notifyFinished()V

    const/4 p0, 0x0

    return-object p0
.end method
