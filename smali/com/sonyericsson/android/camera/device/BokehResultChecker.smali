.class Lcom/sonyericsson/android/camera/device/BokehResultChecker;
.super Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;
.source "BokehResultChecker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BokehResultChecker"


# instance fields
.field private mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResultCallback;

.field private mLatestResult:Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/BokehResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResultCallback;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BokehResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResultCallback;

    return-object p0
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResultCallback;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;-><init>(Landroid/os/Handler;)V

    .line 29
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/BokehResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResultCallback;

    .line 30
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BokehResultChecker;->mLatestResult:Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;

    return-void
.end method


# virtual methods
.method public check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
    .locals 3

    .line 35
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_LOGICAL_MULTI_CAMERA_BOKEH_STATUS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 40
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_LOGICAL_MULTI_CAMERA_BOKEH_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 45
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TRACE BOKEH: bokeh status:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " quality:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v1, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;-><init>(II)V

    .line 49
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;->getStatus()I

    move-result p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BokehResultChecker;->mLatestResult:Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;->getStatus()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 50
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;->getQuality()I

    move-result p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BokehResultChecker;->mLatestResult:Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;->getQuality()I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 51
    :cond_2
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/BokehResultChecker;->mLatestResult:Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;

    .line 52
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/BokehResultChecker;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonyericsson/android/camera/device/BokehResultChecker$1;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/BokehResultChecker$1;-><init>(Lcom/sonyericsson/android/camera/device/BokehResultChecker;Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method
