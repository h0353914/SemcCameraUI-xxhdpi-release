.class Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnMediaScanCompletedListener;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnMediaScanCompletedListener"
.end annotation


# instance fields
.field private final mRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;",
            ">;)V"
        }
    .end annotation

    .line 1181
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnMediaScanCompletedListener;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1182
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnMediaScanCompletedListener;->mRequests:Ljava/util/List;

    return-void
.end method

.method private pop(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;
    .locals 3

    .line 1187
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnMediaScanCompletedListener;->mRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    .line 1188
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 1195
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnMediaScanCompletedListener;->mRequests:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-object v1
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5

    .line 1202
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnMediaScanCompletedListener;->pop(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "onScanCompleted() request of scan completed file is not found."

    .line 1204
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 1210
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->get(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1211
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->get(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->scanFileDone:J

    .line 1212
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->complete(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    goto :goto_0

    .line 1214
    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CapturePerformance: get(request) is null. path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1214
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1218
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnMediaScanCompletedListener;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;->access$1300(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;)Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnScanCompletedListener;

    move-result-object v0

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    invoke-interface {v0, v3, p2, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnScanCompletedListener;->onScanCompleted(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V

    .line 1220
    new-array p1, v2, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remain:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnMediaScanCompletedListener;->mRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pending:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnMediaScanCompletedListener;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;

    .line 1221
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;->access$1400(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    .line 1220
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1223
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnMediaScanCompletedListener;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;->access$1500(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1224
    :try_start_0
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnMediaScanCompletedListener;->mRequests:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1225
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnMediaScanCompletedListener;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;->access$1600(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController;)V

    .line 1227
    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
