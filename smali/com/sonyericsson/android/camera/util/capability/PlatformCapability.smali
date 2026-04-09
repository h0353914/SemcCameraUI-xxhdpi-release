.class public Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;
.super Ljava/lang/Object;
.source "PlatformCapability.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$isBypassCameraSupportStateHolder;,
        Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareTask;,
        Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;,
        Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;,
        Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;,
        Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$HolderType;
    }
.end annotation


# static fields
.field private static CAPABILITY_VERSION:I = 0x1

.field private static final FILE_NAME:Ljava/lang/String; = "com.sonyericsson.android.camera.supported_values."

.field private static final KEY_VERSION:Ljava/lang/String; = "capability-version"

.field private static final PLATFORM_NAME:Ljava/lang/String; = "platform"

.field private static final PREPARING_START_DELAY:J = 0x7d0L

.field private static final PREPARING_TIMEOUT:J = 0x3e8L

.field public static final TAG:Ljava/lang/String; = "PlatformCapability"

.field private static mHasDeviceError:Z

.field private static sCameraCapabilityListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            "Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;",
            ">;"
        }
    .end annotation
.end field

.field private static sCameraManager:Landroid/hardware/camera2/CameraManager;

.field private static sParameterHolderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$HolderType;",
            "Lcom/sonyericsson/android/camera/util/capability/ParameterHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static sPlatformCapabilityList:Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;

.field private static sPrepareLatch:Ljava/util/concurrent/CountDownLatch;

.field private static sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

.field private static sPrepareStateLock:Ljava/lang/Object;

.field private static final sPrepareTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private static sPreparingTaskFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$HolderType;",
            "Lcom/sonyericsson/android/camera/util/capability/ParameterHolder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sParameterHolderMap:Ljava/util/Map;

    const-string v0, "PlatformCapability"

    const/16 v1, 0xa

    .line 91
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildScheduledExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 99
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->IDLE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareStateLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;)V
    .locals 0

    .line 51
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->prepareInternal(Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;)V

    return-void
.end method

.method public static awaitPrepare()Z
    .locals 3

    .line 211
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->awaitPrepare(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public static awaitPrepare(JLjava/util/concurrent/TimeUnit;)Z
    .locals 6

    .line 219
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    new-array v1, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invoked state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 221
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;->$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState:[I

    sget-object v4, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 229
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareLatch:Ljava/util/concurrent/CountDownLatch;

    goto :goto_0

    .line 224
    :pswitch_0
    monitor-exit v0

    return v3

    .line 230
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    const-string p0, "Latch object for preparation of platform capability doesn\'t exist."

    .line 233
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v3

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v0, p0, v4

    if-lez v0, :cond_2

    .line 239
    :try_start_1
    invoke-virtual {v1, p0, p1, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "Preparation of platform capability is timed-out."

    .line 240
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_1

    .line 243
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "Preparation of platform capability is interrupted."

    .line 246
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 249
    :cond_3
    :goto_1
    sget-object p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareStateLock:Ljava/lang/Object;

    monitor-enter p0

    .line 250
    :try_start_2
    sget-object p1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;->$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState:[I

    sget-object p2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_6

    .line 257
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_4

    new-array p1, v3, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fail state:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 259
    :cond_4
    sget-object p1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareLatch:Ljava/util/concurrent/CountDownLatch;

    if-ne v1, p1, :cond_5

    .line 260
    sget-object p1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->TIMED_OUT:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    sput-object p1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    .line 262
    :cond_5
    monitor-exit p0

    return v2

    .line 252
    :cond_6
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    .line 264
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    .line 230
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getActiveArraySize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;
    .locals 0

    .line 966
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->ACTIVE_ARRAY_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method private static getBypassCameraFacing(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;
    .locals 1

    .line 566
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-ne p0, v0, :cond_0

    .line 567
    sget-object p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->BACK:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

    return-object p0

    .line 569
    :cond_0
    sget-object p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->FRONT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

    return-object p0
.end method

.method public static getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;
    .locals 0

    .line 419
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    return-object p0
.end method

.method private static getCameraIdList(Landroid/hardware/camera2/CameraManager;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 389
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return-object v0

    .line 399
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 400
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 401
    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 402
    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 403
    :cond_1
    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 404
    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :catch_0
    move-exception p0

    const-string v1, "Camera Ids could not be retrieved from CameraManager."

    .line 391
    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getCameraInfo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/device/CameraInfo;)V
    .locals 3

    .line 1203
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->hasDeviceError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1210
    :cond_0
    iput-object p0, p1, Lcom/sonyericsson/android/camera/device/CameraInfo;->facing:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 1214
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 1215
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 1216
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1223
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 1224
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceIdApi1()I

    move-result p0

    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1225
    iget-boolean p0, v0, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z

    iput-boolean p0, p1, Lcom/sonyericsson/android/camera/device/CameraInfo;->canDisableShutterSound:Z

    .line 1279
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "facing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sonyericsson/android/camera/device/CameraInfo;->facing:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", canDisableShutterSound = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcom/sonyericsson/android/camera/device/CameraInfo;->canDisableShutterSound:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception p0

    const-string p1, "Failed in getCameraCharacteristics"

    .line 1218
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "CameraInfo cannot be retrieved. Because PlatformCapability is not prepared."

    .line 1204
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void
.end method

.method public static getExposureCompensationStep(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F
    .locals 0

    .line 818
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->EV_STEP:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getFileNameForCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/lang/String;
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.sonyericsson.android.camera.supported_values."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileNameForPlatformCapability()Ljava/lang/String;
    .locals 1

    const-string v0, "com.sonyericsson.android.camera.supported_values.platform"

    return-object v0
.end method

.method private static getHolder(Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$HolderType;)Lcom/sonyericsson/android/camera/util/capability/ParameterHolder;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1351
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sParameterHolderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1352
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPreparingTaskFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1354
    :try_start_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "getHolder: get holders: E"

    .line 1355
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1357
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sParameterHolderMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPreparingTaskFuture:Ljava/util/concurrent/Future;

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1358
    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1357
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1359
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "getHolder: get holders: X"

    .line 1360
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Preparing failed"

    .line 1367
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Preparing interrupted"

    .line 1365
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "Preparing timed out"

    .line 1363
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1369
    :cond_1
    :goto_0
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    goto :goto_2

    :goto_1
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 1370
    throw p0

    .line 1373
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPreparingTaskFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1374
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 1377
    :try_start_2
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "getHolder: call directly: E"

    .line 1378
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1380
    :cond_3
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sParameterHolderMap:Ljava/util/Map;

    new-instance v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;-><init>(Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;)V

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;->call()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1381
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "getHolder: call directly: X"

    .line 1382
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v1, "Failed to call directly"

    .line 1385
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1389
    :cond_4
    :goto_2
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sParameterHolderMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/ParameterHolder;

    return-object p0
.end method

.method public static getLensFacing(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I
    .locals 0

    .line 970
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->LENS_FACING:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;
    .locals 3

    .line 423
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "PlatformCapability is not prepared."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p0, :cond_1

    .line 427
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CameraId is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 429
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sCameraCapabilityListMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sCameraCapabilityListMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    return-object p0

    .line 432
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capabilities are not cached for camera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMacroValue(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F
    .locals 0

    .line 790
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MACRO_FOCUS_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getManualIsoSupportedPictureSizes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 945
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MANUAL_ISO_SUPPORTED_PICTURE_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getMaxAwbColorCompensationAb(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/lang/Integer;
    .locals 0

    .line 890
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MAX_AWB_AB:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public static getMaxExposureCompensation(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I
    .locals 0

    .line 810
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->EV_MAX:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getMaxNumDetectedFaces(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I
    .locals 0

    .line 902
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MAX_NUM_FACE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getMaxNumFocusAreas(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I
    .locals 0

    .line 798
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MAX_NUM_FOCUS_AREA:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getMaxPixelsPictureSize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;
    .locals 4

    .line 440
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->PICTURE_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 443
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 444
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->pixels(Landroid/graphics/Rect;)I

    move-result v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->pixels(Landroid/graphics/Rect;)I

    move-result v3

    if-le v2, v3, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 457
    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static getMaxPreviewFps(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I
    .locals 4

    .line 923
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedPreviewFpsRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 925
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_0

    .line 926
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 927
    aget v3, v1, v2

    if-ge v0, v3, :cond_0

    .line 928
    aget v0, v1, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getMaxShutterSpeed(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)J
    .locals 2

    .line 838
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MAX_SHUTTER_SPEED:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMaxSoftSkinLevel(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I
    .locals 0

    .line 706
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MAX_SOFT_SKIN_LEVEL:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getMaxZoomRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F
    .locals 0

    .line 978
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MAX_ZOOM_RATIO:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getMinAwbColorCompensationAb(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/lang/Integer;
    .locals 0

    .line 894
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MIN_AWB_AB:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public static getMinExposureCompensation(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I
    .locals 0

    .line 814
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->EV_MIN:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getMinExposureTimeLimit(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)J
    .locals 2

    .line 1010
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MIN_SHUTTER_SPEED_LIMIT:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMinShutterSpeed(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)J
    .locals 2

    .line 842
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MIN_SHUTTER_SPEED:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMinSoftSkinLevel(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I
    .locals 0

    .line 716
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MIN_SOFT_SKIN_LEVEL:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getPreferredPreviewSizeForHdrVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;
    .locals 0

    .line 953
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->PREVIEW_SIZE_FOR_HDR_VIDEO:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public static getPreferredPreviewSizeForStill(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;
    .locals 0

    .line 937
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->PREVIEW_SIZE_FOR_STILL:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public static getPreferredPreviewSizeForVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;
    .locals 0

    .line 949
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->PREVIEW_SIZE_FOR_VIDEO:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public static getStillHdrSupportedPictureSizes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 886
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->STILL_HDR_SUPPORTED_PICTURE_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getSuperSlowFrameNum(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)J
    .locals 3

    .line 1046
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->SUPER_SLOW_CONFIGURATION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1047
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;

    .line 1048
    iget v1, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mWidth:I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mHeight:I

    .line 1049
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1050
    iget p0, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mFrameNum:I

    int-to-long p0, p0

    return-wide p0

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static getSuperSlowFrameRate(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)J
    .locals 3

    .line 1029
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->SUPER_SLOW_CONFIGURATION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1030
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;

    .line 1031
    iget v1, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mWidth:I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mHeight:I

    .line 1032
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1033
    iget p0, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mFps:I

    int-to-long p0, p0

    return-wide p0

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static getSupportedAeModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 826
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->AE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getSupportedClimaxRecognition(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 974
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getSupportedFlashModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 846
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FLASH:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getSupportedFocusAreaModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 806
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FOCUS_AREA:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getSupportedFocusModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 794
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FOCUS_MODE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getSupportedFusionIsoRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 854
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FUSION_ISO_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    return-object p0
.end method

.method public static getSupportedIsoRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 850
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->ISO_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    return-object p0
.end method

.method public static getSupportedMeteringModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 822
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->METERING:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getSupportedPictureSizes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 941
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->PICTURE_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getSupportedPreviewFpsRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            ")",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 918
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FPS_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getSupportedPreviewSizes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 914
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->PREVIEW_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getSupportedShutterSpeedValues(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 834
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->SHUTTER_SPEED_VALUES:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getSupportedStillHdrValues(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 882
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->HDR:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getSupportedVideoConfiguration(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;",
            ">;"
        }
    .end annotation

    .line 958
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->VIDEO_CONFIGURATION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getSupportedWhiteBalance(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 830
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getVideoHdrRecordingProfile()I
    .locals 1

    .line 1088
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$HolderType;->MEDIA_CODEC:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$HolderType;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getHolder(Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$HolderType;)Lcom/sonyericsson/android/camera/util/capability/ParameterHolder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder;

    if-nez v0, :cond_0

    const-string v0, "parameter is not prepared"

    .line 1091
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 1094
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder;->getVideoHdrProfile()I

    move-result v0

    return v0
.end method

.method public static getWideZoomTargetRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F
    .locals 0

    .line 982
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->WIDE_ZOOM_TARGET_RATIO:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getZoomRatios(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 986
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxZoomRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result p0

    .line 988
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x78

    if-gt v2, v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, p0, v3

    int-to-float v5, v2

    mul-float/2addr v4, v5

    const/high16 v5, 0x42f00000    # 120.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v4, v3

    .line 991
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 993
    :cond_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getZoomRatios() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static hasDeviceError()Z
    .locals 1

    .line 1417
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->mHasDeviceError:Z

    return v0
.end method

.method public static isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 1

    .line 726
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MAX_AWB_AB:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 727
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MIN_AWB_AB:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 728
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isBuildFingerprintModified(Landroid/content/SharedPreferences;)Z
    .locals 6

    const-string v0, "android.os.Build.FINGERPRINT"

    .line 583
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "android.os.Build.FINGERPRINT"

    const-string v2, ""

    .line 586
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 587
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 588
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 589
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_1

    new-array v2, v1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version mismatch: cached: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", current : "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return v1

    :cond_2
    return v3
.end method

.method public static isBypassCameraSupported()Z
    .locals 1

    .line 1301
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$isBypassCameraSupportStateHolder;->access$300()Z

    move-result v0

    return v0
.end method

.method public static isDisplayFlashModeSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 2

    .line 870
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFlashModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "display-on"

    .line 872
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public static isDistortionCorrectionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 2

    .line 1328
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->DISTORTION_CORRECTION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "on"

    .line 1330
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public static isFaceDetectionAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 0

    .line 906
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSmileDetectionAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    return p0
.end method

.method public static isFlashModeSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 2

    .line 858
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFlashModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "on"

    .line 860
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public static isFocusSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 1

    .line 776
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FOCUS_MODE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const-string v0, "fixed"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isForceSound(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 1

    .line 1291
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraInfo;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/device/CameraInfo;-><init>()V

    .line 1292
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraInfo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/device/CameraInfo;)V

    .line 1293
    iget-boolean p0, v0, Lcom/sonyericsson/android/camera/device/CameraInfo;->canDisableShutterSound:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isFrontCameraSupported()Z
    .locals 3

    .line 655
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sCameraCapabilityListMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 656
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isFullHdVideoFpsSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;I)Z
    .locals 3

    .line 669
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->VIDEO_CONFIGURATION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;

    .line 670
    iget v1, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mWidth:I

    const/16 v2, 0x780

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mHeight:I

    const/16 v2, 0x438

    if-ne v1, v2, :cond_0

    iget v0, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mFps:I

    if-lt v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static isFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 2

    .line 612
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FUSION_MODE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 613
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "on"

    .line 614
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "auto"

    .line 615
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isFusionSupportedWith(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Z
    .locals 4

    .line 1154
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1158
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FUSION_SUPPORTED_PICTURE_SIZES:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1159
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1160
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ne v2, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static isFusionSupportedWith(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z
    .locals 4

    .line 1179
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1184
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FUSION_SUPPORTED_VIDEO_CONFIGURATION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;

    .line 1185
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mWidth:I

    if-ne v2, v3, :cond_1

    .line 1186
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mHeight:I

    if-ne v2, v3, :cond_1

    .line 1187
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result v2

    iget v0, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mFps:I

    if-gt v2, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static isHighSensitivityFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 4

    .line 1108
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1112
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->ISO_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 1113
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FUSION_ISO_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 1115
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 1116
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    if-ne v0, p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isLiftTriggerSupported()Z
    .locals 1

    .line 1019
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPlatformCapabilityList:Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->CAMERA_LIFT_TRIGGER:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isManualBurstSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 1

    .line 768
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->BURST:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const-string v0, "on"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isManualFocusSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 0

    .line 732
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MANUAL_FOCUS:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 733
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isObjectTrackingSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 0

    .line 749
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isPowerSavingSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 2

    .line 1004
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->POWER_SAVING_MODE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1005
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1006
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "off"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isPredictiveCaptureShotSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 0

    .line 758
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 759
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPrepared()Z
    .locals 3

    .line 370
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;->$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState:[I

    sget-object v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 381
    monitor-exit v0

    goto :goto_0

    .line 373
    :pswitch_0
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sCameraCapabilityListMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPlatformCapabilityList:Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v0

    return v2

    .line 376
    :pswitch_1
    monitor-exit v0

    return v2

    :goto_0
    return v2

    :catchall_0
    move-exception v1

    .line 383
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isSceneRecognitionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 0

    .line 898
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static isSharedPreferencesValid(Landroid/content/SharedPreferences;)Z
    .locals 1

    .line 574
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBuildFingerprintModified(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isVersionModified(Landroid/content/SharedPreferences;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 575
    :cond_1
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_2

    const-string p0, "prefs is invalid."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isShutterSpeedSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 5

    .line 738
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->AE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 739
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "shutter-prio"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 743
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MAX_SHUTTER_SPEED:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 744
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MIN_SHUTTER_SPEED:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 745
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p0, v0, v3

    if-lez p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v2
.end method

.method public static isSideTouchSupported()Z
    .locals 1

    .line 1129
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPlatformCapabilityList:Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->SIDE_SENSE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSmileDetectionAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 0

    .line 910
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->SMILE_DETECTION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isSoftSkinSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 1

    .line 720
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxSoftSkinLevel(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I

    move-result v0

    .line 721
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMinSoftSkinLevel(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isStillHdrSupportedWith(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Z
    .locals 3

    .line 690
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->STILL_HDR_SUPPORTED_PICTURE_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 691
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 692
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isSuperSlowFullHdSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 3

    .line 1062
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->SUPER_SLOW_CONFIGURATION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1063
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;

    .line 1064
    iget v1, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mWidth:I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v0, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mHeight:I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 1065
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isSuperSlowMotionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 2

    .line 1401
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->SUPER_SLOW_VALUES:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "on"

    .line 1403
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public static isSuperWideSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 4

    .line 781
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->WIDE_ZOOM_TARGET_RATIO:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    const-wide v2, 0x3ff028f5c28f5c29L    # 1.01

    cmpl-double p0, v0, v2

    if-lez p0, :cond_1

    .line 782
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "isSuperWideSupported() SUPPORT"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 785
    :cond_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_2

    const-string p0, "isSuperWideSupported() NOT SUPPORT"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isTouchAeSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 1

    .line 999
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedMeteringModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p0

    const-string v0, "user"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isTouchFocusSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 1

    .line 802
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxNumFocusAreas(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTrackingFocusDuringLockSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 0

    .line 772
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->TRACKING_FOCUS_DURING_LOCK:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static isVersionModified(Landroid/content/SharedPreferences;)Z
    .locals 5

    const-string v0, "capability-version"

    .line 598
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "capability-version"

    const/4 v2, 0x0

    .line 601
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 602
    sget v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->CAPABILITY_VERSION:I

    if-eq p0, v0, :cond_2

    .line 603
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version mismatch: cached: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", current : "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->CAPABILITY_VERSION:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method public static isVideoHdrSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 0

    .line 1078
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->HDR_VIDEO_SUPPORTED:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isVideoSnapshotSupported(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isVideoStabilizerOnHdrSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isWearableSupported()Z
    .locals 1

    .line 1138
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPlatformCapabilityList:Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->WEARABLE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static loadCameraCapabilityFromDevice(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;
    .locals 5

    const/4 v0, 0x1

    .line 520
    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked cameraId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 524
    :try_start_0
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 523
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    .line 526
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getBypassCameraFacing(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

    move-result-object p2

    .line 525
    invoke-static {p2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->getCaps(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    move-result-object p2

    .line 528
    new-instance v2, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    new-instance v4, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;

    invoke-direct {v4, p1}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    new-instance p1, Lcom/sonyericsson/android/camera/util/capability/BypassCameraStaticParameters;

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/util/capability/BypassCameraStaticParameters;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;)V

    invoke-direct {v2, p0, v4, p1}, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;Lcom/sonyericsson/android/camera/util/capability/BypassCameraStaticParameters;)V

    .line 533
    iget-object p0, v2, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FPS_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    .line 534
    iget-object p1, v2, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->PREVIEW_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    .line 535
    iget-object p2, v2, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->PICTURE_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "CameraCapabilities are loadded from device."

    .line 544
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-object v2

    .line 537
    :cond_1
    :goto_0
    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mandatory capabilities could not be retrieved. fps-range is empty:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " preview-size is empty:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " picture-size is empty:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    const-string p1, "Fail to load capabilities from device."

    .line 547
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static loadCameraCapabilityFromPreferences(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;
    .locals 3

    const/4 v0, 0x1

    .line 477
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoked cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 480
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getFileNameForCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/lang/String;

    move-result-object p1

    .line 479
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->loadPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 484
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method private static loadPlatformCapabilityFromDevice(Landroid/content/Context;)Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;
    .locals 1

    .line 555
    :try_start_0
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;-><init>(Landroid/content/Context;)V

    const-string p0, "PlatformCapabilities are loaded from device."

    .line 557
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "Fail to load PlatformCapabilities from device."

    .line 560
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static loadPlatformCapabilityFromPreferences(Landroid/content/Context;)Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;
    .locals 2

    .line 489
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getFileNameForPlatformCapability()Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->loadPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 493
    :cond_0
    new-instance v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    return-object v1
.end method

.method private static loadPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 5

    const/4 v0, 0x0

    .line 498
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_0

    .line 500
    new-array p0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shared-preferences is not valid: name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-object v1

    .line 503
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSharedPreferencesValid(Landroid/content/SharedPreferences;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 504
    new-array v1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loaded from shared-preferences: name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-object p0

    .line 507
    :cond_1
    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shared-preferences is not valid: name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 508
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object v1
.end method

.method private static pixels(Landroid/graphics/Rect;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 464
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method public static prepareAsync(Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;)V
    .locals 7

    .line 159
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->hasDeviceError()Z

    move-result v0

    const/4 v1, 0x0

    .line 160
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->setDeviceError(Z)V

    .line 161
    sget-object v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 162
    :try_start_0
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    new-array v3, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invoked state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 165
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->IDLE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    .line 166
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPlatformCapabilityList:Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;

    if-eqz v0, :cond_1

    .line 167
    sput-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPlatformCapabilityList:Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;

    .line 169
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sCameraCapabilityListMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 170
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sCameraCapabilityListMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 171
    sput-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sCameraCapabilityListMap:Ljava/util/Map;

    .line 174
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;->$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState:[I

    sget-object v3, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v4, :cond_3

    .line 183
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->RUNNING:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    .line 184
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareLatch:Ljava/util/concurrent/CountDownLatch;

    .line 185
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareTask;

    sget-object v4, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v4, p0, v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareTask;-><init>(Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 186
    monitor-exit v2

    return-void

    .line 176
    :cond_3
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    .line 186
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static prepareInternal(Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;)V
    .locals 14

    .line 272
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->PLATFORM_CAPABILITY_PREPARE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 273
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 274
    const-class v1, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 279
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v3, 0x7d0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 282
    :try_start_0
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraIdList(Landroid/hardware/camera2/CameraManager;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 283
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    goto/16 :goto_6

    .line 289
    :cond_0
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v7

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 292
    invoke-static {v0, v10}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->loadCameraCapabilityFromPreferences(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v11

    if-nez v11, :cond_1

    .line 296
    invoke-static {v0, v1, v10}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->loadCameraCapabilityFromDevice(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v11

    move v9, v6

    :cond_1
    if-nez v11, :cond_4

    .line 301
    new-array v0, v6, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Platform capability could not load cameraCapabilityList for camera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 301
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 321
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;->$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState:[I

    sget-object v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 325
    :pswitch_0
    new-array v1, v6, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preparation of platform capability is finished with Illegal state. state:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto :goto_1

    .line 331
    :pswitch_1
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareLatch:Ljava/util/concurrent/CountDownLatch;

    if-ne p0, v1, :cond_2

    .line 332
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->IDLE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    sput-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    .line 356
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 357
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;->onPrepared()V

    .line 360
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "prepare: request preparing parameters"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 361
    :cond_3
    sget-object p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;

    invoke-direct {p1, v5}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;-><init>(Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 362
    invoke-interface {p0, p1, v3, v4, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    sput-object p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPreparingTaskFuture:Ljava/util/concurrent/Future;

    return-void

    :catchall_0
    move-exception p0

    .line 357
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 305
    :cond_4
    :try_start_3
    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 308
    :cond_5
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->loadPlatformCapabilityFromPreferences(Landroid/content/Context;)Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;

    move-result-object v8

    if-nez v8, :cond_6

    .line 311
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->loadPlatformCapabilityFromDevice(Landroid/content/Context;)Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move v10, v6

    goto :goto_2

    :cond_6
    move v10, v7

    :goto_2
    if-nez v8, :cond_9

    .line 321
    sget-object v11, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareStateLock:Ljava/lang/Object;

    monitor-enter v11

    .line 322
    :try_start_4
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;->$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_3

    .line 325
    :pswitch_2
    new-array v0, v6, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preparation of platform capability is finished with Illegal state. state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto :goto_3

    .line 331
    :pswitch_3
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareLatch:Ljava/util/concurrent/CountDownLatch;

    if-ne p0, v0, :cond_7

    .line 332
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->IDLE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    .line 356
    :cond_7
    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 357
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 358
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;->onPrepared()V

    .line 360
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_8

    const-string p0, "prepare: request preparing parameters"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 361
    :cond_8
    sget-object p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;

    invoke-direct {p1, v5}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;-><init>(Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 362
    invoke-interface {p0, p1, v3, v4, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    sput-object p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPreparingTaskFuture:Ljava/util/concurrent/Future;

    return-void

    :catchall_1
    move-exception p0

    .line 357
    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    .line 321
    :cond_9
    sget-object v11, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareStateLock:Ljava/lang/Object;

    monitor-enter v11

    .line 322
    :try_start_6
    sget-object v12, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;->$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_2

    goto :goto_5

    .line 325
    :pswitch_4
    new-array v0, v6, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preparation of platform capability is finished with Illegal state. state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto :goto_5

    .line 331
    :pswitch_5
    sget-object v6, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareLatch:Ljava/util/concurrent/CountDownLatch;

    if-ne p0, v6, :cond_b

    .line 332
    sget-object v6, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->IDLE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    sput-object v6, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    .line 334
    sput-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 335
    sput-object v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sCameraCapabilityListMap:Ljava/util/Map;

    .line 336
    sput-object v8, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPlatformCapabilityList:Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;

    if-eqz v9, :cond_a

    .line 339
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sCameraCapabilityListMap:Ljava/util/Map;

    .line 340
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 339
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 341
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getFileNameForCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sCameraCapabilityListMap:Ljava/util/Map;

    .line 342
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->values()Ljava/util/List;

    move-result-object v2

    .line 341
    invoke-static {v0, v6, v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->store(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z

    goto :goto_4

    :cond_a
    if-eqz v10, :cond_b

    .line 346
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPlatformCapabilityList:Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;

    if-eqz v1, :cond_b

    .line 347
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getFileNameForPlatformCapability()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPlatformCapabilityList:Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;

    .line 348
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->values()Ljava/util/List;

    move-result-object v2

    .line 347
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->store(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z

    .line 356
    :cond_b
    :goto_5
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 357
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 358
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;->onPrepared()V

    .line 360
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_c

    const-string p0, "prepare: request preparing parameters"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 361
    :cond_c
    sget-object p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;

    invoke-direct {p1, v5}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;-><init>(Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 362
    invoke-interface {p0, p1, v3, v4, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    sput-object p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPreparingTaskFuture:Ljava/util/concurrent/Future;

    .line 366
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->PLATFORM_CAPABILITY_PREPARE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void

    :catchall_2
    move-exception p0

    .line 357
    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    :cond_d
    :goto_6
    :try_start_8
    const-string v0, "Camera list could not be retrieved from camera device."

    .line 284
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 321
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_9
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;->$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState:[I

    sget-object v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3

    goto :goto_7

    .line 325
    :pswitch_6
    new-array v1, v6, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preparation of platform capability is finished with Illegal state. state:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto :goto_7

    .line 331
    :pswitch_7
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareLatch:Ljava/util/concurrent/CountDownLatch;

    if-ne p0, v1, :cond_e

    .line 332
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->IDLE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    sput-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    .line 356
    :cond_e
    :goto_7
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 357
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 358
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;->onPrepared()V

    .line 360
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_f

    const-string p0, "prepare: request preparing parameters"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 361
    :cond_f
    sget-object p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;

    invoke-direct {p1, v5}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;-><init>(Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 362
    invoke-interface {p0, p1, v3, v4, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    sput-object p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPreparingTaskFuture:Ljava/util/concurrent/Future;

    return-void

    :catchall_3
    move-exception p0

    .line 357
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw p0

    :catchall_4
    move-exception v0

    .line 321
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 322
    :try_start_b
    sget-object v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;->$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState:[I

    sget-object v8, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->ordinal()I

    move-result v8

    aget v2, v2, v8

    packed-switch v2, :pswitch_data_4

    goto :goto_8

    .line 325
    :pswitch_8
    new-array v2, v6, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preparation of platform capability is finished with Illegal state. state:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v7

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto :goto_8

    .line 331
    :pswitch_9
    sget-object v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareLatch:Ljava/util/concurrent/CountDownLatch;

    if-ne p0, v2, :cond_10

    .line 332
    sget-object v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->IDLE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    sput-object v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    .line 356
    :cond_10
    :goto_8
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 357
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 358
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;->onPrepared()V

    .line 360
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_11

    const-string p0, "prepare: request preparing parameters"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 361
    :cond_11
    sget-object p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;

    invoke-direct {p1, v5}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;-><init>(Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 362
    invoke-interface {p0, p1, v3, v4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    sput-object p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPreparingTaskFuture:Ljava/util/concurrent/Future;

    .line 364
    throw v0

    :catchall_5
    move-exception p0

    .line 357
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public static setDeviceError(Z)V
    .locals 0

    .line 1413
    sput-boolean p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->mHasDeviceError:Z

    return-void
.end method

.method static store(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
            "*>;>;)Z"
        }
    .end annotation

    .line 623
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "store: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 625
    :cond_0
    invoke-static {p0, p1, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_2

    .line 629
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "Failed to obtain shared prefs."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return v2

    .line 633
    :cond_2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 636
    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v0, "android.os.Build.FINGERPRINT"

    .line 637
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 638
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_3

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.os.Build.FINGERPRINT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 640
    :cond_3
    sget p1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->CAPABILITY_VERSION:I

    const-string v0, "capability-version"

    .line 641
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 642
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEY_VERSION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 644
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 645
    invoke-virtual {p2, p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->write(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 648
    :cond_5
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 649
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_6

    const-string p0, "store: success."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6
    return v1
.end method
