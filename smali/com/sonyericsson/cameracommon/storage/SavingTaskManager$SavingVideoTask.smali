.class Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;
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
    name = "SavingVideoTask"
.end annotation


# instance fields
.field final mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;)V
    .locals 0

    .line 831
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 837
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 839
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    .line 840
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    .line 842
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    new-array v2, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saving video started: ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    .line 843
    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->getRequestId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 842
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 861
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$300(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Semaphore;

    .line 863
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 864
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_1

    new-array v5, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SavingVideoTask["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "]: E"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_1
    const/4 v5, 0x0

    if-eqz v0, :cond_7

    .line 873
    :try_start_1
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    iget-object v6, v6, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v6, v6, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->addToMediaStore:Z

    if-eqz v6, :cond_4

    const-string v6, "file"

    .line 874
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 875
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->setFilePath(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v6, "content"

    .line 876
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 877
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->setFilePath(Ljava/lang/String;)V

    .line 879
    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-static {v6}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$900(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {v6, v7}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->insertVideoAndSendIntent(Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;)Landroid/net/Uri;

    move-result-object v6
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_4
    move-object v6, v0

    :goto_1
    if-nez v6, :cond_6

    :try_start_2
    const-string v7, "content"

    .line 883
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    goto :goto_5

    :cond_6
    :goto_2
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_0
    move-object v6, v5

    goto :goto_4

    .line 886
    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$900(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    move-result-object v0

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {v0, v6}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->insertVideoAndSendIntent(Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;)Landroid/net/Uri;

    move-result-object v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_8

    .line 887
    :try_start_4
    sget-object v6, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    goto :goto_3

    :catch_1
    move-object v6, v0

    goto :goto_4

    :cond_8
    sget-object v6, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_3
    move-object v10, v6

    move-object v6, v0

    move-object v0, v10

    goto :goto_5

    .line 890
    :catch_2
    :goto_4
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL_MEMORY_FULL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 892
    :goto_5
    sget-boolean v7, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v7, :cond_9

    new-array v7, v4, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Saving video finished: ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    .line 893
    invoke-virtual {v9}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->getRequestId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 892
    invoke-static {v7}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 894
    :cond_9
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-static {v7}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$200(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v7

    sget-object v8, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->VIDEO_STORING_COMPLETED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-virtual {v7, v1, v8}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 896
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 897
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_a

    new-array v2, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SavingVideoTask["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]: X"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 899
    :cond_a
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-static {v1, v0, v6, v2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$600(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    .line 901
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-static {p0, v5}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$1202(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void

    :catch_3
    const-string p0, "Failed to acquire of storage access permit."

    .line 867
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void
.end method
