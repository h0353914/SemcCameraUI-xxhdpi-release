.class public Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;
.super Ljava/lang/Object;
.source "CameraExtensionServiceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;,
        Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$OnScreenOffTask;,
        Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$UpdateCameraStatusTask;
    }
.end annotation


# static fields
.field private static final CAMERA_COMMON_PACKAGE:Ljava/lang/String; = "com.sonymobile.cameracommon"

.field private static final CAMERA_EXTENSION_SERVICE_CLASS:Ljava/lang/String; = "com.sonymobile.cameracommon.CameraExtensionService"

.field private static final CAMERA_EXTENSION_SERVICE_WAIT_TIMEOUT_MILLIS:I = 0xbb8

.field private static final sInstance:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;


# instance fields
.field private mBackWorker:Ljava/util/concurrent/ExecutorService;

.field private mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private mService:Lcom/sonymobile/cameracommon/ICameraExtensionService;

.field private mServiceConnection:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;

.field private mShouldUnbind:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmConnectedSignal(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;Lcom/sonymobile/cameracommon/ICameraExtensionService;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mService:Lcom/sonymobile/cameracommon/ICameraExtensionService;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetService(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)Lcom/sonymobile/cameracommon/ICameraExtensionService;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->getService()Lcom/sonymobile/cameracommon/ICameraExtensionService;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartService(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->startService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopService(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->stopService()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->sInstance:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    .line 40
    const-string v0, "CameraExtensionService-Thread"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static getInstance()Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;
    .locals 1

    .line 35
    sget-object v0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->sInstance:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    return-object v0
.end method

.method private getService()Lcom/sonymobile/cameracommon/ICameraExtensionService;
    .locals 6

    const-string v0, "getCameraExtensionService fail "

    .line 94
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mService:Lcom/sonymobile/cameracommon/ICameraExtensionService;

    if-nez v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 97
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :goto_0
    iput-object v1, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    .line 100
    :try_start_1
    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :goto_1
    iput-object v1, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 103
    throw v0

    .line 106
    :cond_0
    :goto_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mService:Lcom/sonymobile/cameracommon/ICameraExtensionService;

    return-object p0
.end method

.method private startService()V
    .locals 4

    .line 45
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 46
    new-instance v0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;-><init>(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mServiceConnection:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;

    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 49
    const-string v1, "com.sonymobile.cameracommon"

    const-string v2, "com.sonymobile.cameracommon.CameraExtensionService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mServiceConnection:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;

    const/16 v3, 0x201

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mShouldUnbind:Z

    if-eqz v0, :cond_0

    .line 55
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "bind Camera extension service succeed"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mServiceConnection:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private stopService()V
    .locals 2

    .line 63
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mShouldUnbind:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mShouldUnbind:Z

    .line 65
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "unbindService Camera extension service"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mServiceConnection:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mServiceConnection:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;

    .line 69
    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mService:Lcom/sonymobile/cameracommon/ICameraExtensionService;

    .line 70
    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    :cond_1
    return-void
.end method


# virtual methods
.method public bindService()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$1;-><init>(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public screenOff()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$OnScreenOffTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$OnScreenOffTask;-><init>(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$OnScreenOffTask-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unBindService()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$2;-><init>(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateCameraStatus(Landroid/content/ContentValues;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$UpdateCameraStatusTask;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$UpdateCameraStatusTask;-><init>(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;Landroid/content/ContentValues;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
