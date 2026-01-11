.class public Lcom/sonyericsson/cameracommon/storage/StorageImpl;
.super Ljava/lang/Object;
.source "StorageImpl.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/Storage;
.implements Lcom/sonyericsson/android/camera/CameraApplication$Pausable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;,
        Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageInitializeThread;
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
.method static bridge synthetic -$$Nest$fgetmCameraStorageManager(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStorageController(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)Lcom/sonyericsson/cameracommon/storage/StorageController;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitialize(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->initialize()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    .line 63
    new-instance v1, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;-><init>(Lcom/sonyericsson/cameracommon/storage/StorageImpl;Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver-IA;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageBroadcastReceiver:Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageAccessSemaphoreMap:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mRequestLock:Ljava/lang/Object;

    return-void
.end method

.method private varargs checkStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;[Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;)Z
    .locals 3

    .line 513
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object p0

    .line 514
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

    .line 187
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "StorageImpl initialize"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    .line 191
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->getInquiry()Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageAccessSemaphoreMap:Ljava/util/Map;

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->initialize(Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;Ljava/util/Map;)V

    return-void
.end method

.method private loadData(Lcom/sonyericsson/cameracommon/storage/DataLoader;)V
    .locals 3

    .line 428
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 429
    const-string v0, "StorageImpl loadData"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoadExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    if-nez v1, :cond_1

    goto :goto_0

    .line 439
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 440
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 443
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 445
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 447
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    .line 449
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 433
    :cond_4
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_5

    .line 434
    const-string p0, "mDataLoadExecutor or mDataLoadQueue is null"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private prepareReceiver()V
    .locals 3

    .line 195
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "StorageImpl prepareReceiver"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 199
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 200
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 201
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageBroadcastReceiver:Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private release()V
    .locals 3

    .line 224
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 225
    const-string v0, "StorageImpl release"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoadExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 229
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 230
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 235
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 235
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 239
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->releaseReceiver()V

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/StorageController;->release()V

    .line 242
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->release()V

    .line 244
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->release()V

    .line 246
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    return-void
.end method

.method private releaseReceiver()V
    .locals 1

    .line 217
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "StorageImpl releaseReceiver"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageBroadcastReceiver:Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private removeFuture(J)V
    .locals 7

    .line 391
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 392
    const-string v0, "StorageImpl removeFuture"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    if-nez v0, :cond_1

    return-void

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 400
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 401
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 402
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 405
    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 411
    :catch_0
    :try_start_2
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_3

    .line 412
    new-array v1, v4, [Ljava/lang/String;

    const-string v5, "StrorageImpl"

    aput-object v5, v1, v3

    const-string v5, "ExecutionException at future.get()."

    aput-object v5, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_1

    .line 407
    :catch_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_3

    .line 408
    new-array v1, v4, [Ljava/lang/String;

    const-string v5, "StrorageImpl"

    aput-object v5, v1, v3

    const-string v5, "InterruptedException at future.get()."

    aput-object v5, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-wide/16 v5, 0x0

    :goto_2
    cmp-long v1, v5, p1

    if-nez v1, :cond_2

    .line 417
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_4

    .line 418
    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "StrorageImpl"

    aput-object v4, v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove queue. id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 420
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 424
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

    .line 560
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->addStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V

    :cond_0
    return-void
.end method

.method public addStorageStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;)V
    .locals 1

    .line 454
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 455
    const-string v0, "StorageImpl addStorageStateListener"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 458
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->addStorageListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;)V

    return-void
.end method

.method public canPushStoreRequest(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .locals 2

    .line 490
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->isStorageActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->getAvailableStorage()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 497
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->canPushStoreTask(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p0

    return p0
.end method

.method public cancelDataLoad(J)V
    .locals 1

    .line 384
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 385
    const-string v0, "StorageImpl cancelDataLoad"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 387
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->removeFuture(J)V

    return-void
.end method

.method public cancelDataLoad(Z)V
    .locals 3

    .line 317
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "StorageImpl cancelDataLoad"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
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

    .line 323
    invoke-interface {v2, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 325
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 326
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

.method public clearPendingProcessingMedia(I)V
    .locals 0

    .line 611
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->clearPendingProcessingMedia(I)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 210
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "StorageImpl close"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->release()V

    return-void
.end method

.method public createNotifier(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;I)Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;
    .locals 2

    .line 576
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/StorageWriteNotifierImpl;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/sonyericsson/cameracommon/storage/StorageWriteNotifierImpl;-><init>(Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;ILcom/sonyericsson/cameracommon/storage/StorageController;)V

    return-object v0
.end method

.method public getAvailableStorage()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;",
            ">;"
        }
    .end annotation

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 503
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 504
    sget-object v5, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE_NEAR_FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    filled-new-array {v5, v6}, [Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->checkStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;[Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 506
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getCameraStorageManager()Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    return-object p0
.end method

.method public getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;
    .locals 1

    .line 472
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 473
    const-string v0, "StorageImpl getCurrentState"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 476
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object p0

    return-object p0
.end method

.method public getRemainStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J
    .locals 2

    .line 481
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 482
    const-string v0, "StorageImpl getRemainStorage"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->checkRemain(ZLcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J

    .line 485
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getAvailableStorageSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J

    move-result-wide p0

    return-wide p0
.end method

.method public isStorageActivated()Z
    .locals 3

    .line 548
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

    .line 549
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
    .locals 3

    .line 524
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getMountableStorageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 525
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->isStorageReadable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 526
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "type = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", readyState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    .line 528
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getStorageReadyState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 527
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public isStorageReadable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .locals 0

    .line 539
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getStorageReadyState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->ACCESSIBLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    .line 540
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
    .locals 2

    .line 590
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWriteStorage : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 593
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->IMMEDIATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->PERIODIC_UPDATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->requestVolumeCheck(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    return-void
.end method

.method public open(Landroid/content/Context;)V
    .locals 6

    .line 160
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "StorageImpl open"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 163
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    .line 164
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

    .line 165
    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v1, v3, :cond_1

    .line 166
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageAccessSemaphoreMap:Ljava/util/Map;

    new-instance v4, Ljava/util/concurrent/Semaphore;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 169
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageAccessSemaphoreMap:Ljava/util/Map;

    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    :cond_2
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/storage/StorageController;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    .line 175
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/StorageController;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    .line 176
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageAccessSemaphoreMap:Ljava/util/Map;

    invoke-direct {v0, p1, v1, v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    .line 179
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->prepareReceiver()V

    .line 180
    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {p1, v2}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 181
    const-string p1, "DataLoaderTask"

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 183
    new-instance p1, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageInitializeThread;

    invoke-direct {p1, p0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageInitializeThread;-><init>(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)V

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageInitializeThread;->start()V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 605
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "pause()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 606
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->doPause()V

    return-void
.end method

.method public removeStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 567
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->removeStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V

    :cond_0
    return-void
.end method

.method public removeStorageStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;)V
    .locals 1

    .line 463
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 464
    const-string v0, "StorageImpl removeStorageStateListener"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 467
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

    .line 370
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 371
    const-string v0, "StorageImpl requestCreateContentInfoSync"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 374
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/DataLoader;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/sonyericsson/cameracommon/storage/DataLoader;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Z)V

    .line 376
    :try_start_0
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->call()Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 378
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public requestDataLoad(ILandroid/net/Uri;ZLcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V
    .locals 7

    .line 346
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 347
    const-string v0, "StorageImpl requestDataLoad"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 350
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/DataLoader;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/cameracommon/storage/DataLoader;-><init>(ILandroid/net/Uri;Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Z)V

    .line 351
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->loadData(Lcom/sonyericsson/cameracommon/storage/DataLoader;)V

    return-void
.end method

.method public requestDataLoad(IZLcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V
    .locals 7

    .line 333
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 334
    const-string v0, "StorageImpl requestDataLoad"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getReadableStorageVolumes()Ljava/util/List;

    move-result-object v3

    .line 338
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/DataLoader;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    move-object v1, v0

    move v4, p1

    move-object v5, p3

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/cameracommon/storage/DataLoader;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Z)V

    .line 340
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->loadData(Lcom/sonyericsson/cameracommon/storage/DataLoader;)V

    return-void
.end method

.method public requestLastDataLoad(IZLcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V
    .locals 8

    .line 357
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 358
    const-string v0, "StorageImpl requestDataLoad"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getReadableStorageVolumes()Ljava/util/List;

    move-result-object v3

    .line 362
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/DataLoader;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v1, v0

    move v4, p1

    move-object v6, p3

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/cameracommon/storage/DataLoader;-><init>(Landroid/content/Context;Ljava/util/List;IILcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Z)V

    .line 364
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->loadData(Lcom/sonyericsson/cameracommon/storage/DataLoader;)V

    return-void
.end method

.method public requestLoad(Landroid/net/Uri;ILcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V
    .locals 2

    .line 280
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 281
    const-string v0, "StorageImpl requestLoad"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 283
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->load()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 284
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sonyericsson/cameracommon/storage/StorageImpl$1;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$1;-><init>(Lcom/sonyericsson/cameracommon/storage/StorageImpl;Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestLoad([BILcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V
    .locals 2

    .line 301
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 302
    const-string v0, "StorageImpl requestLoad"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 304
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;-><init>(Landroid/content/Context;[BI)V

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->load()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 305
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$2;

    invoke-direct {v0, p0, p3, p1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$2;-><init>(Lcom/sonyericsson/cameracommon/storage/StorageImpl;Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestStore(Lcom/sonyericsson/cameracommon/storage/SavingRequest;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)Z
    .locals 1

    .line 253
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "requestStore"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->canPushStoreTask(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 258
    const-string p0, "can not PushStoreTask due to memory not enough!"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 262
    :cond_1
    invoke-virtual {p1, p3}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->addCallback(Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)V

    .line 263
    instance-of p2, p1, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    if-eqz p2, :cond_3

    .line 264
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_2

    .line 265
    const-string p2, "StorageImpl storeVideo"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 267
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->storeVideo(Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;)V

    goto :goto_0

    .line 269
    :cond_3
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_4

    .line 270
    const-string p2, "StorageImpl Photo"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 272
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

    .line 599
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "resume()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 600
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->doResume()V

    return-void
.end method

.method public setOneShotCallerInfo(Ljava/lang/String;)V
    .locals 0

    .line 581
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->setOneShotCallerInfo(Ljava/lang/String;)V

    return-void
.end method
