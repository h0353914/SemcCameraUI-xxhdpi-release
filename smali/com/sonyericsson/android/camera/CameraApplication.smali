.class public Lcom/sonyericsson/android/camera/CameraApplication;
.super Landroid/app/Application;
.source "CameraApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/CameraApplication$ClassPreloadDoneCallback;,
        Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;,
        Lcom/sonyericsson/android/camera/CameraApplication$Pausable;
    }
.end annotation


# static fields
.field private static final CLASS_PRELOAD_WAKELOCK_TIMEOUT_MILLIS:I = 0x7d0

.field public static final TAG:Ljava/lang/String; = "CameraApplication"

.field private static sContext:Landroid/content/Context;

.field private static final sUiThreadHandler:Landroid/os/Handler;


# instance fields
.field private mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

.field private mClassPreloadDoneCallback:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;

.field private mClassPreloadThread:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;

.field private mStorage:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

.field private mUserSettingsLoader:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraApplication;->sUiThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mClassPreloadThread:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;

    .line 54
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mClassPreloadDoneCallback:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;

    .line 67
    sput-object p0, Lcom/sonyericsson/android/camera/CameraApplication;->sContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/CameraApplication;)Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mUserSettingsLoader:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera/CameraApplication;Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;)Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mClassPreloadThread:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sonyericsson/android/camera/CameraApplication;Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;)Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mClassPreloadDoneCallback:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;

    return-object p1
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 161
    sget-object v0, Lcom/sonyericsson/android/camera/CameraApplication;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static final getUiThreadHandler()Landroid/os/Handler;
    .locals 1

    .line 72
    sget-object v0, Lcom/sonyericsson/android/camera/CameraApplication;->sUiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    return-object p0
.end method

.method getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mStorage:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    return-object p0
.end method

.method public getUserSettingsLoader()Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mUserSettingsLoader:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    .line 81
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->APPLICATION_ON_CREATE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 82
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onCreate() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 84
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mStorage:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mStorage:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->open(Landroid/content/Context;)V

    .line 87
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mStorage:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mUserSettingsLoader:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    .line 88
    new-instance v0, Lcom/sonyericsson/android/camera/CameraApplication$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraApplication$1;-><init>(Lcom/sonyericsson/android/camera/CameraApplication;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->prepareAsync(Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;)V

    .line 98
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    sget-object v1, Lcom/sonyericsson/android/camera/CameraApplication;->sContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 103
    new-instance v0, Lcom/sonyericsson/android/camera/CameraApplication$ClassPreloadDoneCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/CameraApplication$ClassPreloadDoneCallback;-><init>(Lcom/sonyericsson/android/camera/CameraApplication;Lcom/sonyericsson/android/camera/CameraApplication$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mClassPreloadDoneCallback:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;

    .line 104
    new-instance v0, Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mClassPreloadDoneCallback:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;-><init>(Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mClassPreloadThread:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mClassPreloadThread:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;->setPriority(I)V

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mClassPreloadThread:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;

    const-string v1, "ClassStaticBlockPreLoadThread"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;->setName(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mClassPreloadThread:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;->start()V

    const-string v0, "power"

    .line 110
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ClassStaticBlockPreLoadThread"

    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 134
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mStorage:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v1, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;

    invoke-direct {v1, v0}, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 141
    sget-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->preload(Landroid/content/Context;)V

    .line 144
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "onCreate() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 145
    :cond_1
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->APPLICATION_ON_CREATE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 150
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mUserSettingsLoader:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->release()V

    .line 152
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mStorage:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->close()V

    return-void
.end method
