.class public Lcom/sonyericsson/cameracommon/storage/updater/WriteCheckTask;
.super Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;
.source "WriteCheckTask.java"


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

    .line 30
    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;-><init>(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;Ljava/util/concurrent/Semaphore;Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/updater/WriteCheckTask;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/updater/WriteCheckTask;->acquire()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/updater/WriteCheckTask;->getStorageManager()Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/updater/WriteCheckTask;->getRequestReason()Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStorageStateByWriting(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 41
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/updater/WriteCheckTask;->getStorageManager()Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    .line 42
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/updater/WriteCheckTask;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "occurred exception"

    .line 45
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "trace no semaphore release"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "Semaphore could not be released."

    .line 51
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    throw p0

    .line 56
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/updater/WriteCheckTask;->notifyFinished()V

    const/4 p0, 0x0

    return-object p0
.end method
