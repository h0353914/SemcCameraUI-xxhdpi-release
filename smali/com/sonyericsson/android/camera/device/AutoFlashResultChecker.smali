.class Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;
.super Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;
.source "AutoFlashResultChecker.java"


# instance fields
.field private mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;

.field private mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

.field private mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field private mIsLastFlashRequired:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;

    return-object p0
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;-><init>(Landroid/os/Handler;)V

    .line 33
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;

    .line 34
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 35
    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    return-void
.end method


# virtual methods
.method public check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
    .locals 4

    .line 41
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_IS_FLASH_SNAPSHOT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 43
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->isFront(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_2

    goto :goto_0

    .line 47
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 49
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :goto_0
    move v2, v3

    goto :goto_1

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFlashWillFire(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    move-result v2

    .line 59
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mIsLastFlashRequired:Z

    if-eq v2, p1, :cond_3

    .line 60
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mIsLastFlashRequired:Z

    .line 61
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker$1;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker$1;-><init>(Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public resetLastFlashRequired()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mIsLastFlashRequired:Z

    return-void
.end method
