.class Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FinalImageStoreTask"
.end annotation


# instance fields
.field mMediaManager:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

.field mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V
    .locals 0

    .line 1015
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1016
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    .line 1017
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->getInstance()Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->mMediaManager:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1022
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    .line 1023
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->-$$Nest$fgetmStorageAccessSemaphoreMap(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Semaphore;

    .line 1025
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1026
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, "FinalImageStoreTask["

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: E"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1033
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->mMediaManager:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->poll()Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    move-result-object v2

    .line 1034
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 1035
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ProcessingMedia FinalImageStoreTask "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    if-eqz v2, :cond_3

    .line 1037
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->storeFinalImage(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1039
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1040
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1040
    const-string v7, "date_modified"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1042
    const-string v6, "is_pending"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1043
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1044
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->getStoreUri()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v5, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1045
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->mMediaManager:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->getMediaStoreId()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->removeByMediaStoreId(J)V

    .line 1046
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->notifyMediaStoreChange(Landroid/content/Context;)V

    .line 1047
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->delTempThumb()V

    .line 1049
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    sget-object v5, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->getStoreUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {v3, v5, v2, v6}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->-$$Nest$mnotifyStoreComplete(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    .line 1051
    :cond_2
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1052
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ProcessingMedia completed getMediaDeque size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->mMediaManager:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->getMediaDeque()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1054
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1055
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]: X"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return-void

    .line 1029
    :catch_0
    const-string p0, "Failed to acquire of storage access permit."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void
.end method

.method storeFinalImage(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;)Z
    .locals 7

    .line 1059
    const-string v0, "IOException occured when closing."

    .line 1060
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getImageData()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1063
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->getStoreUri()Landroid/net/Uri;

    move-result-object p1

    .line 1064
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1065
    new-instance v5, Ljava/io/FileOutputStream;

    const-string v6, "rw"

    .line 1066
    invoke-virtual {v4, p1, v6, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1067
    new-instance p1, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-direct {p1, v5}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1068
    :try_start_1
    array-length v4, v1

    invoke-virtual {p1, v1, v2, v4}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1075
    :try_start_2
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 1076
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1079
    :catch_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1084
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->setImageData([B)V

    const/4 v2, 0x1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object p1, v3

    goto :goto_4

    :catch_2
    move-exception v1

    move-object p1, v3

    .line 1071
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_0

    .line 1075
    :try_start_4
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 1076
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 1079
    :catch_3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1084
    :cond_0
    :goto_2
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->setImageData([B)V

    :goto_3
    return v2

    :catchall_1
    move-exception v1

    :goto_4
    if-eqz p1, :cond_1

    .line 1075
    :try_start_5
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 1076
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    .line 1079
    :catch_4
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1084
    :cond_1
    :goto_5
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->setImageData([B)V

    .line 1086
    throw v1
.end method
