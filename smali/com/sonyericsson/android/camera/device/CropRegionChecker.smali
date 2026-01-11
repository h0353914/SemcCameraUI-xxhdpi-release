.class Lcom/sonyericsson/android/camera/device/CropRegionChecker;
.super Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;
.source "CropRegionChecker.java"


# static fields
.field private static final CROP_REGION_PERCENT_DELTA:F = 0.01f

.field private static final IGNORE_CAPTURE_RESULT_THRESHOLD:I = 0x5

.field private static final TRACE:Z = false


# instance fields
.field private mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CropRegionCallback;

.field private mIsNeedNotifyCropRegionReady:Z

.field private mIsRequestApplied:Z

.field private mLastCropRegion:Landroid/graphics/Rect;

.field private mReceivedResultCount:I

.field private mRequest:Landroid/hardware/camera2/CaptureRequest;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/CropRegionChecker;)Lcom/sonyericsson/android/camera/device/CameraController$CropRegionCallback;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CropRegionCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRequestApplied(Lcom/sonyericsson/android/camera/device/CropRegionChecker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mIsRequestApplied:Z

    return p0
.end method

.method constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraController$CropRegionCallback;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;-><init>(Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mIsRequestApplied:Z

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p1, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mLastCropRegion:Landroid/graphics/Rect;

    .line 47
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CropRegionCallback;

    .line 48
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mReceivedResultCount:I

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mIsNeedNotifyCropRegionReady:Z

    return-void
.end method

.method private expectSimilarValues(IIF)Z
    .locals 3

    int-to-float p0, p1

    int-to-float p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    add-float v0, p3, p2

    mul-float/2addr v0, p1

    cmpg-float v0, p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sub-float/2addr p2, p3

    mul-float/2addr p1, p2

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method private expectedRectIsSimilar(Landroid/graphics/Rect;Landroid/graphics/Rect;F)Z
    .locals 3

    .line 123
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->expectSimilarValues(IIF)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 125
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, v0, v2, p3}, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->expectSimilarValues(IIF)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 127
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-direct {p0, v0, v2, p3}, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->expectSimilarValues(IIF)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 129
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    invoke-direct {p0, p2, p1, p3}, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->expectSimilarValues(IIF)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private isCropRegionChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1

    const v0, 0x3c23d70a    # 0.01f

    .line 119
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->expectedRectIsSimilar(Landroid/graphics/Rect;Landroid/graphics/Rect;F)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
    .locals 6

    .line 54
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatest()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-nez p1, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    if-nez v0, :cond_1

    return-void

    .line 61
    :cond_1
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_2

    return-void

    .line 66
    :cond_2
    iget v1, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mReceivedResultCount:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    add-int/2addr v1, v3

    .line 67
    iput v1, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mReceivedResultCount:I

    .line 70
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mLastCropRegion:Landroid/graphics/Rect;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->isCropRegionChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 72
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mLastCropRegion:Landroid/graphics/Rect;

    .line 76
    :cond_4
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mIsNeedNotifyCropRegionReady:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mReceivedResultCount:I

    if-le v4, v3, :cond_6

    if-nez v1, :cond_5

    if-ne v4, v2, :cond_6

    .line 82
    :cond_5
    iput-boolean v5, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mIsNeedNotifyCropRegionReady:Z

    move v5, v3

    .line 90
    :cond_6
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mIsRequestApplied:Z

    if-nez v2, :cond_7

    .line 92
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->isCropRegionChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mIsRequestApplied:Z

    .line 94
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/android/camera/device/CropRegionChecker$1;

    invoke-direct {v2, p0, v5, v1, p1}, Lcom/sonyericsson/android/camera/device/CropRegionChecker$1;-><init>(Lcom/sonyericsson/android/camera/device/CropRegionChecker;ZZLandroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setCaptureRequest(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    return-void
.end method
