.class Lcom/sonyericsson/android/camera/device/FusionResultChecker;
.super Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;
.source "FusionResultChecker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FusionResultChecker"


# instance fields
.field private mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResultCallback;

.field private mLatestResult:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/FusionResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResultCallback;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/FusionResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResultCallback;

    return-object p0
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResultCallback;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;-><init>(Landroid/os/Handler;)V

    .line 34
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/FusionResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResultCallback;

    .line 35
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/FusionResultChecker;->mLatestResult:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    return-void
.end method

.method private isInvalidFusionResult(III)Z
    .locals 2

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move p3, p0

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    goto :goto_2

    :cond_2
    :goto_1
    move p1, p0

    :goto_2
    if-nez p2, :cond_3

    move p2, p0

    goto :goto_3

    :cond_3
    move p2, v0

    :goto_3
    if-eqz p3, :cond_4

    if-nez p1, :cond_5

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    move p0, v0

    :cond_5
    :goto_4
    return p0
.end method


# virtual methods
.method public check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
    .locals 5

    .line 40
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_PREVIEW_OUTPUT_STREAM_SOURCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v0, :cond_0

    move-object v0, v1

    .line 47
    :cond_0
    sget-object v2, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_FUSION_CONDITION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    move-object v2, v1

    .line 53
    :cond_1
    sget-object v3, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_FUSION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 59
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, p1, v3, v4}, Lcom/sonyericsson/android/camera/device/FusionResultChecker;->isInvalidFusionResult(III)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 60
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "received mismatch fusion result. fusionMode="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", source="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", fusionCondition="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :cond_3
    return-void

    .line 66
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_7

    if-eq p1, v1, :cond_6

    if-eq p1, v0, :cond_5

    .line 80
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;->MAIN:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    goto :goto_1

    .line 77
    :cond_5
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;->FUSION_SUB_1:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    goto :goto_1

    .line 73
    :cond_6
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;->FUSION_MAIN:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    goto :goto_1

    .line 69
    :cond_7
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;->SUB_1:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    .line 84
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_a

    if-eq v2, v1, :cond_9

    if-eq v2, v0, :cond_8

    .line 95
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;->NORMAL:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    goto :goto_2

    .line 92
    :cond_8
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;->LOW_CONTRAST:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    goto :goto_2

    .line 89
    :cond_9
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;->LENS_COVERED:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    goto :goto_2

    .line 86
    :cond_a
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;->CLOSE_TO_SUBJECT:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    .line 98
    :goto_2
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    invoke-direct {v1, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;)V

    .line 100
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;->getFusionStatus()Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/FusionResultChecker;->mLatestResult:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;->getFusionStatus()Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    move-result-object v0

    if-ne p1, v0, :cond_b

    .line 101
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;->getFusionCondition()Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/FusionResultChecker;->mLatestResult:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;->getFusionCondition()Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    move-result-object v0

    if-eq p1, v0, :cond_c

    .line 102
    :cond_b
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/FusionResultChecker;->mLatestResult:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    .line 103
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/FusionResultChecker;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonyericsson/android/camera/device/FusionResultChecker$1;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/FusionResultChecker$1;-><init>(Lcom/sonyericsson/android/camera/device/FusionResultChecker;Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public getLatestFusionResult()Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/FusionResultChecker;->mLatestResult:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    return-object p0
.end method
