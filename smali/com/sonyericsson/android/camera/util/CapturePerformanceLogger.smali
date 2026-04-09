.class public Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;
.super Ljava/lang/Object;
.source "CapturePerformanceLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CapturePerformance"

.field private static sBurstTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCaptureTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;",
            ">;"
        }
    .end annotation
.end field

.field private static sNumOfBurstTaken:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sCaptureTimeMap:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sBurstTimeList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static complete(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)V
    .locals 3

    .line 85
    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sCaptureTimeMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->getDateTaken()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->log()V

    .line 86
    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sCaptureTimeMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->getDateTaken()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static complete(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V
    .locals 3

    .line 93
    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sCaptureTimeMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getDateTaken()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    .line 94
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getCaptureIdForPredictiveCapture()I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->burstNum:I

    .line 95
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->log()V

    .line 96
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-ne v1, v2, :cond_0

    .line 97
    sget-object v1, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sBurstTimeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sCaptureTimeMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getDateTaken()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sNumOfBurstTaken:I

    if-lez p0, :cond_1

    sget p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sNumOfBurstTaken:I

    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sBurstTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p0, v0, :cond_1

    .line 102
    invoke-static {}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->completeBurst()V

    const/4 p0, 0x0

    .line 103
    sput p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sNumOfBurstTaken:I

    :cond_1
    return-void
.end method

.method private static completeBurst()V
    .locals 16

    .line 183
    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sBurstTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v3

    move-wide v7, v5

    move-wide v9, v7

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    .line 184
    iget-wide v12, v11, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->writeFileDone:J

    iget-wide v14, v11, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->startSave:J

    sub-long/2addr v12, v14

    add-long/2addr v3, v12

    .line 185
    iget-wide v12, v11, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->scanFileDone:J

    iget-wide v14, v11, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->startScan:J

    sub-long/2addr v12, v14

    add-long/2addr v5, v12

    cmp-long v12, v7, v1

    if-eqz v12, :cond_0

    .line 188
    iget-wide v12, v11, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->snapshotDone:J

    sub-long/2addr v12, v7

    add-long/2addr v9, v12

    .line 190
    :cond_0
    iget-wide v7, v11, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->snapshotDone:J

    goto :goto_0

    .line 193
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sBurstTimeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    iget-wide v0, v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->startSnapshot:J

    .line 194
    sget-object v2, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sBurstTimeList:Ljava/util/List;

    sget-object v7, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sBurstTimeList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    iget-wide v7, v2, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->scanFileDone:J

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "==============================================="

    .line 197
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    .line 198
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "Time spent to capture "

    .line 199
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    sget-object v11, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sBurstTimeList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " images = "

    .line 201
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v7, v0

    .line 202
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " [ms]"

    .line 203
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    .line 204
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Average Capture Duration = "

    .line 205
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sBurstTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    div-long/2addr v9, v0

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " [ms]"

    .line 207
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    .line 208
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Average Save Duration = "

    .line 209
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sBurstTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    div-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " [ms]"

    .line 211
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    .line 212
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Average ScanFile Duration = "

    .line 213
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sBurstTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    div-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " [ms]"

    .line 215
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    .line 216
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "==============================================="

    .line 217
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CapturePerformance"

    .line 218
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sBurstTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static create(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;
    .locals 5

    .line 49
    new-instance v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;)V

    .line 50
    sget-object v1, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sCaptureTimeMap:Ljava/util/Map;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v2, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sCaptureTimeMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->getDateTaken()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static create(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;
    .locals 5

    .line 60
    new-instance v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;-><init>()V

    .line 61
    sget-object v1, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sCaptureTimeMap:Ljava/util/Map;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v2, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sCaptureTimeMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getDateTaken()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    .line 64
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static get(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;
    .locals 3

    .line 71
    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sCaptureTimeMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->getDateTaken()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    return-object p0
.end method

.method public static get(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;
    .locals 3

    .line 78
    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sCaptureTimeMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getDateTaken()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    return-object p0
.end method

.method public static setNumOfBurstTaken(I)V
    .locals 0

    .line 113
    sput p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sNumOfBurstTaken:I

    return-void
.end method
