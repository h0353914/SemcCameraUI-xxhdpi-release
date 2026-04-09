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

.field private mRequested:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V
    .locals 1

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 366
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsCameraEvicted:Z

    .line 367
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsCameraError:Z

    .line 369
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsOtherError:Z

    .line 372
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraInfo;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/device/CameraInfo;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mCameraInfo:Lcom/sonyericsson/android/camera/device/CameraInfo;

    .line 377
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->NONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mRequested:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    .line 378
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->NONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mPerformed:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    .line 379
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameters;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;-><init>(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mCameraParameters:Lcom/sonyericsson/android/camera/device/CameraParameters;

    return-void
.end method

.method static synthetic access$2400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;)Ljava/lang/String;
    .locals 0

    .line 359
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->info()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static addOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;)V
    .locals 2

    .line 385
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$000()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 386
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$000()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
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

    .line 505
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$000()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 507
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$000()Ljava/util/Map;

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

    .line 508
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    .line 509
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 510
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    .line 511
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 513
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

    .line 392
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$000()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 393
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$000()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 394
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private declared-synchronized info()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 497
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mRequested:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mPerformed:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    .line 498
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsCameraEvicted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsCameraError:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsOtherError:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 496
    monitor-exit p0

    throw v0
.end method

.method static removeOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 2

    .line 399
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$000()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 400
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$000()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$000()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
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

    .line 521
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mCameraInfo:Lcom/sonyericsson/android/camera/device/CameraInfo;

    return-object p0
.end method

.method getParameters()Lcom/sonyericsson/android/camera/device/CameraParameters;
    .locals 0

    .line 517
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mCameraParameters:Lcom/sonyericsson/android/camera/device/CameraParameters;

    return-object p0
.end method

.method declared-synchronized isCloseBypassCameraTaskPerformed()Z
    .locals 2

    monitor-enter p0

    .line 435
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$6;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenClosePerformStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mPerformed:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 439
    monitor-exit p0

    return v0

    .line 437
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 434
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isCloseBypassCameraTaskRequested()Z
    .locals 2

    monitor-enter p0

    .line 426
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$6;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenCloseRequestStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mRequested:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 430
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 428
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 425
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isCloseCameraTaskRequested()Z
    .locals 2

    monitor-enter p0

    .line 415
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$6;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenCloseRequestStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mRequested:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    .line 421
    monitor-exit p0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    .line 419
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 414
    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized isErrorCaused()Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    .line 489
    :try_start_0
    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error caused by evicted:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsCameraEvicted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " deviceError:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsCameraError:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " otherError:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsOtherError:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 493
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsCameraEvicted:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsCameraError:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsOtherError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 488
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isOpenBypassCameraTaskPerformed()Z
    .locals 2

    monitor-enter p0

    .line 444
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$6;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenClosePerformStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mPerformed:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 448
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 446
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 443
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isOpenCameraTaskPerformed()Z
    .locals 2

    monitor-enter p0

    .line 453
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$6;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenClosePerformStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mPerformed:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    .line 459
    monitor-exit p0

    return v0

    :pswitch_0
    const/4 v0, 0x0

    .line 457
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 452
    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized setCameraError()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 474
    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsCameraError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 473
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setCameraEvicted()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 467
    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsCameraEvicted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 466
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setOtherError()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 481
    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mIsOtherError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 480
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setPerformed(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;)V
    .locals 0

    monitor-enter p0

    .line 411
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mPerformed:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 410
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setRequested(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;)V
    .locals 0

    monitor-enter p0

    .line 407
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->mRequested:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 406
    monitor-exit p0

    throw p1
.end method
