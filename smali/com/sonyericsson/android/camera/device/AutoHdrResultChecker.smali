.class Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;
.super Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;
.source "AutoHdrResultChecker.java"


# instance fields
.field private mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AutoHdrResultCallback;

.field private mIsLastHdrRequired:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$AutoHdrResultCallback;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AutoHdrResultCallback;

    return-object p0
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$AutoHdrResultCallback;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;-><init>(Landroid/os/Handler;)V

    .line 26
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AutoHdrResultCallback;

    return-void
.end method


# virtual methods
.method public check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
    .locals 2

    .line 31
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "AutoHdrResultChecker"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 35
    :cond_0
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_AUTOHDR:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    const-string p1, "Can not read com.sonymobile.statistics.autoHDR"

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

    .line 49
    :cond_1
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;->mIsLastHdrRequired:Z

    if-eq v0, p1, :cond_2

    .line 50
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;->mIsLastHdrRequired:Z

    .line 51
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker$1;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker$1;-><init>(Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;Z)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
