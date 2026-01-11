.class public Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;
.super Ljava/lang/Object;
.source "PlatformCapability.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;,
        Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareTask;,
        Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;,
        Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;,
        Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;,
        Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;,
        Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$HolderType;,
        Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$isBypassCameraSupportStateHolder;
    }
.end annotation


# static fields
.field public static final BOKEH_AND_MONOCHROME:I = 0x3

.field public static final BOKEH_ONLY:I = 0x1

.field static final CAMERA_ID_MAIN_BACK:Ljava/lang/String; = "0"

.field static final CAMERA_ID_MAIN_FRONT:Ljava/lang/String; = "1"

.field private static CAPABILITY_VERSION:I = 0x2

.field private static final DUAL_EFFECT_CLASS:Ljava/lang/String; = "com.sonymobile.addoncamera.dualcameraeffect.ui.CameraActivity"

.field private static final DUAL_EFFECT_META_DATA:Ljava/lang/String; = "com.sonymobile.addoncamera.dualcameraeffect.support_feature"

.field private static final DUAL_EFFECT_PACKAGE:Ljava/lang/String; = "com.sonymobile.addoncamera.dualcameraeffect"

.field private static final FILE_NAME:Ljava/lang/String; = "com.sonyericsson.android.camera.supported_values."

.field private static final KEY_VERSION:Ljava/lang/String; = "capability-version"

.field public static final MONOCHROME_ONLY:I = 0x2

.field private static final PLATFORM_NAME:Ljava/lang/String; = "platform"

.field private static final PLATFORM_ODM:Ljava/lang/String; = "odm"

.field private static final PREPARING_START_DELAY:J = 0x7d0L

.field private static final PREPARING_TIMEOUT:J = 0x3e8L

.field private static final REQUESTED_PERMISSIONS:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "PlatformCapability"

.field private static mHasDeviceError:Z

.field private static final sAvailableCameraIdsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private static sPlatform:Ljava/lang/String;

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

.field private static sProduct:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;


# direct methods
.method static bridge synthetic -$$Nest$sfgetREQUESTED_PERMISSIONS()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputsPrepareState(Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;)V
    .locals 0

    sput-object p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    return-void
.end method

.method static bridge synthetic -$$Nest$smprepareInternal(Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->prepareInternal(Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 145
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sAvailableCameraIdsMap:Ljava/util/Map;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sParameterHolderMap:Ljava/util/Map;

    .line 160
    const-string v0, "PlatformCapability"

    const/16 v1, 0xa

    .line 161
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildScheduledExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v0, 0x0

    .line 168
    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareLatch:Ljava/util/concurrent/CountDownLatch;

    .line 169
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->IDLE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    .line 170
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareStateLock:Ljava/lang/Object;

    .line 207
    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static awaitPrepare()Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;
    .locals 3

    const-wide/16 v0, 0x0

    .line 307
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->awaitPrepare(JLjava/util/concurrent/TimeUnit;)Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    move-result-object v0

    return-object v0
.end method

.method public static awaitPrepare(JLjava/util/concurrent/TimeUnit;)Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;
    .locals 9

    const-string v0, "Fail state:"

    const-string v1, "Invoked state:"

    .line 315
    sget-object v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 316
    :try_start_0
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    new-array v3, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 317
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;->$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState:[I

    sget-object v3, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_a

    const/4 v3, 0x3

    if-eq v1, v3, :cond_9

    const/4 v6, 0x4

    if-eq v1, v6, :cond_8

    .line 327
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareLatch:Ljava/util/concurrent/CountDownLatch;

    .line 328
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 331
    const-string p0, "Latch object for preparation of platform capability doesn\'t exist."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 332
    sget-object p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;->FAIL:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    return-object p0

    :cond_1
    const-wide/16 v7, 0x0

    cmp-long v2, p0, v7

    if-lez v2, :cond_2

    .line 337
    :try_start_1
    invoke-virtual {v1, p0, p1, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 338
    new-array p0, v5, [Ljava/lang/String;

    const-string p1, "Preparation of platform capability is timed-out."

    aput-object p1, p0, v4

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 344
    :catch_0
    const-string p0, "Preparation of platform capability is interrupted."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 347
    :cond_3
    :goto_0
    sget-object p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareStateLock:Ljava/lang/Object;

    monitor-enter p0

    .line 348
    :try_start_2
    sget-object p1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;->$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState:[I

    sget-object p2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v3, :cond_7

    if-eq p1, v6, :cond_6

    .line 356
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_4

    new-array p1, v5, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 358
    :cond_4
    sget-object p1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareLatch:Ljava/util/concurrent/CountDownLatch;

    if-ne v1, p1, :cond_5

    .line 359
    sget-object p1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->TIMED_OUT:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    sput-object p1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    .line 361
    :cond_5
    sget-object p1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;->TIMED_OUT:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    monitor-exit p0

    return-object p1

    .line 352
    :cond_6
    sget-object p1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;->PERMISSION_DENIED:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    monitor-exit p0

    return-object p1

    .line 350
    :cond_7
    sget-object p1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;->SUCCESS:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 363
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 323
    :cond_8
    :try_start_3
    sget-object p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;->PERMISSION_DENIED:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    monitor-exit v2

    return-object p0

    .line 319
    :cond_9
    sget-object p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;->SUCCESS:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    monitor-exit v2

    return-object p0

    .line 321
    :cond_a
    sget-object p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;->FAIL:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    monitor-exit v2

    return-object p0

    :catchall_1
    move-exception p0

    .line 328
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private static checkProduct()V
    .locals 2

    .line 532
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 533
    const-class v1, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 534
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 535
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_INFO_SENSOR_NAME:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 536
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->getProduct(Ljava/lang/String;)Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sProduct:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 538
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 540
    :goto_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sProduct : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sProduct:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getActiveArraySize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;
    .locals 0

    .line 1131
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->ACTIVE_ARRAY_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public static getAvailableCameraIdsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 527
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sAvailableCameraIdsMap:Ljava/util/Map;

    return-object v0
.end method

.method private static getBypassCameraFacing(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;
    .locals 1

    .line 699
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-ne p0, v0, :cond_0

    .line 700
    sget-object p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->BACK:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

    return-object p0

    .line 702
    :cond_0
    sget-object p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->FRONT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

    return-object p0
.end method

.method public static getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;
    .locals 0

    .line 551
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

    .line 495
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return-object v0

    .line 505
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 506
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    aget-object v3, p0, v2

    .line 507
    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 508
    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 509
    :cond_1
    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 510
    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 511
    :cond_2
    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 512
    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 513
    :cond_3
    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->TELE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 514
    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->TELE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 515
    :cond_4
    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->U_WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 516
    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->U_WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 517
    :cond_5
    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->SAT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 518
    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->SAT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-object v0

    :catch_0
    move-exception p0

    .line 497
    const-string v1, "Camera Ids could not be retrieved from CameraManager."

    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getCameraInfo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/device/CameraInfo;)V
    .locals 2

    .line 1386
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->hasDeviceError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 1393
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->isFront()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    :goto_0
    iput-object v0, p1, Lcom/sonyericsson/android/camera/device/CameraInfo;->facing:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 1397
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 1398
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 1399
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1409
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 1411
    :try_start_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getFacingId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceIdApi1()I

    move-result p0

    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1416
    iget-boolean p0, v0, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z

    iput-boolean p0, p1, Lcom/sonyericsson/android/camera/device/CameraInfo;->canDisableShutterSound:Z

    .line 1470
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "facing = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/sonyericsson/android/camera/device/CameraInfo;->facing:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", orientation = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v0, p1, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", canDisableShutterSound = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-boolean p1, p1, Lcom/sonyericsson/android/camera/device/CameraInfo;->canDisableShutterSound:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    :catch_0
    move-exception p0

    .line 1413
    const-string p1, "Failed to get camera info."

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p0

    .line 1401
    const-string p1, "Failed in getCameraCharacteristics"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 1387
    :cond_3
    :goto_1
    const-string p0, "CameraInfo cannot be retrieved. Because PlatformCapability is not prepared."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void
.end method

.method public static getDefaultLogicalMultiCameraMode(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I
    .locals 0

    .line 1675
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isOpticalZoomSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getExposureCompensationStep(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F
    .locals 0

    .line 976
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

.method public static getFileName(I)Ljava/lang/String;
    .locals 2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.sonyericsson.android.camera.supported_values."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileNameForCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/lang/String;
    .locals 2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.sonyericsson.android.camera.supported_values."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileNameForPlatformCapability()Ljava/lang/String;
    .locals 1

    .line 216
    const-string v0, "com.sonyericsson.android.camera.supported_values.platform"

    return-object v0
.end method

.method private static getHolder(Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$HolderType;)Lcom/sonyericsson/android/camera/util/capability/ParameterHolder;
    .locals 7

    .line 1587
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sParameterHolderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1588
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPreparingTaskFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1590
    :try_start_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1591
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "getHolder: get holders: E"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1593
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sParameterHolderMap:Ljava/util/Map;

    sget-object v3, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPreparingTaskFuture:Ljava/util/concurrent/Future;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x3e8

    .line 1594
    invoke-interface {v3, v5, v6, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1593
    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1595
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1596
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "getHolder: get holders: X"

    aput-object v1, v0, v2

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

    .line 1603
    :try_start_1
    const-string v1, "Preparing failed"

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1601
    const-string v1, "Preparing interrupted"

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 1599
    const-string v1, "Preparing timed out"

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1605
    :cond_1
    :goto_0
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    goto :goto_2

    :goto_1
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 1606
    throw p0

    .line 1609
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPreparingTaskFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1610
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 1613
    :try_start_2
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 1614
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "getHolder: call directly: E"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1616
    :cond_3
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sParameterHolderMap:Ljava/util/Map;

    new-instance v3, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;-><init>(Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask-IA;)V

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;->call()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1617
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 1618
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "getHolder: call directly: X"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 1621
    const-string v1, "Failed to call directly"

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1625
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

    .line 1135
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

    .line 555
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    .line 561
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sCameraCapabilityListMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sCameraCapabilityListMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    return-object p0

    .line 564
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Capabilities are not cached for camera:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CameraId is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 556
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "PlatformCapability is not prepared."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMacroValue(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F
    .locals 0

    .line 948
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

    .line 1110
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

    .line 1051
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

    .line 968
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

    .line 1063
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

    .line 956
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

    .line 572
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->PICTURE_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 575
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

    .line 576
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->pixels(Landroid/graphics/Rect;)I

    move-result v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->pixels(Landroid/graphics/Rect;)I

    move-result v3

    if-le v2, v3, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 589
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

    .line 1088
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedPreviewFpsRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1090
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

    .line 1091
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 1092
    aget v1, v1, v2

    if-ge v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getMaxShutterSpeed(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)J
    .locals 2

    .line 996
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

    .line 857
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

    .line 1143
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

    .line 1055
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

    .line 972
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

    .line 1170
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

    .line 1000
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

    .line 867
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

    .line 1118
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

    .line 1102
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

    .line 1114
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

    .line 1047
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

    .line 1206
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->SUPER_SLOW_CONFIGURATION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1207
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;

    .line 1208
    iget v1, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mWidth:I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mHeight:I

    .line 1209
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1210
    iget p0, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mFrameNum:I

    int-to-long p0, p0

    return-wide p0

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static getSuperSlowFrameRate(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)J
    .locals 3

    .line 1189
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->SUPER_SLOW_CONFIGURATION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1190
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;

    .line 1191
    iget v1, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mWidth:I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mHeight:I

    .line 1192
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1193
    iget p0, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mFps:I

    int-to-long p0, p0

    return-wide p0

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static getSupportSlowMotionFpsRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;",
            ")",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 1232
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->NORMAL_SLOW_CONFIGURATION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1233
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/capability/NormalSlowMotionVideoConfiguration;

    .line 1234
    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/NormalSlowMotionVideoConfiguration;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/NormalSlowMotionVideoConfiguration;->mVideoSize:Landroid/util/Size;

    .line 1235
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1236
    iget-object p0, v0, Lcom/sonyericsson/android/camera/util/capability/NormalSlowMotionVideoConfiguration;->mRanges:Ljava/util/List;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
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

    .line 984
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

    .line 1139
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

    .line 1004
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

    .line 964
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

    .line 952
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

    .line 1012
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FUSION_ISO_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    return-object p0
.end method

.method public static getSupportedInputSizes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;
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

    .line 1083
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->INPUT_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

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

    .line 1008
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

    .line 980
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

    .line 1106
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

    .line 1079
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

    .line 1075
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

    .line 992
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

    .line 1043
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

    .line 1123
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

    .line 988
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getSwitchPointZoomRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F
    .locals 0

    .line 1151
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->ZOOM_SWITCH_POINT_RATIOS:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getVideoHdrRecordingProfile()I
    .locals 1

    .line 1280
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$HolderType;->MEDIA_CODEC:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$HolderType;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getHolder(Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$HolderType;)Lcom/sonyericsson/android/camera/util/capability/ParameterHolder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder;

    if-nez v0, :cond_0

    .line 1283
    const-string v0, "parameter is not prepared"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 1286
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder;->getVideoHdrProfile()I

    move-result v0

    return v0
.end method

.method public static getWideZoomTargetRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F
    .locals 0

    .line 1147
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

.method public static getWledTriggerLuxIndex(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)[I
    .locals 0

    const/16 p0, 0x154

    .line 1270
    filled-new-array {p0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static hasDeviceError()Z
    .locals 1

    .line 1687
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->mHasDeviceError:Z

    return v0
.end method

.method public static isAutoHDRSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isBacklightCorrectionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 2

    .line 1561
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->isFront()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1564
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->BACKLIGHT_CORRECTION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 1566
    const-string v0, "auto"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static isBokehSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 0

    .line 1665
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->LOGICAL_MULTI_CAMERA_BOKEH_STILL:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static isBuildFingerprintModified(Landroid/content/SharedPreferences;)Z
    .locals 4

    .line 716
    const-string v0, "android.os.Build.FINGERPRINT"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 719
    :cond_0
    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 720
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 721
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 722
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "version mismatch: cached: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", current : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isBurstSupportedInLowLight()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isBypassCameraSupported()Z
    .locals 1

    .line 1492
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$isBypassCameraSupportStateHolder;->-$$Nest$sfgetsIsSupported()Z

    move-result v0

    return v0
.end method

.method public static isDisplayFlashModeSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 1

    .line 1036
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDistortionCorrectionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 2

    .line 1541
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->DISTORTION_CORRECTION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1543
    const-string v1, "on"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static isEyeDetectionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static isFaceDetectionAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 0

    .line 1067
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FACE_DETECTION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isFlashModeSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 2

    .line 1016
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFlashModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1018
    const-string v1, "on"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static isFocusSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 1

    .line 930
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

    .line 1482
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraInfo;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/device/CameraInfo;-><init>()V

    .line 1483
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraInfo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/device/CameraInfo;)V

    .line 1484
    iget-boolean p0, v0, Lcom/sonyericsson/android/camera/device/CameraInfo;->canDisableShutterSound:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isFrontCameraSupported()Z
    .locals 3

    .line 788
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

    .line 789
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

    .line 820
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

    .line 821
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

    .line 745
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FUSION_MODE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 746
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 747
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "auto"

    .line 748
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

    .line 1337
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1341
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

    .line 1342
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1343
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

    .line 1362
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1367
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

    .line 1368
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mWidth:I

    if-ne v2, v3, :cond_1

    .line 1369
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mHeight:I

    if-ne v2, v3, :cond_1

    .line 1370
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

    .line 1300
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1304
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->ISO_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 1305
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FUSION_ISO_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 1307
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 1308
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

.method public static isIntelligentActiveSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z
    .locals 3

    .line 1748
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    return v1

    .line 1754
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->INTELLIGENT_ACTIVE_CONFIGURATION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;

    .line 1755
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p2, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mWidth:I

    if-ne v0, v2, :cond_1

    .line 1756
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v2, p2, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mHeight:I

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 1757
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result v0

    iget p2, p2, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mFps:I

    if-gt v0, p2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static isLiftTriggerSupported()Z
    .locals 1

    .line 1179
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

    .line 919
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT_2:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isManualFocusSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 0

    .line 881
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MANUAL_FOCUS:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 882
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

.method public static isNightModeSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 2

    .line 1770
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->NIGHT_MODE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1772
    const-string v1, "on"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "auto"

    .line 1773
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static isObjectTrackingSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 0

    .line 898
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

.method public static isOpticalZoomSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 0

    .line 1655
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->LOGICAL_MULTI_CAMERA_OPTICAL_ZOOM:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isPowerSavingSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isPredictiveCaptureShotSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 0

    .line 907
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 908
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
    .locals 4

    .line 475
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;->$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState:[I

    sget-object v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 487
    monitor-exit v0

    return v3

    .line 478
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sCameraCapabilityListMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPlatformCapabilityList:Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    monitor-exit v0

    return v3

    .line 482
    :cond_2
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    .line 489
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs isProduct([Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;)Z
    .locals 5

    .line 1517
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sProduct:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    if-nez v0, :cond_0

    .line 1518
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->checkProduct()V

    .line 1520
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 1521
    sget-object v4, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sProduct:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    if-ne v3, v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isSMX2()Z
    .locals 3

    .line 1529
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM12:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM22:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    sget-object v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM42:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isProduct([Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;)Z

    move-result v0

    return v0
.end method

.method public static isSceneRecognitionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 0

    .line 1059
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

    .line 707
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

    .line 708
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
    .locals 6

    .line 887
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->AE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 888
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 892
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MAX_SHUTTER_SPEED:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 893
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MIN_SHUTTER_SPEED:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 894
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isSideTouchSupported()Z
    .locals 1

    .line 1321
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

    .line 1071
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

    .line 871
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxSoftSkinLevel(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I

    move-result v0

    .line 872
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

.method public static isSteadyShotSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z
    .locals 4

    .line 1717
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isVideoStabilizerOnHdrSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p2

    if-nez p2, :cond_0

    return v1

    .line 1723
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->STEADY_SHOT_CONFIGURATION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;

    .line 1724
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p2, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mWidth:I

    if-ne v2, v3, :cond_1

    .line 1725
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p2, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mHeight:I

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 1726
    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result v2

    iget p2, p2, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mFps:I

    if-gt v2, p2, :cond_1

    return v0

    :cond_2
    const/4 p0, 0x0

    .line 1731
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result p0

    const/16 p1, 0x3c

    if-gt p0, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public static isStillHdrSupportedWith(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isSuperResolutionZoomSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 2

    .line 1806
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->SUPER_RESOLUTION_ZOOM:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1808
    const-string v1, "auto"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static isSuperSlowFullHdSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 3

    .line 1222
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->SUPER_SLOW_CONFIGURATION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1223
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;

    .line 1224
    iget v1, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mWidth:I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v0, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mHeight:I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 1225
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

    .line 1637
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->SUPER_SLOW_VALUES:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1639
    const-string v1, "on"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static isSuperWideSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 4

    .line 935
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

    .line 936
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "isSuperWideSupported() SUPPORT"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 939
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

    .line 1155
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedMeteringModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p0

    const-string/jumbo v0, "user"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isTouchFocusSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 1

    .line 960
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

    .line 926
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

.method public static isUltraWideCameraSupport()Z
    .locals 3

    .line 806
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

    .line 807
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->U_WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isVersionModified(Landroid/content/SharedPreferences;)Z
    .locals 3

    .line 731
    const-string v0, "capability-version"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 734
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 735
    sget v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->CAPABILITY_VERSION:I

    if-eq p0, v0, :cond_2

    .line 736
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "version mismatch: cached: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", current : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->CAPABILITY_VERSION:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public static isVideoHdrSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 0

    .line 1249
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

.method public static isVideoOISSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 0

    .line 1259
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getList(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->VIDEO_OIS_SUPPORTED:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

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

.method public static isVideoStabilizerSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z
    .locals 1

    .line 1699
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSteadyShotSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1700
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isIntelligentActiveSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isVideoSuperResolutionZoomSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static isWideCameraSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static loadCameraCapabilityFromDevice(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;
    .locals 5

    const-string v0, "Mandatory capabilities could not be retrieved. fps-range is empty:"

    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoked cameraId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 656
    :try_start_0
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object p2

    .line 655
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    .line 661
    new-instance p2, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    new-instance v2, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;

    invoke-direct {v2, p1}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    new-instance p1, Lcom/sonyericsson/android/camera/util/capability/BypassCameraStaticParameters;

    new-instance v3, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    invoke-direct {v3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;-><init>()V

    invoke-direct {p1, v3}, Lcom/sonyericsson/android/camera/util/capability/BypassCameraStaticParameters;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;)V

    invoke-direct {p2, p0, v2, p1}, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;Lcom/sonyericsson/android/camera/util/capability/BypassCameraStaticParameters;)V

    .line 666
    iget-object p0, p2, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FPS_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    .line 667
    iget-object p1, p2, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->PREVIEW_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    .line 668
    iget-object v2, p2, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->PICTURE_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 677
    :cond_0
    new-array p0, v4, [Ljava/lang/String;

    const-string p1, "CameraCapabilities are loadded from device."

    aput-object p1, p0, v3

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-object p2

    .line 670
    :cond_1
    :goto_0
    new-array p2, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " preview-size is empty:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " picture-size is empty:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v3

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 680
    const-string p1, "Fail to load capabilities from device."

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static loadCameraCapabilityFromPreferences(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;
    .locals 2

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked cameraId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 612
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getFileNameForCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/lang/String;

    move-result-object p1

    .line 611
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->loadPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 616
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method private static loadPlatformCapabilityFromDevice(Landroid/content/Context;)Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;
    .locals 3

    .line 688
    :try_start_0
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 690
    new-array p0, p0, [Ljava/lang/String;

    const-string v1, "PlatformCapabilities are loaded from device."

    const/4 v2, 0x0

    aput-object v1, p0, v2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 693
    const-string v0, "Fail to load PlatformCapabilities from device."

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static loadPlatformCapabilityFromPreferences(Landroid/content/Context;)Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;
    .locals 2

    .line 621
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getFileNameForPlatformCapability()Ljava/lang/String;

    move-result-object v0

    .line 620
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->loadPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 625
    :cond_0
    new-instance v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    return-object v1
.end method

.method private static loadPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 3

    const/4 v0, 0x0

    .line 630
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    .line 631
    const-string/jumbo v1, "shared-preferences is not valid: name = "

    if-nez p0, :cond_0

    .line 632
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-object v0

    .line 635
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSharedPreferencesValid(Landroid/content/SharedPreferences;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loaded from shared-preferences: name = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-object p0

    .line 639
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 640
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object v0
.end method

.method private static pixels(Landroid/graphics/Rect;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 596
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

    const-string v0, "Invoked state:"

    .line 249
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->hasDeviceError()Z

    move-result v1

    const/4 v2, 0x0

    .line 250
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->setDeviceError(Z)V

    .line 251
    sget-object v3, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 252
    :try_start_0
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    new-array v4, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    .line 255
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->IDLE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    sput-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    .line 256
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPlatformCapabilityList:Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;

    if-eqz v1, :cond_1

    .line 257
    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPlatformCapabilityList:Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;

    .line 259
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sCameraCapabilityListMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 260
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 261
    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sCameraCapabilityListMap:Ljava/util/Map;

    .line 264
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;->$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState:[I

    sget-object v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v5, :cond_3

    .line 274
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->RUNNING:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    sput-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    .line 275
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareLatch:Ljava/util/concurrent/CountDownLatch;

    .line 276
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareTask;

    sget-object v4, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v4, p0, v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareTask;-><init>(Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareTask-IA;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 277
    monitor-exit v3

    return-void

    .line 266
    :cond_3
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    .line 277
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static prepareInternal(Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;)V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "Preparation of platform capability is finished with Illegal state. state:"

    const-string v2, "Preparation of platform capability is finished with Illegal state. state:"

    .line 371
    sget-object v3, Lcom/sonyericsson/android/camera/util/PerfLog;->PLATFORM_CAPABILITY_PREPARE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 372
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 373
    const-class v4, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager;

    .line 378
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v6, 0x7d0

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 381
    :try_start_0
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->loadPlatformCapabilityFromPreferences(Landroid/content/Context;)Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;

    move-result-object v14

    if-nez v14, :cond_0

    .line 384
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->loadPlatformCapabilityFromDevice(Landroid/content/Context;)Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move v15, v12

    goto :goto_0

    :cond_0
    move v15, v13

    :goto_0
    if-nez v14, :cond_5

    .line 425
    sget-object v16, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareStateLock:Ljava/lang/Object;

    monitor-enter v16

    .line 426
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;->$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState:[I

    sget-object v3, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v12, :cond_2

    if-eq v0, v11, :cond_1

    if-eq v0, v10, :cond_1

    if-eq v0, v9, :cond_1

    goto :goto_1

    .line 430
    :cond_1
    new-array v0, v12, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v13

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto :goto_1

    .line 436
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareLatch:Ljava/util/concurrent/CountDownLatch;

    if-ne v1, v0, :cond_3

    .line 437
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->IDLE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    .line 461
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 462
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    invoke-interface/range {p1 .. p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;->onPrepared()V

    .line 465
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "prepare: request preparing parameters"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 466
    :cond_4
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;

    invoke-direct {v1, v8}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;-><init>(Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask-IA;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 467
    invoke-interface {v0, v1, v6, v7, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPreparingTaskFuture:Ljava/util/concurrent/Future;

    return-void

    :catchall_0
    move-exception v0

    .line 462
    :try_start_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 393
    :cond_5
    :try_start_3
    sget-object v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sAvailableCameraIdsMap:Ljava/util/Map;

    iget-object v6, v14, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->CAMERA_IDS:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v2, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 395
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 396
    new-array v2, v12, [Ljava/lang/String;

    const-string v3, "Camera list could not be retrieved from camera device."

    aput-object v3, v2, v13

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 425
    sget-object v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 426
    :try_start_4
    sget-object v3, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;->$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState:[I

    sget-object v4, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v12, :cond_7

    if-eq v3, v11, :cond_6

    if-eq v3, v10, :cond_6

    if-eq v3, v9, :cond_6

    goto :goto_2

    .line 430
    :cond_6
    new-array v3, v12, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v13

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto :goto_2

    .line 436
    :cond_7
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareLatch:Ljava/util/concurrent/CountDownLatch;

    if-ne v1, v0, :cond_8

    .line 437
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->IDLE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    .line 461
    :cond_8
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 462
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 463
    invoke-interface/range {p1 .. p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;->onPrepared()V

    .line 465
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "prepare: request preparing parameters"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 466
    :cond_9
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;

    invoke-direct {v1, v8}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;-><init>(Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask-IA;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7d0

    .line 467
    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPreparingTaskFuture:Ljava/util/concurrent/Future;

    return-void

    :catchall_1
    move-exception v0

    .line 462
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 401
    :cond_a
    :try_start_6
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v13

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 404
    invoke-static {v3, v6}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->loadCameraCapabilityFromPreferences(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v7

    if-nez v7, :cond_b

    .line 408
    invoke-static {v3, v4, v6}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->loadCameraCapabilityFromDevice(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v7

    move v2, v12

    :cond_b
    if-nez v7, :cond_10

    .line 413
    new-array v0, v12, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Platform capability could not load cameraCapabilityList for camera:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 414
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v13

    .line 413
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 425
    sget-object v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 426
    :try_start_7
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;->$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState:[I

    sget-object v3, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v12, :cond_d

    if-eq v0, v11, :cond_c

    if-eq v0, v10, :cond_c

    if-eq v0, v9, :cond_c

    goto :goto_4

    .line 430
    :cond_c
    new-array v0, v12, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preparation of platform capability is finished with Illegal state. state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v13

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto :goto_4

    .line 436
    :cond_d
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareLatch:Ljava/util/concurrent/CountDownLatch;

    if-ne v1, v0, :cond_e

    .line 437
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->IDLE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    .line 461
    :cond_e
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 462
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 463
    invoke-interface/range {p1 .. p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;->onPrepared()V

    .line 465
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "prepare: request preparing parameters"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 466
    :cond_f
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;

    invoke-direct {v1, v8}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;-><init>(Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask-IA;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7d0

    .line 467
    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPreparingTaskFuture:Ljava/util/concurrent/Future;

    return-void

    :catchall_2
    move-exception v0

    .line 462
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 417
    :cond_10
    :try_start_9
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto/16 :goto_3

    .line 425
    :cond_11
    sget-object v6, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareStateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 426
    :try_start_a
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;->$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState:[I

    sget-object v7, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->ordinal()I

    move-result v7

    aget v0, v0, v7

    if-eq v0, v12, :cond_13

    if-eq v0, v11, :cond_12

    if-eq v0, v10, :cond_12

    if-eq v0, v9, :cond_12

    goto :goto_6

    .line 430
    :cond_12
    new-array v0, v12, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preparation of platform capability is finished with Illegal state. state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v13

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto :goto_6

    .line 436
    :cond_13
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareLatch:Ljava/util/concurrent/CountDownLatch;

    if-ne v1, v0, :cond_15

    .line 437
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->IDLE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    .line 439
    sput-object v4, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 440
    sput-object v5, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sCameraCapabilityListMap:Ljava/util/Map;

    .line 441
    sput-object v14, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPlatformCapabilityList:Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;

    if-eqz v2, :cond_14

    .line 445
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 444
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 446
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getFileNameForCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sCameraCapabilityListMap:Ljava/util/Map;

    .line 447
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->values()Ljava/util/List;

    move-result-object v2

    .line 446
    invoke-static {v3, v4, v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->store(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z

    goto :goto_5

    :cond_14
    if-eqz v15, :cond_15

    .line 451
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPlatformCapabilityList:Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;

    if-eqz v0, :cond_15

    .line 452
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getFileNameForPlatformCapability()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPlatformCapabilityList:Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;

    .line 453
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->values()Ljava/util/List;

    move-result-object v2

    .line 452
    invoke-static {v3, v0, v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->store(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z

    .line 461
    :cond_15
    :goto_6
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 462
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 463
    invoke-interface/range {p1 .. p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;->onPrepared()V

    .line 465
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_16

    const-string v0, "prepare: request preparing parameters"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 466
    :cond_16
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;

    invoke-direct {v1, v8}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;-><init>(Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask-IA;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7d0

    .line 467
    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPreparingTaskFuture:Ljava/util/concurrent/Future;

    .line 471
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->PLATFORM_CAPABILITY_PREPARE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void

    :catchall_3
    move-exception v0

    .line 462
    :try_start_b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    .line 425
    sget-object v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 426
    :try_start_c
    sget-object v3, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;->$SwitchMap$com$sonyericsson$android$camera$util$capability$PlatformCapability$PrepareState:[I

    sget-object v4, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v12, :cond_18

    if-eq v3, v11, :cond_17

    if-eq v3, v10, :cond_17

    if-eq v3, v9, :cond_17

    goto :goto_7

    .line 430
    :cond_17
    new-array v3, v12, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preparation of platform capability is finished with Illegal state. state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v13

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto :goto_7

    .line 436
    :cond_18
    sget-object v3, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareLatch:Ljava/util/concurrent/CountDownLatch;

    if-ne v1, v3, :cond_19

    .line 437
    sget-object v3, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->IDLE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    sput-object v3, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareState:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    .line 461
    :cond_19
    :goto_7
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 462
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 463
    invoke-interface/range {p1 .. p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;->onPrepared()V

    .line 465
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_1a

    const-string v1, "prepare: request preparing parameters"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 466
    :cond_1a
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPrepareTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;

    invoke-direct {v2, v8}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask;-><init>(Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareParametersTask-IA;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x7d0

    .line 467
    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->sPreparingTaskFuture:Ljava/util/concurrent/Future;

    .line 469
    throw v0

    :catchall_5
    move-exception v0

    .line 462
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0
.end method

.method public static setDeviceError(Z)V
    .locals 0

    .line 1683
    sput-boolean p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->mHasDeviceError:Z

    return-void
.end method

.method static store(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
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

    .line 756
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "store: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 758
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_2

    .line 762
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "Failed to obtain shared prefs."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return v0

    .line 766
    :cond_2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 769
    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 770
    const-string v0, "android.os.Build.FINGERPRINT"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 771
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.os.Build.FINGERPRINT: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 773
    :cond_3
    sget p1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->CAPABILITY_VERSION:I

    .line 774
    const-string v0, "capability-version"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 775
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KEY_VERSION: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 777
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

    .line 778
    invoke-virtual {p2, p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->write(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 781
    :cond_5
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 782
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_6

    const-string/jumbo p0, "store: success."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6
    const/4 p0, 0x1

    return p0
.end method
