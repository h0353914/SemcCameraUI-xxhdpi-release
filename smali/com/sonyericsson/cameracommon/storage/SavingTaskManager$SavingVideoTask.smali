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

    .line 849
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 850
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 855
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 857
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    .line 858
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 859
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v2

    .line 861
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Saving video started: ID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    .line 862
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->getRequestId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 861
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 880
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->-$$Nest$fgetmStorageAccessSemaphoreMap(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Semaphore;

    .line 882
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 883
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v5, "SavingVideoTask["

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: E"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    const/4 v4, 0x0

    if-eqz v0, :cond_7

    .line 892
    :try_start_2
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    iget-object v6, v6, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v6, v6, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->addToMediaStore:Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v7, "content"

    if-eqz v6, :cond_4

    .line 893
    :try_start_3
    const-string v6, "file"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 894
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->setFilePath(Ljava/lang/String;)V

    goto :goto_0

    .line 895
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 896
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->setFilePath(Ljava/lang/String;)V

    .line 898
    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-static {v6}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->-$$Nest$fgetmUpdator(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    move-result-object v6

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {v6, v1, v8}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->insertVideoAndSendIntent(Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;)Landroid/net/Uri;

    move-result-object v1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_6

    .line 902
    :try_start_4
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 903
    :cond_5
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    goto :goto_3

    :cond_6
    :goto_2
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 905
    :cond_7
    :try_start_5
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->-$$Nest$fgetmUpdator(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    move-result-object v0

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {v0, v1, v6}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->insertVideoAndSendIntent(Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;)Landroid/net/Uri;

    move-result-object v1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v1, :cond_8

    .line 906
    :try_start_6
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_0
    move-object v1, v4

    .line 909
    :catch_1
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL_MEMORY_FULL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 911
    :goto_3
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v6, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Saving video finished: ID: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    .line 912
    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->getRequestId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    .line 911
    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 913
    :cond_9
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-static {v6}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->-$$Nest$fgetmStorageManager(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v6

    sget-object v7, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->VIDEO_STORING_COMPLETED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-virtual {v6, v2, v7}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 915
    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 916
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 918
    :cond_a
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-static {v2, v0, v1, v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->-$$Nest$mnotifyStoreComplete(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    .line 920
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-static {p0, v4}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->-$$Nest$fputmStoreVideoThread(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Ljava/lang/Thread;)V

    return-void

    .line 886
    :catch_2
    const-string p0, "Failed to acquire of storage access permit."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void
.end method
