.class public Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;
.super Ljava/lang/Object;
.source "DcfPathBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;,
        Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageFileNameFilter;,
        Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;,
        Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;,
        Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;
    }
.end annotation


# static fields
.field public static final DCF_DIR_NAME_FREE_WORD:Ljava/lang/String; = "ANDRO"

.field public static final DCF_FILE_NAME_FREE_WORD_MOVIE:Ljava/lang/String; = "MOV_"

.field public static final DCF_FILE_NAME_FREE_WORD_PICTURE:Ljava/lang/String; = "DSC_"

.field public static final LENGTH_OF_DIR_NAME:I = 0x8

.field public static final LENGTH_OF_FILE_NAME:I = 0xc

.field public static final MAX_DIR_NAME:I = 0x3e7

.field public static final MAX_FILE_NAME:I = 0x270f

.field public static final MIN_DIR_NAME:I = 0x64

.field public static final MIN_FILE_NAME:I = 0x1

.field private static final SCAN_RESULT_FAILED:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

.field private static final SCAN_WAIT_TIME:I = 0xea60

.field public static final TAG:Ljava/lang/String; = "DcfPathBuilder"

.field public static final TYPE_PICTURE:I = 0x0

.field public static final TYPE_VIDEO:I = 0x1

.field public static final VOLUME_EXTERNAL:Ljava/lang/String; = "external"


# instance fields
.field private mDirNameFilter:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;

.field private mDirNo:I

.field private mFileNameFilter:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageFileNameFilter;

.field private mFileNo:I

.field private final mRoot:Ljava/lang/String;

.field private mScanExecutor:Ljava/util/concurrent/ExecutorService;

.field private mScanFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mScanResult:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 84
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;->SCAN_FAILED:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;-><init>(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;II)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->SCAN_RESULT_FAILED:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanResult:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

    .line 182
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mRoot:Ljava/lang/String;

    .line 183
    new-instance p1, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;

    invoke-direct {p1, v0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;-><init>(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$1;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mDirNameFilter:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;

    .line 184
    new-instance p1, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageFileNameFilter;

    invoke-direct {p1, v0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageFileNameFilter;-><init>(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$1;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mFileNameFilter:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageFileNameFilter;

    const-string p1, "DCF Path Builder"

    .line 186
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mRoot:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mDirNameFilter:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageFileNameFilter;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mFileNameFilter:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageFileNameFilter;

    return-object p0
.end method

.method private assignImageFilePath(ILcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    monitor-enter p0

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    .line 420
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanFuture:Ljava/util/concurrent/Future;

    .line 421
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 425
    :try_start_1
    sget-object v4, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->SCAN_RESULT_FAILED:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanResult:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

    const-wide/32 v4, 0xea60

    .line 426
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanResult:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

    .line 427
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanResult:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

    iget v0, v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;->resultDirNo:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mDirNo:I

    .line 428
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanResult:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

    iget v0, v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;->resultFileNo:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mFileNo:I

    .line 429
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScanResult is updated. mDirNo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mDirNo:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mFileNo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mFileNo:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 436
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to scan."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    .line 434
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to scan."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p0

    .line 432
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to scan."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 440
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanResult:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;->resultState:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;->SCAN_SUCCEEDED:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;

    if-eq v0, v4, :cond_1

    const-string p0, "assignImageFilePath scan failed."

    .line 441
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-object v1

    .line 446
    :cond_1
    iget v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mDirNo:I

    const/16 v4, 0x3e7

    if-le v0, v4, :cond_2

    .line 447
    new-array p1, v3, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "assignImageFilePath over max dir. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mDirNo:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-object v1

    .line 453
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%03d"

    new-array v6, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mDirNo:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ANDRO"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mRoot:Ljava/lang/String;

    invoke-static {v5}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->getDcimDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 455
    sget-object v5, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-eq p2, v5, :cond_3

    .line 456
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 458
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_5

    .line 459
    new-array p0, v3, [Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "assignImageFilePath create dir failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-object v1

    .line 465
    :cond_3
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getSdCardGrantedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p2

    .line 466
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->isExistDcimDirectory(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    :goto_1
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p2, v0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->createDirectory(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_5

    return-object v1

    :cond_5
    packed-switch p1, :pswitch_data_0

    .line 483
    new-array p0, v3, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "assignImageFilePath type failed. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-object v1

    .line 480
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/MOV_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 477
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/DSC_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 486
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "%04d"

    new-array v1, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mFileNo:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 489
    iget p2, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mFileNo:I

    add-int/2addr p2, v3

    iput p2, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mFileNo:I

    .line 490
    iget p2, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mFileNo:I

    const/16 v0, 0x270f

    if-le p2, v0, :cond_6

    .line 491
    iget p2, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mDirNo:I

    add-int/2addr p2, v3

    iput p2, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mDirNo:I

    .line 492
    iput v3, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mFileNo:I

    :cond_6
    return-object p1

    :catchall_0
    move-exception p1

    .line 421
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static checkAndCreateDirectory(Ljava/lang/String;)Z
    .locals 6

    .line 326
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->getDcimDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 330
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mkdirs(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 331
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-eq p0, v0, :cond_1

    .line 333
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_2

    .line 334
    new-array p0, v2, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed mkdirs() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v3

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getSdCardGrantedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 341
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->isExistDcimDirectory(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 342
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->createDirectory(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    :cond_3
    :goto_0
    return v3
.end method

.method private static checkStorageWritable(Ljava/lang/String;)Z
    .locals 5

    .line 604
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    .line 607
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 619
    :catch_0
    :try_start_1
    new-array v0, v2, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed createTempFile() not allowed : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v3

    .line 616
    :catch_1
    new-array v0, v2, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed createTempFile() : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v3

    .line 613
    :catch_2
    new-array v0, v2, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed createTempFile() parameter error : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v3

    :catchall_0
    return v2

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 624
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "tempFile delete error"

    .line 626
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_3
    const-string p0, "Failed delete() not allowed"

    .line 631
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_1
    :goto_1
    return v2
.end method

.method public static checkWritable(Ljava/lang/String;)Z
    .locals 2

    .line 592
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->checkAndCreateDirectory(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 596
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->getDcimDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 597
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->checkStorageWritable(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static getDcimDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isAlreadyLastFileExist(Ljava/lang/String;)Z
    .locals 9

    .line 367
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->getDcimDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 368
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%03d"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/16 v6, 0x3e7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v5, v8

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ANDRO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    return v8

    .line 376
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%03d"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ANDRO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/DSC_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%04d"

    new-array v3, v4, [Ljava/lang/Object;

    const/16 v5, 0x270f

    .line 378
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v8

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".JPG"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    .line 387
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%03d"

    new-array v2, v4, [Ljava/lang/Object;

    .line 388
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {p0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "ANDRO"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/MOV_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%04d"

    new-array v2, v4, [Ljava/lang/Object;

    .line 390
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {p0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    .line 398
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".3gp"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 399
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_3

    return v4

    :cond_3
    return v8
.end method

.method private isAssignedFileAlreadyExist(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 573
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getPhotoPath(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 517
    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->assignImageFilePath(ILcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "getPhotoPath failed."

    .line 519
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-eqz v0, :cond_0

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".JPG"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    :cond_0
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    new-array v2, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPhotoPath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_4

    .line 527
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->isAssignedFileAlreadyExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 530
    :cond_2
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_3

    new-array v2, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Assigned file is exist. Try again. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 532
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->startScan()V

    goto :goto_0

    :cond_4
    :goto_2
    return-object v0
.end method

.method public getRootPath()Ljava/lang/String;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mRoot:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoPath(Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;
    .locals 6

    const-string v0, "/dev/null"

    :goto_0
    const/4 v1, 0x1

    .line 549
    :try_start_0
    invoke-direct {p0, v1, p2}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->assignImageFilePath(ILcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "getVideoPath failed."

    .line 551
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-nez v0, :cond_0

    const-string v0, "/dev/null"

    goto :goto_2

    .line 556
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    :goto_2
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    new-array v2, v1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVideoPath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    const-string v2, "/dev/null"

    if-eq v0, v2, :cond_4

    .line 562
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->isAssignedFileAlreadyExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    .line 565
    :cond_2
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_3

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Assigned file is exist. Try again. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mRoot:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 567
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->startScan()V

    goto :goto_0

    :cond_4
    :goto_3
    return-object v0
.end method

.method public startScan()V
    .locals 5

    .line 195
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startScan is called: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 197
    :cond_0
    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_4

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 202
    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discard previous unread scan result. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanFuture:Ljava/util/concurrent/Future;

    goto :goto_0

    .line 205
    :cond_2
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_3

    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Now scanning. Ignore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mRoot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 206
    :cond_3
    monitor-exit p0

    return-void

    .line 210
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanFuture:Ljava/util/concurrent/Future;

    if-nez v0, :cond_5

    .line 211
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;-><init>(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)V

    .line 212
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanFuture:Ljava/util/concurrent/Future;

    .line 213
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_5

    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scan has submitted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mRoot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 215
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
