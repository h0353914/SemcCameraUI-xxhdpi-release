.class public Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;
.super Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;
.source "FinishBurstResultChecker.java"


# instance fields
.field private mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$FinishBurstResultCallback;

.field private mIsFinishBurstDone:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$FinishBurstResultCallback;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$FinishBurstResultCallback;

    return-object p0
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$FinishBurstResultCallback;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;-><init>(Landroid/os/Handler;)V

    .line 25
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$FinishBurstResultCallback;

    return-void
.end method


# virtual methods
.method public check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
    .locals 2

    .line 30
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 34
    :cond_0
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_BURST_SHOT:Landroid/hardware/camera2/CaptureResult$Key;

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

    .line 39
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resultBurstState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    .line 50
    :cond_1
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;->mIsFinishBurstDone:Z

    if-eq v0, p1, :cond_2

    .line 51
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;->mIsFinishBurstDone:Z

    if-eqz v0, :cond_2

    .line 53
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker$1;-><init>(Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
