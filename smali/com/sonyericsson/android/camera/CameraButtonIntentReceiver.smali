.class public Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraButtonIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$CameraDeviceReleaseTimerTask;,
        Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;,
        Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;
    }
.end annotation


# static fields
.field private static final CAMERA_DEVICE_AUTO_RELEASE_TIMER_DURATION:I = 0x1388

.field private static final NORMAL_LAUNCH_FAST_CAPTURE_START_SUBJECT:Ljava/lang/String; = "start"

.field private static final START_UP_WAKE_LOCK_DURATION_MILLIS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "CameraButtonIntentReceiver"

.field private static sCurrentState:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

.field private static sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

.field private static sReleaseTimer:Ljava/util/Timer;

.field private static final sReleaseTimerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimerLock:Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sCurrentState:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    .line 82
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 40
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Timer;
    .locals 1

    .line 40
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 40
    sput-object p0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V
    .locals 0

    .line 40
    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    return-void
.end method

.method private static changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V
    .locals 4

    .line 85
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeTo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sCurrentState:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 86
    :cond_0
    sput-object p0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sCurrentState:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    return-void
.end method

.method private isInLockTaskMode(Landroid/content/Context;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string p0, "activity"

    .line 548
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 550
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z
    .locals 0

    .line 533
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getFastCapture()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object p0

    .line 534
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onCancelReceived(Landroid/content/Context;)V
    .locals 0

    .line 657
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    .line 660
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    return-void
.end method

.method private onDirectStartReceived(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/camera/setting/LastSettings;)V
    .locals 3

    .line 631
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getFastCapture()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object p0

    .line 632
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p0, p3, :cond_0

    .line 634
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p3

    const/4 v0, 0x0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v2, 0x1

    invoke-virtual {p3, p1, v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 641
    :cond_0
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 642
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p0, v0, :cond_1

    const-string p0, "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH_AND_CAPTURE"

    .line 643
    invoke-virtual {p3, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string p0, "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH"

    .line 645
    invoke-virtual {p3, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    :goto_0
    const-class p0, Lcom/sonyericsson/android/camera/CameraActivityOnLockScreen;

    invoke-virtual {p3, p1, p0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p0, "android.intent.category.LAUNCHER"

    .line 648
    invoke-virtual {p3, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 649
    invoke-virtual {p3, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "android.intent.extra.SUBJECT"

    .line 650
    invoke-virtual {p3, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.sonyericsson.android.camera.extra.launchTrigger"

    .line 651
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    .line 652
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p2

    .line 651
    invoke-virtual {p3, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onNullReceived(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/LastSettings;)V
    .locals 3

    .line 554
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getFastCapture()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object p0

    .line 555
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p0, p2, :cond_0

    .line 557
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    const/4 v0, 0x0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v2, 0x1

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 565
    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 566
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p0, v0, :cond_1

    const-string p0, "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH_AND_CAPTURE"

    .line 567
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string p0, "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH"

    .line 569
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    :goto_0
    const-class p0, Lcom/sonyericsson/android/camera/CameraActivityOnLockScreen;

    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p0, "android.intent.category.LAUNCHER"

    .line 572
    invoke-virtual {p2, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 573
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "android.intent.extra.SUBJECT"

    const-string v0, "start"

    .line 574
    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.sonyericsson.android.camera.extra.launchTrigger"

    .line 575
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    .line 576
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onPrepareReceived(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/LastSettings;)V
    .locals 2

    .line 582
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.sonymobile.cameracommon.intent.ACTION_FORCE_EXIT_REQUEST"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 583
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 584
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 586
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getFastCapture()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object p0

    .line 587
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p0, p2, :cond_0

    .line 589
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    const/4 p2, 0x0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 600
    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startCameraDeviceReleaseTimer(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private onStartReceived(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/camera/setting/LastSettings;)V
    .locals 3

    .line 605
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getFastCapture()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object p0

    .line 606
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p0, p3, :cond_0

    .line 608
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p3

    const/4 v0, 0x0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v2, 0x1

    invoke-virtual {p3, p1, v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 615
    :cond_0
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 616
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p0, v0, :cond_1

    const-string p0, "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH_AND_CAPTURE"

    .line 617
    invoke-virtual {p3, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string p0, "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH"

    .line 619
    invoke-virtual {p3, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    :goto_0
    const-class p0, Lcom/sonyericsson/android/camera/CameraActivityOnLockScreen;

    invoke-virtual {p3, p1, p0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p0, "android.intent.category.LAUNCHER"

    .line 622
    invoke-virtual {p3, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 623
    invoke-virtual {p3, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "android.intent.extra.SUBJECT"

    .line 624
    invoke-virtual {p3, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.sonyericsson.android.camera.extra.launchTrigger"

    .line 625
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    .line 626
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p2

    .line 625
    invoke-virtual {p3, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static final preload()V
    .locals 0

    return-void
.end method

.method public static declared-synchronized releaseCameraDeviceReleaseTimer()V
    .locals 3

    const-class v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;

    monitor-enter v0

    .line 684
    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Cancel camera release due to timeout."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 689
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 690
    :try_start_1
    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    if-eqz v2, :cond_1

    .line 691
    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 692
    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    const/4 v2, 0x0

    .line 693
    sput-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    .line 695
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    .line 695
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 683
    monitor-exit v0

    throw v1
.end method

.method private static setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V
    .locals 0

    .line 96
    sput-object p0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    return-void
.end method

.method private showScreenPinnedToastMessage(Landroid/content/Context;)V
    .locals 1

    .line 539
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0f026d

    const/4 v0, 0x0

    .line 540
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 541
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private static declared-synchronized startCameraDeviceReleaseTimer(Landroid/content/Context;)V
    .locals 6

    const-class v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;

    monitor-enter v0

    .line 664
    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Schedule camera release due to timeout."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 670
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 671
    :try_start_1
    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    if-nez v2, :cond_1

    .line 673
    new-instance v2, Ljava/util/Timer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/Timer;-><init>(Z)V

    sput-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    .line 676
    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    new-instance v3, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$CameraDeviceReleaseTimerTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$CameraDeviceReleaseTimerTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 680
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 681
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 680
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 663
    monitor-exit v0

    throw p0
.end method

.method private startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V
    .locals 0

    .line 496
    sget-object p0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;->$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$IntentKind:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 514
    :pswitch_0
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 516
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    goto :goto_0

    .line 505
    :pswitch_1
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 507
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    goto :goto_0

    .line 498
    :pswitch_2
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 500
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private wakeUpAndVibrateOnLaunch(Landroid/content/Context;)V
    .locals 2

    const-string p0, "power"

    .line 486
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const-string v0, "CameraButtonIntentReceiver"

    const v1, 0x1000001a

    .line 487
    invoke-virtual {p0, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    .line 489
    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 491
    sget-object p0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->EFFECT_STANDARD:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    .line 492
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/controller/VibrationManager;->vibrate(Landroid/content/Context;Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    monitor-enter p0

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->abortBroadcast()V

    .line 111
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Intent has been aborted."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 115
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    const-class v1, Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 118
    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "Camera is disabled, so the request to start camera is refused."

    .line 120
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "android.intent.extra.SUBJECT"

    .line 125
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "prepare"

    .line 126
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->FAST_CAMERA_BUTTON_INTENT_RECEIVED:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 128
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->PREPARE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_0

    :cond_2
    const-string v0, "start"

    .line 129
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->START:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_0

    :cond_3
    const-string v0, "start-secure"

    .line 131
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 132
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->START_SECURE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_0

    :cond_4
    const-string v0, "cancel"

    .line 133
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 134
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->CANCEL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_0

    :cond_5
    const-string v0, "activity-resumed"

    .line 135
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 136
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ACTIVITY_RESUMED:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_0

    :cond_6
    const-string v0, "activity-paused"

    .line 137
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 138
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ACTIVITY_PAUSED:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_0

    .line 140
    :cond_7
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    .line 144
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/CameraApplication;

    .line 145
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraApplication;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/setting/SettingsFactory;->create(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 148
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive intent for camera. kind:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sCurrentState:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " lastMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getFastCapture()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " inLockMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 148
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 155
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;->$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$ReceiverState:[I

    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sCurrentState:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    .line 440
    :pswitch_0
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;->$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$IntentKind:[I

    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_3

    .line 468
    :pswitch_1
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    goto/16 :goto_3

    .line 463
    :pswitch_2
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    goto/16 :goto_3

    .line 328
    :pswitch_3
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;->$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$IntentKind:[I

    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_3

    .line 430
    :pswitch_4
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    goto/16 :goto_3

    .line 425
    :pswitch_5
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->ACTIVE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    goto/16 :goto_3

    .line 400
    :pswitch_6
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    .line 402
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_8

    .line 403
    monitor-exit p0

    return-void

    .line 408
    :cond_8
    :try_start_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 410
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 411
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_3

    .line 415
    :cond_9
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onDirectStartReceived(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 416
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_3

    .line 378
    :pswitch_7
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    .line 380
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_a

    .line 381
    monitor-exit p0

    return-void

    .line 386
    :cond_a
    :try_start_3
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 388
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 389
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_3

    .line 393
    :cond_b
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onDirectStartReceived(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 394
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_3

    .line 355
    :pswitch_8
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    .line 357
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p2, :cond_c

    .line 358
    monitor-exit p0

    return-void

    .line 363
    :cond_c
    :try_start_4
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 365
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 366
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_3

    .line 370
    :cond_d
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->PREPARE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 371
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onPrepareReceived(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 372
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_3

    .line 331
    :pswitch_9
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    .line 333
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z

    move-result p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez p2, :cond_e

    .line 334
    monitor-exit p0

    return-void

    .line 339
    :cond_e
    :try_start_5
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 341
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 342
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_3

    .line 347
    :cond_f
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 348
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onNullReceived(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 349
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_3

    .line 262
    :pswitch_a
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;->$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$IntentKind:[I

    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3

    goto/16 :goto_3

    .line 312
    :pswitch_b
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    .line 313
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->ACTIVE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 314
    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startCameraDeviceReleaseTimer(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 306
    :pswitch_c
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 307
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onCancelReceived(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 290
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 292
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 293
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_3

    .line 297
    :cond_10
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->STARTING:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 298
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onStartReceived(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 299
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->wakeUpAndVibrateOnLaunch(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 274
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 276
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 277
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_3

    .line 281
    :cond_11
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->STARTING:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 282
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onStartReceived(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 283
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->wakeUpAndVibrateOnLaunch(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 157
    :pswitch_f
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;->$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$IntentKind:[I

    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4

    goto/16 :goto_3

    .line 248
    :pswitch_10
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->ACTIVE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    goto/16 :goto_3

    .line 221
    :pswitch_11
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v1, :cond_12

    .line 222
    monitor-exit p0

    return-void

    .line 227
    :cond_12
    :try_start_6
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 229
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 230
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_1

    .line 234
    :cond_13
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->STARTING:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 235
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onDirectStartReceived(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 236
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    .line 239
    :goto_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->showScreenPinnedToastMessage(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 199
    :pswitch_12
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v1, :cond_14

    .line 200
    monitor-exit p0

    return-void

    .line 205
    :cond_14
    :try_start_7
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 207
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 208
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_2

    .line 212
    :cond_15
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->STARTING:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 213
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onDirectStartReceived(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 214
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    .line 217
    :goto_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->showScreenPinnedToastMessage(Landroid/content/Context;)V

    goto :goto_3

    .line 179
    :pswitch_13
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z

    move-result p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez p2, :cond_16

    .line 180
    monitor-exit p0

    return-void

    .line 185
    :cond_16
    :try_start_8
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 187
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 188
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_3

    .line 192
    :cond_17
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->PREPARE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 193
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onPrepareReceived(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 194
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_3

    .line 159
    :pswitch_14
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z

    move-result p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez p2, :cond_18

    .line 160
    monitor-exit p0

    return-void

    .line 165
    :cond_18
    :try_start_9
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 167
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 168
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_3

    .line 173
    :cond_19
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onNullReceived(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 174
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 482
    :goto_3
    :pswitch_15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 108
    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_a
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_15
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_15
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_15
        :pswitch_10
        :pswitch_15
    .end packed-switch
.end method
