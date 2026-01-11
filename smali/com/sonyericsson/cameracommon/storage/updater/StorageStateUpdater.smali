.class public Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;
.super Ljava/lang/Object;
.source "StorageStateUpdater.java"


# static fields
.field private static final THREAD_NAME:Ljava/lang/String; = "SM#State:"


# instance fields
.field private mAutoUpdateTask:Ljava/util/concurrent/Future;

.field private final mBackgroundUpdater:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mCallback:Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;

.field private final mInquiry:Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

.field private mIsAutoUpdateEnabled:Z

.field private final mSemaphore:Ljava/util/concurrent/Semaphore;

.field private final mStackedTask:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

.field private final mType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;


# direct methods
.method static bridge synthetic -$$Nest$fgetmStackedTask(Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mStackedTask:Ljava/util/Queue;

    return-object p0
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;Ljava/util/concurrent/Semaphore;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mStackedTask:Ljava/util/Queue;

    .line 50
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater$1;-><init>(Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mCallback:Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;

    .line 66
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 67
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    .line 68
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mInquiry:Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

    .line 69
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 70
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SM#State:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildScheduledExecutor(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mBackgroundUpdater:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private clearStorageUpdateTask()V
    .locals 5

    const-string v0, "cancel "

    .line 156
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mAutoUpdateTask:Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 157
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v1, 0x0

    .line 158
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mAutoUpdateTask:Ljava/util/concurrent/Future;

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mStackedTask:Ljava/util/Queue;

    monitor-enter v1

    .line 161
    :try_start_0
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mStackedTask:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " tasks"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mStackedTask:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    .line 163
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 165
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mStackedTask:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    .line 166
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final getAccessSemaphore()Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mSemaphore:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method public release()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mBackgroundUpdater:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 78
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->clearStorageUpdateTask()V

    return-void
.end method

.method public requestVolumeCheck(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V
    .locals 9

    .line 90
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->APP_LAUNCH:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 91
    new-instance p1, Lcom/sonyericsson/cameracommon/storage/updater/StateUpdateTask;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mInquiry:Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mSemaphore:Ljava/util/concurrent/Semaphore;

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mCallback:Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/sonyericsson/cameracommon/storage/updater/StateUpdateTask;-><init>(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;Ljava/util/concurrent/Semaphore;Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mStackedTask:Ljava/util/Queue;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const-string/jumbo v2, "submit StateUpdateTask."

    aput-object v2, p2, v1

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 95
    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mBackgroundUpdater:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 96
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mStackedTask:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 97
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 98
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mIsAutoUpdateEnabled:Z

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mAutoUpdateTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    .line 100
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mAutoUpdateTask:Ljava/util/concurrent/Future;

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mBackgroundUpdater:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->STOP:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    if-eq p1, v0, :cond_4

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mBackgroundUpdater:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v8, Lcom/sonyericsson/cameracommon/storage/updater/StateUpdateTask;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mInquiry:Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mSemaphore:Ljava/util/concurrent/Semaphore;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/cameracommon/storage/updater/StateUpdateTask;-><init>(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;Ljava/util/concurrent/Semaphore;Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 108
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->getIntervalMillis()I

    move-result p1

    int-to-long p1, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 105
    invoke-interface {v0, v8, p1, p2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mAutoUpdateTask:Ljava/util/concurrent/Future;

    goto :goto_0

    .line 112
    :cond_3
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_4

    const-string p0, "Rejected the update for storage state."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public declared-synchronized requestWriteCheck(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V
    .locals 8

    monitor-enter p0

    .line 121
    :try_start_0
    new-instance v7, Lcom/sonyericsson/cameracommon/storage/updater/WriteCheckTask;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mInquiry:Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mSemaphore:Ljava/util/concurrent/Semaphore;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mCallback:Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;

    move-object v0, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/storage/updater/WriteCheckTask;-><init>(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;Ljava/util/concurrent/Semaphore;Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 123
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mStackedTask:Ljava/util/Queue;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 124
    :try_start_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "submit WriteCheckTask."

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mBackgroundUpdater:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v7}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mStackedTask:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 127
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 127
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAutoUpdateEnabled(Z)V
    .locals 1

    .line 136
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mIsAutoUpdateEnabled:Z

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->mType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->calculateNextPollingInterval(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->PERIODIC_UPDATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->requestVolumeCheck(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->clearStorageUpdateTask()V

    :goto_0
    return-void
.end method
