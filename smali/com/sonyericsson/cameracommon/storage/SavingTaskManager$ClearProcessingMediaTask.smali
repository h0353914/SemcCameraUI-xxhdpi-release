.class Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ClearProcessingMediaTask;
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
    name = "ClearProcessingMediaTask"
.end annotation


# instance fields
.field mMediaManager:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

.field processingMediaNum:I

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;I)V
    .locals 0

    .line 1097
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ClearProcessingMediaTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1098
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->getInstance()Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ClearProcessingMediaTask;->mMediaManager:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    .line 1099
    iput p2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ClearProcessingMediaTask;->processingMediaNum:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1104
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clearPendingProcessingMedia processingMediaNum:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ClearProcessingMediaTask;->processingMediaNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1105
    :goto_0
    iget v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ClearProcessingMediaTask;->processingMediaNum:I

    if-ge v1, v2, :cond_3

    .line 1106
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ClearProcessingMediaTask;->mMediaManager:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->poll()Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    move-result-object v2

    .line 1107
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1108
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ClearProcessingMediaTask ProcessingMedia:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    if-eqz v2, :cond_2

    .line 1110
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1111
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1111
    const-string v5, "date_modified"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1113
    const-string v4, "is_pending"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1114
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ClearProcessingMediaTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1115
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->getStoreUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1116
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ClearProcessingMediaTask;->mMediaManager:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->getMediaStoreId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->removeByMediaStoreId(J)V

    .line 1117
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ClearProcessingMediaTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->notifyMediaStoreChange(Landroid/content/Context;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
