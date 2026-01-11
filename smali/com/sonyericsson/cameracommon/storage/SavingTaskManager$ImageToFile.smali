.class Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageToFile"
.end annotation


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mJpegData:[B

.field mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

.field private mPath:Ljava/lang/String;

.field private final mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

.field private final mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;Landroid/net/Uri;)V
    .locals 2

    .line 477
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 462
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 478
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getImageReaderData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    .line 479
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getImageData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    .line 480
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    .line 481
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    .line 482
    const-string v0, "file"

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    .line 484
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    goto :goto_0

    .line 486
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    .line 487
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->UNKNOWN:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    :goto_0
    return-void
.end method

.method private insertPhotoMedia(Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 6

    .line 591
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getVolume(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 596
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 597
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 598
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 599
    const-string v5, "_display_name"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    const-string v5, "mime_type"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v3, "relative_path"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v2, "is_pending"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 606
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isSmallJpegData()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 607
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 608
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 607
    const-string v3, "date_modified"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 609
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "datetaken"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 610
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "orientation"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 611
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ProcessingMedia insert small jpeg"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 615
    :cond_1
    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 616
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 617
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProcessingMedia insert uri:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 619
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isSmallJpegData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 620
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->getInstance()Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    move-result-object v0

    .line 621
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->add(Landroid/net/Uri;)Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    move-result-object v0

    .line 622
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->setOrientation(I)V

    .line 623
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getImageData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->createTempThumb([B)V

    .line 624
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->notifyMediaStoreChange(Landroid/content/Context;)V

    :cond_3
    return-object p1
.end method

.method private requestCheckStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    .locals 2

    .line 630
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->UNKNOWN:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-eq p1, v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->-$$Nest$fgetmStorageManager(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->STORING_FAILED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    new-instance v1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile$1;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->-$$Nest$mrunOnUiThread(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 494
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    if-eqz p0, :cond_1

    .line 495
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 497
    :cond_1
    const-string p0, "Save path and uri is not set."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public storeData(Ljava/lang/Exception;)Landroid/util/Pair;
    .locals 9

    const-string v0, "Store create by uri:"

    const-string v1, "Store create by path:"

    const-string v2, "Store create file:"

    .line 508
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 512
    :try_start_0
    sget-boolean v7, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v7, :cond_0

    new-array v7, v4, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v5

    invoke-static {v7}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 515
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 516
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    new-array v0, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 518
    :cond_1
    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->insertPhotoMedia(Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 519
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "rw"

    .line 520
    invoke-virtual {v3, v0, v2, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    .line 521
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 522
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_3

    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 524
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v6

    goto :goto_0

    :cond_4
    move-object v0, v6

    move-object v1, v0

    .line 527
    :goto_0
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 528
    :try_start_4
    new-instance v2, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-direct {v2, v1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 529
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez p1, :cond_a

    .line 533
    :try_start_5
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_5

    .line 534
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    array-length v1, p1

    invoke-virtual {v2, p1, v5, v1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->write([BII)V

    goto :goto_1

    .line 536
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 537
    check-cast v1, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_1

    .line 539
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    .line 540
    new-array v1, p1, [B

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    .line 541
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1, v5, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 542
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    array-length v2, v1

    invoke-virtual {p1, v1, v5, v2}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->write([BII)V

    .line 546
    :goto_1
    new-instance p1, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 563
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz v1, :cond_7

    .line 565
    :try_start_6
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 566
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 569
    :catch_0
    const-string v1, "IOException occured when closing."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 571
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 574
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result v1

    if-nez v1, :cond_8

    .line 576
    :try_start_7
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "storeData error :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_3

    .line 581
    :cond_8
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ProcessingMedia skip release ProcessingMediaManager:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 584
    :cond_9
    :goto_3
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    move-object v6, p1

    goto/16 :goto_a

    .line 531
    :cond_a
    :try_start_8
    throw p1
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_0
    move-exception p1

    .line 529
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw p1
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catch_2
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception p1

    goto/16 :goto_7

    :catchall_1
    move-exception p1

    move-object v0, v6

    goto/16 :goto_c

    :catch_4
    move-exception p1

    move-object v0, v6

    .line 558
    :goto_4
    :try_start_b
    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Occurred other exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 559
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isOneShot()Z

    move-result p1

    if-nez p1, :cond_b

    .line 560
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->requestCheckStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 563
    :cond_b
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz p1, :cond_c

    .line 565
    :try_start_c
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 566
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_5

    .line 569
    :catch_5
    const-string p1, "IOException occured when closing."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 571
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 574
    :cond_c
    :goto_5
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result p1

    if-nez p1, :cond_d

    .line 576
    :try_start_d
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_6
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_9

    :catch_6
    move-exception p1

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "storeData error :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 581
    :cond_d
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_14

    .line 582
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "ProcessingMedia skip release ProcessingMediaManager:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto/16 :goto_9

    :catch_7
    move-object v0, v6

    .line 553
    :catch_8
    :try_start_e
    new-array p1, v4, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Store fail I/O Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v5

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 554
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isOneShot()Z

    move-result p1

    if-nez p1, :cond_e

    .line 555
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->requestCheckStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 563
    :cond_e
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz p1, :cond_f

    .line 565
    :try_start_f
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 566
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_6

    .line 569
    :catch_9
    const-string p1, "IOException occured when closing."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 571
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 574
    :cond_f
    :goto_6
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result p1

    if-nez p1, :cond_10

    .line 576
    :try_start_10
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_10 .. :try_end_10} :catch_a

    goto/16 :goto_9

    :catch_a
    move-exception p1

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "storeData error :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 581
    :cond_10
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_14

    .line 582
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "ProcessingMedia skip release ProcessingMediaManager:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto/16 :goto_9

    :catch_b
    move-exception p1

    move-object v0, v6

    .line 548
    :goto_7
    :try_start_11
    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Store fail file not found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 549
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isOneShot()Z

    move-result p1

    if-nez p1, :cond_11

    .line 550
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->requestCheckStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 563
    :cond_11
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz p1, :cond_12

    .line 565
    :try_start_12
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 566
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    goto :goto_8

    .line 569
    :catch_c
    const-string p1, "IOException occured when closing."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 571
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 574
    :cond_12
    :goto_8
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result p1

    if-nez p1, :cond_13

    .line 576
    :try_start_13
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_13} :catch_d
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_13 .. :try_end_13} :catch_d

    goto :goto_9

    :catch_d
    move-exception p1

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "storeData error :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_9

    .line 581
    :cond_13
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_14

    .line 582
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "ProcessingMedia skip release ProcessingMediaManager:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 584
    :cond_14
    :goto_9
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    :goto_a
    if-eqz v6, :cond_15

    goto :goto_b

    .line 587
    :cond_15
    new-instance v6, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v6, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_b
    return-object v6

    :catchall_2
    move-exception p1

    .line 563
    :goto_c
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz v1, :cond_16

    .line 565
    :try_start_14
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 566
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_e

    goto :goto_d

    .line 569
    :catch_e
    const-string v1, "IOException occured when closing."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 571
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 574
    :cond_16
    :goto_d
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 581
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_18

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ProcessingMedia skip release ProcessingMediaManager:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_e

    .line 576
    :cond_17
    :try_start_15
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_15} :catch_f
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_15 .. :try_end_15} :catch_f

    goto :goto_e

    :catch_f
    move-exception v0

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "storeData error :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 584
    :cond_18
    :goto_e
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    .line 585
    throw p1
.end method
