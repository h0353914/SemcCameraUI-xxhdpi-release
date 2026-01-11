.class Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$CameraDeviceReleaseTimerTask;
.super Ljava/util/TimerTask;
.source "CameraButtonIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraDeviceReleaseTimerTask"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 727
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 728
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$CameraDeviceReleaseTimerTask;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$CameraDeviceReleaseTimerTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$CameraDeviceReleaseTimerTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 733
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Camera is released due to timeout."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 736
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->-$$Nest$sfgetsReleaseTimerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 737
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->-$$Nest$sfgetsReleaseTimer()Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 738
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->-$$Nest$sfgetsReleaseTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 739
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->-$$Nest$sfgetsReleaseTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    const/4 v1, 0x0

    .line 740
    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->-$$Nest$sfputsReleaseTimer(Ljava/util/Timer;)V

    .line 742
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->-$$Nest$smchangeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 747
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$CameraDeviceReleaseTimerTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    return-void

    :catchall_0
    move-exception p0

    .line 742
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
