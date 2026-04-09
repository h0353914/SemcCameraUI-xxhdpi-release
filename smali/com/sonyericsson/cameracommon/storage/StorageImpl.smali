.class public Lcom/sonyericsson/cameracommon/storage/StorageImpl;
.super Ljava/lang/Object;
.source "StorageImpl.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/Storage;
.implements Lcom/sonyericsson/android/camera/CameraApplication$Pausable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageInitializeThread;,
        Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DATA_LOAD_TASK_SIZE:I = 0x1

.field private static final MULTI_STORAGE_ACCESS_PERMIT_NUM:I = 0x2

.field static final NO_INTERVAL_REMAIN_THRESHOLD:J = 0x4b000L

.field private static final SINGLE_STORAGE_ACCESS_PERMIT_NUM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "StrorageImpl"

.field private static final THREAD_NAME_DATE_LOADER_TASK:Ljava/lang/String; = "DataLoaderTask"


# instance fields
.field private mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

.field private mContext:Landroid/content/Context;

.field private mDataLoadExecutor:Ljava/util/concurrent/ExecutorService;

.field private mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRequestLock:Ljava/lang/Object;

.field private mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

.field private mStorageAccessSemaphoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageBroadcastReceiver:Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;

.field private mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    .line 59
    new-instance v1, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;-><init>(Lcom/sonyericsson/cameracommon/storage/StorageImpl;Lcom/sonyericsson/cameracommon/storage/StorageImpl$1;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageBroadcastReceiver:Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageAccessSemaphoreMap:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mRequestLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)Lcom/sonyericsson/cameracommon/storage/StorageController;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->initialize()V

    return-void
.end method

.method private varargs checkStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;[Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;)Z
    .locals 3

    .line 510
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object p0

    .line 511
    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p2, v1

    if-ne p0, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private initialize()V
    .locals 2

    .line 176
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "StorageImpl initialize"

    .line 177
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    .line 180
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->getInquiry()Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageAccessSemaphoreMap:Ljava/util/Map;

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->initialize(Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;Ljava/util/Map;)V

    return-void
.end method

.method private loadData(Lcom/sonyericsson/cameracommon/storage/DataLoader;)V
    .locals 3

    .line 416
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "StorageImpl loadData"

    .line 417
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoadExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    if-nez v0, :cond_1

    goto :goto_0

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 428
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 431
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 433
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 435
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->addLast(Ljava/lang/Object;)V

    .line 437
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 421
    :cond_4
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_5

    const-string p0, "mDataLoadExecutor or mDataLoadQueue is null"

    .line 422
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private prepareReceiver()V
    .locals 2

    .line 184
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "StorageImpl prepareReceiver"

    .line 185
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 188
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "file"

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 191
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageBroadcastReceiver:Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private release()V
    .locals 3

    .line 213
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "StorageImpl release"

    .line 214
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoadExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 219
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 224
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 224
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 228
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->releaseReceiver()V

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/StorageController;->release()V

    .line 231
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->release()V

    .line 233
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->release()V

    .line 235
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    return-void
.end method

.method private releaseReceiver()V
    .locals 1

    .line 206
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "StorageImpl releaseReceiver"

    .line 207
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageBroadcastReceiver:Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private removeFuture(J)V
    .locals 7

    .line 379
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "StorageImpl removeFuture"

    .line 380
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    if-nez v0, :cond_1

    return-void

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 387
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 388
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 389
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 390
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    .line 393
    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v2, v4

    goto :goto_1

    .line 399
    :catch_0
    :try_start_2
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_3

    const-string v1, "StrorageImpl"

    const-string v4, "ExecutionException at future.get()."

    .line 400
    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_1

    .line 395
    :catch_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_3

    const-string v1, "StrorageImpl"

    const-string v4, "InterruptedException at future.get()."

    .line 396
    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    :goto_1
    cmp-long v1, v2, p1

    if-nez v1, :cond_2

    .line 405
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    .line 406
    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "StrorageImpl"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove queue. id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 408
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 412
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public addStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 557
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->addStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V

    :cond_0
    return-void
.end method

.method public addStorageStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;)V
    .locals 1

    .line 442
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "StorageImpl addStorageStateListener"

    .line 443
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 446
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->addStorageListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;)V

    return-void
.end method

.method public canPushStoreRequest(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .locals 2

    .line 487
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->isStorageActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->getAvailableStorage()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 494
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->canPushStoreTask(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p0

    return p0
.end method

.method public cancelDataLoad(J)V
    .locals 1

    .line 372
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "StorageImpl cancelDataLoad"

    .line 373
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 375
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->removeFuture(J)V

    return-void
.end method

.method public cancelDataLoad(Z)V
    .locals 3

    .line 305
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "StorageImpl cancelDataLoad"

    .line 306
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 311
    invoke-interface {v2, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 313
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 314
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public checkValidUri(Landroid/net/Uri;)Z
    .locals 1

    .line 478
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "StorageImpl isIllegalUri"

    .line 479
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 481
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public close()V
    .locals 1

    .line 199
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "StorageImpl close"

    .line 200
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->release()V

    return-void
.end method

.method public createNotifier(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;I)Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;
    .locals 2

    .line 573
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/StorageWriteNotifierImpl;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/sonyericsson/cameracommon/storage/StorageWriteNotifierImpl;-><init>(Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;ILcom/sonyericsson/cameracommon/storage/StorageController;)V

    return-object v0
.end method

.method public getAvailableStorage()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;",
            ">;"
        }
    .end annotation

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 500
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    const/4 v6, 0x2

    .line 501
    new-array v6, v6, [Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v7, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE_NEAR_FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    aput-object v7, v6, v3

    sget-object v7, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-direct {p0, v5, v6}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->checkStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;[Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 503
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getCameraStorageManager()Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    return-object p0
.end method

.method public getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;
    .locals 1

    .line 460
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "StorageImpl getCurrentState"

    .line 461
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 464
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object p0

    return-object p0
.end method

.method public getRemainStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J
    .locals 2

    .line 469
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "StorageImpl getRemainStorage"

    .line 470
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->checkRemain(ZLcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J

    .line 473
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getAvailableStorageSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getSdGrantedUri()Landroid/net/Uri;
    .locals 1

    .line 603
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "getSdGrantedUri()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getSdGrantedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public isStorageActivated()Z
    .locals 3

    .line 545
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getMountableStorageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 546
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getStorageReadyState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->COMPLETED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-eq v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isStorageReadable()Z
    .locals 5

    .line 521
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getMountableStorageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 522
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->isStorageReadable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 523
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 524
    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", readyState = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    .line 525
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getStorageReadyState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    .line 524
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return v3

    :cond_2
    return v2
.end method

.method public isStorageReadable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .locals 0

    .line 536
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getStorageReadyState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->ACCESSIBLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    .line 537
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onWriteStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    .locals 4

    .line 582
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 583
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWriteStorage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 585
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->IMMEDIATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->PERIODIC_UPDATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->requestVolumeCheck(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    return-void
.end method

.method public open(Landroid/content/Context;)V
    .locals 6

    .line 149
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "StorageImpl open"

    .line 150
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 152
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    .line 153
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getMountableStorageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 154
    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v1, v3, :cond_1

    .line 155
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageAccessSemaphoreMap:Ljava/util/Map;

    new-instance v4, Ljava/util/concurrent/Semaphore;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 158
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageAccessSemaphoreMap:Ljava/util/Map;

    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 163
    :cond_2
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/storage/StorageController;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    .line 164
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/StorageController;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    .line 165
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageAccessSemaphoreMap:Ljava/util/Map;

    invoke-direct {v0, p1, v1, v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    .line 168
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->prepareReceiver()V

    .line 169
    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {p1, v2}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    const-string p1, "DataLoaderTask"

    .line 170
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 172
    new-instance p1, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageInitializeThread;

    invoke-direct {p1, p0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageInitializeThread;-><init>(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)V

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageInitializeThread;->start()V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 597
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "pause()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 598
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->doPause()V

    return-void
.end method

.method public removeStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 564
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->removeStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V

    :cond_0
    return-void
.end method

.method public removeStorageStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;)V
    .locals 1

    .line 451
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "StorageImpl removeStorageStateListener"

    .line 452
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 455
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->removeStorageListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;)V

    return-void
.end method

.method public requestCreateContentInfoSync(Ljava/util/ArrayList;Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;",
            ")V"
        }
    .end annotation

    .line 358
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "StorageImpl requestCreateContentInfoSync"

    .line 359
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 362
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/DataLoader;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/sonyericsson/cameracommon/storage/DataLoader;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Z)V

    .line 364
    :try_start_0
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->call()Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 366
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public requestDataLoad(ILandroid/net/Uri;ZLcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V
    .locals 7

    .line 334
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "StorageImpl requestDataLoad"

    .line 335
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 338
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/DataLoader;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/cameracommon/storage/DataLoader;-><init>(ILandroid/net/Uri;Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Z)V

    .line 339
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->loadData(Lcom/sonyericsson/cameracommon/storage/DataLoader;)V

    return-void
.end method

.method public requestDataLoad(IZLcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V
    .locals 7

    .line 321
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "StorageImpl requestDataLoad"

    .line 322
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getReadableStoragePaths()Ljava/util/List;

    move-result-object v3

    .line 326
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/DataLoader;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    move-object v1, v0

    move v4, p1

    move-object v5, p3

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/cameracommon/storage/DataLoader;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Z)V

    .line 328
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->loadData(Lcom/sonyericsson/cameracommon/storage/DataLoader;)V

    return-void
.end method

.method public requestLastDataLoad(IZLcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V
    .locals 8

    .line 345
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "StorageImpl requestDataLoad"

    .line 346
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getReadableStoragePaths()Ljava/util/List;

    move-result-object v3

    .line 350
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/DataLoader;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v1, v0

    move v4, p1

    move-object v6, p3

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/cameracommon/storage/DataLoader;-><init>(Landroid/content/Context;Ljava/util/List;IILcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Z)V

    .line 352
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->loadData(Lcom/sonyericsson/cameracommon/storage/DataLoader;)V

    return-void
.end method

.method public requestLoad(Landroid/net/Uri;ILcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V
    .locals 2

    .line 268
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "StorageImpl requestLoad"

    .line 269
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 271
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->load()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 272
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sonyericsson/cameracommon/storage/StorageImpl$1;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$1;-><init>(Lcom/sonyericsson/cameracommon/storage/StorageImpl;Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestLoad([BILcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V
    .locals 2

    .line 289
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "StorageImpl requestLoad"

    .line 290
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 292
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;-><init>(Landroid/content/Context;[BI)V

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->load()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 293
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$2;

    invoke-direct {v0, p0, p3, p1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$2;-><init>(Lcom/sonyericsson/cameracommon/storage/StorageImpl;Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestStore(Lcom/sonyericsson/cameracommon/storage/SavingRequest;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)Z
    .locals 1

    .line 242
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "requestStore"

    .line 243
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->canPushStoreTask(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p0, 0x0

    return p0

    .line 250
    :cond_1
    invoke-virtual {p1, p3}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->addCallback(Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)V

    .line 251
    instance-of p2, p1, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    if-eqz p2, :cond_3

    .line 252
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_2

    const-string p2, "StorageImpl storeVideo"

    .line 253
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 255
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->storeVideo(Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;)V

    goto :goto_0

    .line 257
    :cond_3
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_4

    const-string p2, "StorageImpl Photo"

    .line 258
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 260
    :cond_4
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->storePicture(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public resume()V
    .locals 1

    .line 591
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "resume()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 592
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->doResume()V

    return-void
.end method
