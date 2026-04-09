.class public Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;
.super Ljava/lang/Object;
.source "WearableBridgeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$VideoStateNotifierImpl;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$NotifyCaptureFailedTask;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$NotifyCaptureSucceededTask;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$NotifyPhotoStateTask;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$PhotoStateNotifierImpl;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$NotifyOnPauseTask;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$NotifyOnResumeTask;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$LifeCycleNotifierImpl;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$InitializeTask;
    }
.end annotation


# static fields
.field private static final BACKGROUND_TASK_TIMEOUT_MILLIS:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "WearableBridgeClient"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBackWorker:Ljava/util/concurrent/ExecutorService;

.field private mCallbackHandler:Landroid/os/Handler;

.field private final mInitializationDone:Ljava/util/concurrent/CountDownLatch;

.field private mIsObserverEnabled:Z

.field private mLifeCycleNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$LifeCycleNotifier;

.field private mLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

.field private mPhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

.field private mPhotoStateNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;

.field private mVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;

.field private mVideoStateNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;

.field private mWearableBridgeClientBroadcastFilter:Landroid/content/IntentFilter;

.field private mWearableBridgeClientBroadcastReceiver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClientBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;)V
    .locals 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mActivity:Landroid/app/Activity;

    .line 40
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mCallbackHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mIsObserverEnabled:Z

    .line 46
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

    .line 48
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mPhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

    .line 50
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;

    .line 53
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mLifeCycleNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$LifeCycleNotifier;

    .line 55
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mPhotoStateNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;

    .line 57
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mVideoStateNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;

    .line 60
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mWearableBridgeClientBroadcastReceiver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClientBroadcastReceiver;

    .line 62
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mWearableBridgeClientBroadcastFilter:Landroid/content/IntentFilter;

    .line 65
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    .line 69
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mInitializationDone:Ljava/util/concurrent/CountDownLatch;

    .line 85
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CONSTRUCTOR : E"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mActivity:Landroid/app/Activity;

    .line 89
    iput-object p2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mCallbackHandler:Landroid/os/Handler;

    .line 90
    iput-object p3, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

    .line 91
    iput-object p4, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mPhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

    .line 92
    iput-object p5, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;

    const-string p1, "WearableBridgeClient"

    .line 95
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    .line 98
    new-instance p1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$InitializeTask;

    invoke-direct {p1, p0, v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$InitializeTask;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$1;)V

    .line 99
    iget-object p0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 101
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "CONSTRUCTOR : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mPhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$LifeCycleNotifier;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$LifeCycleNotifier;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mLifeCycleNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$LifeCycleNotifier;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;)Landroid/content/IntentFilter;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mWearableBridgeClientBroadcastFilter:Landroid/content/IntentFilter;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mWearableBridgeClientBroadcastFilter:Landroid/content/IntentFilter;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mInitializationDone:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mIsObserverEnabled:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mIsObserverEnabled:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;)Landroid/app/Activity;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getNotifierIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$302(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mPhotoStateNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;

    return-object p1
.end method

.method static synthetic access$502(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mVideoStateNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClientBroadcastReceiver;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mWearableBridgeClientBroadcastReceiver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClientBroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$702(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClientBroadcastReceiver;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClientBroadcastReceiver;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mWearableBridgeClientBroadcastReceiver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClientBroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

    return-object p0
.end method

.method private getNotifierIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "com.sonymobile.cameracommon.wearablebridge"

    .line 173
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "wearable-bridge-client-package-name-key"

    .line 174
    iget-object p0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mActivity:Landroid/app/Activity;

    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 174
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p0, 0x24

    .line 177
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public getLifeCycleNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$LifeCycleNotifier;
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mLifeCycleNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$LifeCycleNotifier;

    return-object p0
.end method

.method public getPhotoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;
    .locals 0

    .line 406
    iget-object p0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mPhotoStateNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;

    return-object p0
.end method

.method public getVideoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;
    .locals 0

    .line 415
    iget-object p0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mVideoStateNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;

    return-object p0
.end method

.method public joinInitializeTask()V
    .locals 4

    .line 422
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "joinInitializeTask in"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 424
    :cond_0
    :try_start_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Future.get() in:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 425
    :cond_1
    iget-object p0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mInitializationDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 426
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Future.get() out:"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v0, 0x1

    .line 428
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InitializeTaskFeature has been interrupted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 430
    :cond_2
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "joinInitializeTask out"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public release()V
    .locals 4

    .line 141
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "release() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v1, 0xbb8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to shutdown mBackWorker."

    .line 148
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mWearableBridgeClientBroadcastReceiver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClientBroadcastReceiver;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClientBroadcastReceiver;->release()V

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mWearableBridgeClientBroadcastReceiver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClientBroadcastReceiver;

    .line 154
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mWearableBridgeClientBroadcastFilter:Landroid/content/IntentFilter;

    .line 157
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mLifeCycleNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$LifeCycleNotifier;

    .line 158
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mPhotoStateNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;

    .line 159
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mVideoStateNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;

    .line 162
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mActivity:Landroid/app/Activity;

    .line 163
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mCallbackHandler:Landroid/os/Handler;

    .line 164
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

    .line 165
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mPhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

    .line 166
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->mVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;

    .line 168
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "release() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method
