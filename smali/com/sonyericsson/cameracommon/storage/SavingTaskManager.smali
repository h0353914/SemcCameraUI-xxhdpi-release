.class public Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;,
        Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;,
        Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$NotifyStoreCompletedTask;,
        Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;,
        Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;,
        Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;,
        Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;
    }
.end annotation


# static fields
.field private static final CAN_PUSH_STORE_TASK_HPROF_FILE_NAME:Ljava/lang/String; = "/can_push_store_task.hprof"

.field private static final SUFFIX_TEMP_FILE:Ljava/lang/String; = ".rewrite-exif"

.field public static final TAG:Ljava/lang/String; = "SavingTaskManager"

.field private static final THREAD_NAME:Ljava/lang/String; = "SavingTask"

.field private static final mExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInquiry:Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

.field private final mMediaScanController:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;

.field private final mOnScanCompletedListener:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnScanCompletedListener;

.field private final mSavingTaskQueueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;",
            "Ljava/util/Queue<",
            "Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;",
            ">;>;"
        }
    .end annotation
.end field

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

.field private mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

.field private mStoreDataHandler:Landroid/os/Handler;

.field private mStoreVideoThread:Ljava/lang/Thread;

.field private mUpdator:Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SavingTask"

    .line 118
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;",
            "Ljava/util/concurrent/Semaphore;",
            ">;)V"
        }
    .end annotation

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    .line 81
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    .line 89
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    .line 93
    new-instance v1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$1;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mInquiry:Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

    .line 121
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreDataHandler:Landroid/os/Handler;

    .line 1075
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$3;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mOnScanCompletedListener:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnScanCompletedListener;

    .line 633
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    .line 634
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageAccessSemaphoreMap:Ljava/util/Map;

    .line 638
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    .line 643
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "SavingTaskManager"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 645
    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p3, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreDataHandler:Landroid/os/Handler;

    .line 646
    new-instance p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    invoke-direct {p2, p1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mUpdator:Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    .line 648
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mHandler:Landroid/os/Handler;

    .line 650
    new-instance p1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mOnScanCompletedListener:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnScanCompletedListener;

    invoke-direct {p1, p2, p3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnScanCompletedListener;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mMediaScanController:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;

    .line 652
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mSavingTaskQueueMap:Ljava/util/Map;

    .line 653
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getMountableStorageTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 654
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mSavingTaskQueueMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Ljava/util/Map;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mSavingTaskQueueMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mMediaScanController:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Ljava/util/Map;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageAccessSemaphoreMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->popPhotoSavingTask(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Ljava/lang/Runnable;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/cameracommon/storage/JpegMetadata;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 73
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->rewriteInplace(Lcom/sonyericsson/cameracommon/storage/JpegMetadata;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/JpegMetadata;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->rewriteInplaceForSdCard(Lcom/sonyericsson/cameracommon/storage/JpegMetadata;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mUpdator:Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    return-object p0
.end method

.method private static getUsedMemory()J
    .locals 4

    .line 948
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private static isEnoughMemory(J)Z
    .locals 4

    .line 958
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x7

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V
    .locals 2

    .line 733
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onNotifyStoreComplete"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreDataHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 745
    invoke-virtual {p3}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->isOneShot()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    if-ne p1, v0, :cond_1

    .line 746
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->sendBroadcastCameraShot(Landroid/content/Context;Landroid/net/Uri;)V

    .line 748
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreDataHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$NotifyStoreCompletedTask;

    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-direct {v1, p1, p2, p3}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$NotifyStoreCompletedTask;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$1;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 751
    :cond_2
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_3

    const-string p0, "Maybe Main activity has gone. So cannot send complete message"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private popPhotoSavingTask(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;)V
    .locals 3

    .line 718
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "### popPhotoSavingTask"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 719
    :cond_0
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getMountableStorageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 720
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mSavingTaskQueueMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private pushPhotoSavingTask(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V
    .locals 4

    .line 707
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### pushPhotoSavingTask : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getRequestId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 707
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 710
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isOneShot()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->setOneShot(Z)V

    .line 712
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V

    .line 713
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mSavingTaskQueueMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Queue;

    invoke-interface {p0, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 714
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static rewriteInplace(Lcom/sonyericsson/cameracommon/storage/JpegMetadata;Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 991
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 994
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".rewrite-exif"

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 993
    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 995
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 999
    :try_start_0
    invoke-virtual {p0, p1, v3, v4}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->rewrite(Ljava/io/File;Ljava/io/OutputStream;Z)V

    .line 1000
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1002
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1005
    invoke-virtual {v2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p0, :cond_2

    .line 1009
    :try_start_2
    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1010
    new-array v0, v4, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set last modified time to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    if-nez p0, :cond_1

    .line 1017
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_1

    .line 1018
    new-array p0, v4, [Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not delete temporary file "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v5

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1013
    :cond_2
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not replace file "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_1
    move-exception p0

    .line 1002
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1003
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    move p0, v5

    :goto_0
    if-nez p0, :cond_3

    .line 1017
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_3

    .line 1018
    new-array p0, v4, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not delete temporary file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v5

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 1021
    :cond_3
    throw p1
.end method

.method private rewriteInplaceForSdCard(Lcom/sonyericsson/cameracommon/storage/JpegMetadata;Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1026
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 1028
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->searchDocumentSdCard(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1029
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1031
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".rewrite-exif"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->createDocumentSdCard(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1034
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "rw"

    .line 1035
    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 1036
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v5, 0x1

    .line 1042
    :try_start_0
    invoke-virtual {p1, p2, v6, v5}, Lcom/sonyericsson/cameracommon/storage/JpegMetadata;->rewrite(Ljava/io/File;Ljava/io/OutputStream;Z)V

    .line 1043
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 1048
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result p1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    .line 1049
    new-array p1, v5, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not delete old file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v6

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 1052
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    .line 1053
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v3}, Landroid/provider/DocumentsContract;->renameDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1055
    invoke-virtual {p2, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1056
    new-array p0, v5, [Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set last modified time to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v6

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1059
    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not replace file "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 1045
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 1046
    throw p0

    .line 1038
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Could not create temp file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 0

    .line 1064
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public canPushStoreTask(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .locals 6

    .line 914
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->getUsedMemory()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->isEnoughMemory(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 918
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 920
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->getUsedMemory()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->isEnoughMemory(J)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "Temporarily reject capture request since app is low on memory:"

    .line 924
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 926
    new-array v0, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t saving: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->getRemainQueueSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 927
    new-array v0, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tusedMemory: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->getUsedMemory()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "byte"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 928
    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t maxMemory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "byte"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 929
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->getRemainQueueSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)I

    move-result p0

    if-nez p0, :cond_2

    .line 932
    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/can_push_store_task.hprof"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 934
    invoke-static {p0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "canPushStoreTask() fail to dump hprof"

    .line 936
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v3
.end method

.method public getInquiry()Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;
    .locals 0

    .line 725
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mInquiry:Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

    return-object p0
.end method

.method public getRemainQueueSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)I
    .locals 0

    .line 1072
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mSavingTaskQueueMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result p0

    return p0
.end method

.method public release()V
    .locals 2

    .line 962
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreDataHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreDataHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 963
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 964
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreDataHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    :cond_0
    const/4 v0, 0x0

    .line 966
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreDataHandler:Landroid/os/Handler;

    return-void
.end method

.method public storePicture(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V
    .locals 4
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .line 673
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "### storePicture() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 674
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "PhotoSavingRequest: at storePicture."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 675
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->log()V

    .line 677
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getImageData()[B

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isImageReaderUsing()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "### can\'t store a specified image file."

    .line 684
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const-string v0, "### so, notify a failure of storing the specified image file."

    .line 685
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mSavingTaskQueueMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;

    .line 688
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->cancel()V

    goto :goto_0

    .line 691
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->IMMEDIATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->STORING_FAILED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->requestVolumeCheck(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 693
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->STORING_FAILED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->requestWriteCheck(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 695
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$2;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$2;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 678
    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->pushPhotoSavingTask(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V

    :goto_2
    return-void
.end method

.method public storeVideo(Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;)V
    .locals 6
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .line 788
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "VideoSavingRequest: at storeVideo."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 789
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->log()V

    .line 791
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 792
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 793
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storeVideo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    if-eqz v0, :cond_6

    .line 798
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    const-string v0, "Another thread has already started."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    .line 800
    :try_start_0
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_3

    const-string v2, "wait for thread."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 801
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V

    .line 802
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    if-eqz v2, :cond_4

    const-string v2, "storeVideo: mStoreVideoThread timeout."

    .line 804
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 807
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v2

    .line 808
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->IMMEDIATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->VIDEO_STORING_COMPLETED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-virtual {v3, v2, v4, v5}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->requestVolumeCheck(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 810
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->VIDEO_STORING_COMPLETED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    .line 811
    invoke-virtual {v3, v2, v4}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->requestWriteCheck(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 812
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-virtual {v3, v1, v2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->checkRemain(ZLcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    return-void

    .line 815
    :cond_4
    :try_start_1
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_5

    const-string v2, "wait end."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 817
    :catch_0
    :try_start_2
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_5

    const-string v2, "Interrupted."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 819
    :cond_5
    :goto_0
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    goto :goto_2

    :goto_1
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    .line 820
    throw p1

    .line 823
    :cond_6
    :goto_2
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;)V

    .line 824
    new-instance p1, Ljava/lang/Thread;

    const-string v2, "Store video thread"

    invoke-direct {p1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    .line 825
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 826
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
