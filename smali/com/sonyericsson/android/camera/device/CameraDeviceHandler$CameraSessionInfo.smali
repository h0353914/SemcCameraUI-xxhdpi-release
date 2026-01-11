.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CameraSessionInfo"
.end annotation


# instance fields
.field private final mCameraInfo:Lcom/sonyericsson/android/camera/device/CameraInfo;

.field private final mCameraParameters:Lcom/sonyericsson/android/camera/device/CameraParameters;

.field private mIsCameraError:Z

.field private mIsCameraEvicted:Z

.field private mIsOtherError:Z

.field private mPerformed:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

.field private mPerformed2:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

.field private mRequested:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

.field private mRequested2:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;


# direct methods
.method static bridge synthetic -$$Nest$minfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->info()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V
    .locals 1

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 475
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsCameraEvicted:Z

    .line 476
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsCameraError:Z

    .line 478
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsOtherError:Z

    .line 481
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraInfo;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/device/CameraInfo;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mCameraInfo:Lcom/sonyericsson/android/camera/device/CameraInfo;

    .line 486
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->NONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mRequested:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    .line 487
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->NONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mPerformed:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    .line 488
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->NONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mRequested2:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    .line 489
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->NONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mPerformed2:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    .line 490
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameters;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;-><init>(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mCameraParameters:Lcom/sonyericsson/android/camera/device/CameraParameters;

    return-void
.end method

.method static addOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;)V
    .locals 2

    .line 496
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$sfgetsCameraSessionInfoMap()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 497
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$sfgetsCameraSessionInfoMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static dump(Ljava/lang/StringBuilder;)V
    .locals 4

    .line 647
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$sfgetsCameraSessionInfoMap()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 649
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$sfgetsCameraSessionInfoMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 650
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    .line 651
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 652
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    .line 653
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 655
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;
    .locals 2

    .line 503
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$sfgetsCameraSessionInfoMap()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 504
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$sfgetsCameraSessionInfoMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 505
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private declared-synchronized info()Ljava/lang/String;
    .locals 2

    const-string v0, "["

    monitor-enter p0

    .line 637
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mRequested:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mPerformed:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    .line 638
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mRequested2:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    .line 639
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mPerformed2:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    .line 640
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsCameraEvicted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsCameraError:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsOtherError:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static removeOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 2

    .line 510
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$sfgetsCameraSessionInfoMap()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 511
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$sfgetsCameraSessionInfoMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$sfgetsCameraSessionInfoMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method getCameraInfo()Lcom/sonyericsson/android/camera/device/CameraInfo;
    .locals 0

    .line 663
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mCameraInfo:Lcom/sonyericsson/android/camera/device/CameraInfo;

    return-object p0
.end method

.method getParameters()Lcom/sonyericsson/android/camera/device/CameraParameters;
    .locals 0

    .line 659
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mCameraParameters:Lcom/sonyericsson/android/camera/device/CameraParameters;

    return-object p0
.end method

.method declared-synchronized isCloseBypassCameraTaskPerformed()Z
    .locals 2

    monitor-enter p0

    .line 565
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$13;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenClosePerformStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mPerformed:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 569
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 567
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isCloseBypassCameraTaskRequested()Z
    .locals 2

    monitor-enter p0

    .line 556
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$13;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenCloseRequestStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mRequested:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 560
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 558
    :cond_0
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isCloseCamera2TaskRequested()Z
    .locals 3

    monitor-enter p0

    .line 545
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$13;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenCloseRequestStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mRequested2:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 551
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 549
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isCloseCameraTaskRequested()Z
    .locals 3

    monitor-enter p0

    .line 534
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$13;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenCloseRequestStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mRequested:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 540
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 538
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isErrorCaused()Z
    .locals 4

    const-string v0, "Error caused by evicted:"

    monitor-enter p0

    const/4 v1, 0x1

    .line 629
    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsCameraEvicted:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " deviceError:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsCameraError:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " otherError:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsOtherError:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 633
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsCameraEvicted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsCameraError:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsOtherError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isOpenBypassCameraTaskPerformed()Z
    .locals 2

    monitor-enter p0

    .line 574
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$13;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenClosePerformStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mPerformed:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 578
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 576
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isOpenCamera2TaskPerformed()Z
    .locals 2

    monitor-enter p0

    .line 594
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$13;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenClosePerformStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mPerformed2:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 600
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 598
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isOpenCameraTaskPerformed()Z
    .locals 2

    monitor-enter p0

    .line 583
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$13;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenClosePerformStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mPerformed:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 589
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 587
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setCameraError()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 614
    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsCameraError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setCameraEvicted()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 607
    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsCameraEvicted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setOtherError()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 621
    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsOtherError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setPerformed(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;)V
    .locals 0

    monitor-enter p0

    .line 522
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mPerformed:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setPerformed2(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;)V
    .locals 0

    monitor-enter p0

    .line 530
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mPerformed2:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setRequested(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;)V
    .locals 0

    monitor-enter p0

    .line 518
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mRequested:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setRequested2(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;)V
    .locals 0

    monitor-enter p0

    .line 526
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mRequested2:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
