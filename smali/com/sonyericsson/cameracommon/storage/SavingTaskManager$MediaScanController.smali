.class Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaScanController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnMediaScanCompletedListener;,
        Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnScanCompletedListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsScanning:Z

.field private final mOnScanCompletedListener:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnScanCompletedListener;

.field private final mPendingScanFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanFileLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnScanCompletedListener;)V
    .locals 1

    .line 1118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1091
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;->mScanFileLock:Ljava/lang/Object;

    .line 1100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;->mPendingScanFileList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 1106
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;->mIsScanning:Z

    .line 1119
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;->mContext:Landroid/content/Context;

    .line 1120
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;->mOnScanCompletedListener:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnScanCompletedListener;

    return-void
.end method

.method static synthetic access$1300(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;)Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnScanCompletedListener;
    .locals 0

    .line 1090
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;->mOnScanCompletedListener:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnScanCompletedListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;)Ljava/util/ArrayList;
    .locals 0

    .line 1090
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;->mPendingScanFileList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;)Ljava/lang/Object;
    .locals 0

    .line 1090
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;->mScanFileLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;)V
    .locals 0

    .line 1090
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;->scanAllPendingFilesLocked()V

    return-void
.end method

.method private scanAllPendingFilesLocked()V
    .locals 7

    .line 1143
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;->mPendingScanFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1144
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;->mIsScanning:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1147
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;->mIsScanning:Z

    .line 1149
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1150
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;->mPendingScanFileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1151
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;->mPendingScanFileList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1153
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    .line 1154
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->get(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1155
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->get(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->startScan:J

    goto :goto_0

    .line 1159
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    move v4, v1

    .line 1160
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_3

    .line 1161
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1164
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    new-instance v6, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnMediaScanCompletedListener;

    invoke-direct {v6, p0, v2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnMediaScanCompletedListener;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;Ljava/util/List;)V

    invoke-static {v4, v3, v5, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 1170
    new-array p0, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public requestScanFile(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V
    .locals 4

    .line 1127
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;->mScanFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1128
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;->mPendingScanFileList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;->mIsScanning:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1130
    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pending:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;->mPendingScanFileList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 1133
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;->scanAllPendingFilesLocked()V

    .line 1135
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
