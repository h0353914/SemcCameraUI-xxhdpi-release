.class public Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraButtonIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;,
        Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;,
        Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$CameraDeviceReleaseTimerTask;
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
.method static bridge synthetic -$$Nest$sfgetsReleaseTimer()Ljava/util/Timer;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsReleaseTimerLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputsReleaseTimer(Ljava/util/Timer;)V
    .locals 0

    sput-object p0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    return-void
.end method

.method static bridge synthetic -$$Nest$smchangeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V
    .locals 0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    return-void
.end method

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

.method private static changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V
    .locals 2

    .line 85
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "changeTo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sCurrentState:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 86
    :cond_0
    sput-object p0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sCurrentState:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    return-void
.end method

.method private isInLockTaskMode(Landroid/content/Context;)Z
    .locals 0

    .line 548
    const-string p0, "activity"

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

    .line 683
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    .line 686
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    return-void
.end method

.method private onDirectStartReceived(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/camera/setting/LastSettings;)V
    .locals 3

    .line 651
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getFastCapture()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object p0

    .line 652
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p3, :cond_0

    .line 654
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p3, p1, v1, v2, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    goto :goto_0

    .line 659
    :cond_0
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_RECORDING:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p0, p3, :cond_1

    .line 661
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p3, p1, v1, v2, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 668
    :cond_1
    :goto_0
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 669
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p0, v0, :cond_2

    .line 670
    const-string p0, "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH_AND_CAPTURE"

    invoke-virtual {p3, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 672
    :cond_2
    const-string p0, "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH"

    invoke-virtual {p3, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    :goto_1
    const-class p0, Lcom/sonyericsson/android/camera/CameraGestureTriggerActivity;

    invoke-virtual {p3, p1, p0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 675
    const-string p0, "android.intent.category.LAUNCHER"

    invoke-virtual {p3, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 676
    invoke-virtual {p3, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 677
    const-string p0, "android.intent.extra.SUBJECT"

    invoke-virtual {p3, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    sget-object p0, Lcom/sonyericsson/android/camera/LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "com.sonyericsson.android.camera.extra.launchTrigger"

    invoke-virtual {p3, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
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

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p2, :cond_0

    .line 557
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p2, p1, v1, v2, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    goto :goto_0

    .line 562
    :cond_0
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_RECORDING:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p0, p2, :cond_1

    .line 564
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p2, p1, v1, v2, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 572
    :cond_1
    :goto_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 573
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p0, v0, :cond_2

    .line 574
    const-string p0, "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH_AND_CAPTURE"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 576
    :cond_2
    const-string p0, "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    :goto_1
    const-class p0, Lcom/sonyericsson/android/camera/CameraGestureTriggerActivity;

    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 579
    const-string p0, "android.intent.category.LAUNCHER"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 580
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 581
    const-string p0, "android.intent.extra.SUBJECT"

    const-string/jumbo v0, "start"

    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    sget-object p0, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.sonyericsson.android.camera.extra.launchTrigger"

    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onPrepareReceived(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/LastSettings;)V
    .locals 3

    .line 588
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.sonymobile.cameracommon.intent.ACTION_FORCE_EXIT_REQUEST"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 589
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 590
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 592
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getFastCapture()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object p0

    .line 593
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p2, :cond_0

    .line 595
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p2, p1, v1, v2, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    goto :goto_0

    .line 600
    :cond_0
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_RECORDING:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p0, p2, :cond_1

    .line 601
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p2, p1, v1, v2, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 612
    :cond_1
    :goto_0
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-eq p0, p2, :cond_2

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_RECORDING:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p0, p2, :cond_3

    .line 614
    :cond_2
    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startCameraDeviceReleaseTimer(Landroid/content/Context;)V

    :cond_3
    return-void
.end method

.method private onStartReceived(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/camera/setting/LastSettings;)V
    .locals 3

    .line 619
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getFastCapture()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object p0

    .line 620
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p3, :cond_0

    .line 622
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p3, p1, v1, v2, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    goto :goto_0

    .line 627
    :cond_0
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_RECORDING:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p0, p3, :cond_1

    .line 629
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p3, p1, v1, v2, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 636
    :cond_1
    :goto_0
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 637
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p0, v0, :cond_2

    .line 638
    const-string p0, "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH_AND_CAPTURE"

    invoke-virtual {p3, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 640
    :cond_2
    const-string p0, "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH"

    invoke-virtual {p3, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    :goto_1
    const-class p0, Lcom/sonyericsson/android/camera/CameraGestureTriggerActivity;

    invoke-virtual {p3, p1, p0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 643
    const-string p0, "android.intent.category.LAUNCHER"

    invoke-virtual {p3, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 644
    invoke-virtual {p3, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 645
    const-string p0, "android.intent.extra.SUBJECT"

    invoke-virtual {p3, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    sget-object p0, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "com.sonyericsson.android.camera.extra.launchTrigger"

    invoke-virtual {p3, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static final preload()V
    .locals 0

    return-void
.end method

.method public static declared-synchronized releaseCameraDeviceReleaseTimer()V
    .locals 4

    const-class v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;

    monitor-enter v0

    .line 710
    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Cancel camera release due to timeout."

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 715
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 716
    :try_start_1
    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    if-eqz v2, :cond_1

    .line 717
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 718
    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    const/4 v2, 0x0

    .line 719
    sput-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    .line 721
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 722
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    .line 721
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

    const p0, 0x7f0f0396

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

    .line 690
    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-array v1, v2, [Ljava/lang/String;

    const-string v3, "Schedule camera release due to timeout."

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 696
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 697
    :try_start_1
    sget-object v3, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    if-nez v3, :cond_1

    .line 699
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3, v2}, Ljava/util/Timer;-><init>(Z)V

    sput-object v3, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    .line 702
    new-instance v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$CameraDeviceReleaseTimerTask;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$CameraDeviceReleaseTimerTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$CameraDeviceReleaseTimerTask-IA;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 706
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 707
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 706
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

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 514
    :cond_0
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
    :cond_1
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
    :cond_2
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
.end method

.method private wakeUpAndVibrateOnLaunch(Landroid/content/Context;)V
    .locals 2

    .line 485
    const-string p0, "power"

    .line 486
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const v0, 0x1000001a

    .line 487
    const-string v1, "CameraButtonIntentReceiver"

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

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
    .locals 9

    const-string v0, "Receive intent for camera. kind:"

    monitor-enter p0

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isOrderedBroadcast()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->abortBroadcast()V

    .line 111
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    new-array v1, v3, [Ljava/lang/String;

    const-string v4, "Intent has been aborted."

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 115
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    const-class v4, Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 118
    invoke-static {p1, v1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    new-array p1, v3, [Ljava/lang/String;

    const-string p2, "Camera is disabled, so the request to start camera is refused."

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 125
    :cond_1
    :try_start_1
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 126
    const-string v1, "prepare"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->FAST_CAMERA_BUTTON_INTENT_RECEIVED:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 128
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->PREPARE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_0

    .line 129
    :cond_2
    const-string/jumbo v1, "start"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->START:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_0

    .line 131
    :cond_3
    const-string/jumbo v1, "start-secure"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 132
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->START_SECURE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_0

    .line 133
    :cond_4
    const-string v1, "cancel"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 134
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->CANCEL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_0

    .line 135
    :cond_5
    const-string v1, "activity-resumed"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 136
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ACTIVITY_RESUMED:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_0

    .line 137
    :cond_6
    const-string v1, "activity-paused"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 138
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ACTIVITY_PAUSED:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_0

    .line 140
    :cond_7
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    .line 144
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/CameraApplication;

    .line 145
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraApplication;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/setting/SettingsFactory;->create(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v1

    .line 146
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v1

    .line 148
    new-array v4, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " state:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sCurrentState:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " lastMode:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getFastCapture()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " inLockMode:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 152
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 148
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;->$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$ReceiverState:[I

    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sCurrentState:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x2

    const/4 v4, 0x6

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eq v0, v3, :cond_21

    if-eq v0, v2, :cond_1a

    const/4 v7, 0x7

    if-eq v0, v6, :cond_b

    if-eq v0, v5, :cond_8

    goto/16 :goto_3

    .line 440
    :cond_8
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;->$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$IntentKind:[I

    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v4, :cond_a

    if-eq p1, v7, :cond_9

    goto/16 :goto_3

    .line 468
    :cond_9
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    goto/16 :goto_3

    .line 463
    :cond_a
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    goto/16 :goto_3

    .line 328
    :cond_b
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;->$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$IntentKind:[I

    sget-object v8, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ordinal()I

    move-result v8

    aget v0, v0, v8

    if-eq v0, v3, :cond_17

    if-eq v0, v2, :cond_14

    if-eq v0, v6, :cond_11

    if-eq v0, v5, :cond_e

    if-eq v0, v4, :cond_d

    if-eq v0, v7, :cond_c

    goto/16 :goto_3

    .line 430
    :cond_c
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    goto/16 :goto_3

    .line 425
    :cond_d
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->ACTIVE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    goto/16 :goto_3

    .line 400
    :cond_e
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    .line 402
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_f

    .line 403
    monitor-exit p0

    return-void

    .line 408
    :cond_f
    :try_start_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 410
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 411
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_3

    .line 415
    :cond_10
    invoke-direct {p0, p1, p2, v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onDirectStartReceived(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 416
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_3

    .line 378
    :cond_11
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    .line 380
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_12

    .line 381
    monitor-exit p0

    return-void

    .line 386
    :cond_12
    :try_start_3
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 388
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 389
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_3

    .line 393
    :cond_13
    invoke-direct {p0, p1, p2, v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onDirectStartReceived(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 394
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_3

    .line 355
    :cond_14
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    .line 357
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p2, :cond_15

    .line 358
    monitor-exit p0

    return-void

    .line 363
    :cond_15
    :try_start_4
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 365
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 366
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_3

    .line 370
    :cond_16
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->PREPARE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 371
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onPrepareReceived(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 372
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_3

    .line 331
    :cond_17
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    .line 333
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z

    move-result p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez p2, :cond_18

    .line 334
    monitor-exit p0

    return-void

    .line 339
    :cond_18
    :try_start_5
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 341
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 342
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_3

    .line 347
    :cond_19
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 348
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onNullReceived(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 349
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_3

    .line 262
    :cond_1a
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;->$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$IntentKind:[I

    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v6, :cond_1f

    if-eq v0, v5, :cond_1d

    const/4 p2, 0x5

    if-eq v0, p2, :cond_1c

    if-eq v0, v4, :cond_1b

    goto/16 :goto_3

    .line 312
    :cond_1b
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    .line 313
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->ACTIVE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 314
    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startCameraDeviceReleaseTimer(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 306
    :cond_1c
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 307
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onCancelReceived(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 290
    :cond_1d
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 292
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 293
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_3

    .line 297
    :cond_1e
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->STARTING:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 298
    invoke-direct {p0, p1, p2, v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onStartReceived(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 299
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->wakeUpAndVibrateOnLaunch(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 274
    :cond_1f
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 276
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 277
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_3

    .line 281
    :cond_20
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->STARTING:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 282
    invoke-direct {p0, p1, p2, v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onStartReceived(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 283
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->wakeUpAndVibrateOnLaunch(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 157
    :cond_21
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;->$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$IntentKind:[I

    sget-object v7, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ordinal()I

    move-result v7

    aget v0, v0, v7

    if-eq v0, v3, :cond_2c

    if-eq v0, v2, :cond_29

    if-eq v0, v6, :cond_26

    if-eq v0, v5, :cond_23

    if-eq v0, v4, :cond_22

    goto/16 :goto_3

    .line 248
    :cond_22
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->ACTIVE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    goto/16 :goto_3

    .line 221
    :cond_23
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_24

    .line 222
    monitor-exit p0

    return-void

    .line 227
    :cond_24
    :try_start_6
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 229
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 230
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_1

    .line 234
    :cond_25
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->STARTING:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 235
    invoke-direct {p0, p1, p2, v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onDirectStartReceived(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 236
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    .line 239
    :goto_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->showScreenPinnedToastMessage(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 199
    :cond_26
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v0, :cond_27

    .line 200
    monitor-exit p0

    return-void

    .line 205
    :cond_27
    :try_start_7
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 207
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 208
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_2

    .line 212
    :cond_28
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->STARTING:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 213
    invoke-direct {p0, p1, p2, v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onDirectStartReceived(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 214
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    .line 217
    :goto_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->showScreenPinnedToastMessage(Landroid/content/Context;)V

    goto :goto_3

    .line 179
    :cond_29
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z

    move-result p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez p2, :cond_2a

    .line 180
    monitor-exit p0

    return-void

    .line 185
    :cond_2a
    :try_start_8
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2b

    .line 187
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 188
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_3

    .line 192
    :cond_2b
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->PREPARE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 193
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onPrepareReceived(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 194
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_3

    .line 159
    :cond_2c
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z

    move-result p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez p2, :cond_2d

    .line 160
    monitor-exit p0

    return-void

    .line 165
    :cond_2d
    :try_start_9
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 167
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 168
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_3

    .line 173
    :cond_2e
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onNullReceived(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 174
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 482
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
