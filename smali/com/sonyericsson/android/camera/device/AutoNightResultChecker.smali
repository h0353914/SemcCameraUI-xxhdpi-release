.class public Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;
.super Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;
.source "AutoNightResultChecker.java"


# instance fields
.field private mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AutoNightResultCallback;

.field private mIsLastAutoNightDetected:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$AutoNightResultCallback;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AutoNightResultCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsLastAutoNightDetected(Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;->mIsLastAutoNightDetected:Z

    return p0
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$AutoNightResultCallback;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;-><init>(Landroid/os/Handler;)V

    .line 25
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AutoNightResultCallback;

    return-void
.end method


# virtual methods
.method public check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
    .locals 2

    .line 30
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "AutoNightResultChecker"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 34
    :cond_0
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_AUTONIGHT:Landroid/hardware/camera2/CaptureResult$Key;

    .line 35
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    const-string p1, "Can not read com.sonymobile.statistics.autoNight"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move v0, v1

    .line 50
    :cond_1
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;->mIsLastAutoNightDetected:Z

    if-eq v0, p1, :cond_2

    .line 51
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;->mIsLastAutoNightDetected:Z

    .line 52
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonyericsson/android/camera/device/AutoNightResultChecker$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/AutoNightResultChecker$1;-><init>(Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
