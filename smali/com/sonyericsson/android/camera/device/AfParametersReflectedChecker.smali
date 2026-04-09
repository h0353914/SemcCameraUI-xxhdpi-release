.class Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;
.super Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;
.source "AfParametersReflectedChecker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AfParametersReflectedChecker"

.field private static final TRACE:Z = false


# instance fields
.field private mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;

.field private mReqHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;-><init>(Landroid/os/Handler;)V

    .line 43
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;

    .line 44
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mReqHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;

    return-object p0
.end method

.method private static trace(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 26
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
    .locals 1

    .line 50
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatest()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->checkSync(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker$1;-><init>(Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public checkSync(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 5

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mReqHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AF_REGION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mReqHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 77
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mReqHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 79
    sget-object v3, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_AF_REGION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    if-ne v0, v3, :cond_5

    const/4 v0, 0x1

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-nez v3, :cond_2

    .line 93
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mReqHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 94
    aget-object p0, p0, v4

    invoke-virtual {p0}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object p0

    .line 95
    sget-object v3, Landroid/hardware/camera2/TotalCaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 96
    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 97
    invoke-virtual {p0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return v4

    .line 108
    :cond_2
    :goto_1
    sget-object p0, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v1, p0, :cond_4

    .line 117
    sget-object p0, Landroid/hardware/camera2/TotalCaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v2, p0, :cond_3

    return v0

    :cond_3
    return v4

    :cond_4
    return v4

    :cond_5
    return v4
.end method
