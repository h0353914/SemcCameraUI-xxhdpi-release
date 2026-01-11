.class public abstract Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;
.super Ljava/lang/Object;
.source "StorageUpdateTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;

.field private final mInquiry:Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

.field private final mRequestReason:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

.field private final mStorageAccessSemaphore:Ljava/util/concurrent/Semaphore;

.field private final mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

.field private final mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;Ljava/util/concurrent/Semaphore;Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 52
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    .line 53
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mInquiry:Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

    .line 54
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mStorageAccessSemaphore:Ljava/util/concurrent/Semaphore;

    .line 55
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mCallback:Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;

    .line 56
    iput-object p6, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mRequestReason:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    return-void
.end method


# virtual methods
.method protected acquire()Z
    .locals 6

    .line 77
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke: id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mStorageAccessSemaphore:Ljava/util/concurrent/Semaphore;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xfa0

    invoke-virtual {p0, v3, v4, v2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    :try_start_1
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_1

    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "Semaphore acquired."

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception p0

    move v5, v1

    move-object v1, p0

    move p0, v5

    .line 83
    :goto_0
    const-string v2, "Unintended interrupt occurred."

    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    if-eqz p0, :cond_2

    return v0

    .line 87
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Semaphore could not be acquired due to timeout"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 90
    throw p0
.end method

.method protected getInquiry()Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mInquiry:Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

    return-object p0
.end method

.method protected getRequestReason()Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mRequestReason:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    return-object p0
.end method

.method protected getStorageManager()Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    return-object p0
.end method

.method protected getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    return-object p0
.end method

.method protected notifyFinished()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mCallback:Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;

    if-eqz v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;->onFinish(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;I)V

    :cond_0
    return-void
.end method

.method protected release()V
    .locals 2

    .line 102
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke: id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mStorageAccessSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method protected tryAcquire()Z
    .locals 2

    .line 97
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke: id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 98
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mStorageAccessSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result p0

    return p0
.end method
