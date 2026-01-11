.class Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;
.super Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;
.source "ObjectTrackingResultChecker.java"


# static fields
.field public static final LOW_PASS_FILTER_STRENGTH:I = 0x0

.field public static final MINIMUM_INTERVAL_MILLIS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ObjectTrackingResultChecker"


# instance fields
.field private final mObjectTrackingCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;

.field private mPreviousObjectSelectArea:Landroid/graphics/Rect;

.field private mPreviousObjectSelectTime:J

.field private mStart:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmObjectTrackingCallback(Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->mObjectTrackingCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;

    return-object p0
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;)V
    .locals 2

    .line 40
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;-><init>(Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->mPreviousObjectSelectArea:Landroid/graphics/Rect;

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->mPreviousObjectSelectTime:J

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->mStart:Z

    .line 41
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->mObjectTrackingCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;

    return-void
.end method

.method private getLowPassFilteredArea(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->mPreviousObjectSelectArea:Landroid/graphics/Rect;

    const-string v1, ", bottom="

    const-string v2, ", right="

    const-string v3, ", top="

    if-nez v0, :cond_1

    .line 111
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->mPreviousObjectSelectArea:Landroid/graphics/Rect;

    .line 112
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "starting: left="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->mPreviousObjectSelectArea:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->mPreviousObjectSelectArea:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->mPreviousObjectSelectArea:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->mPreviousObjectSelectArea:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 118
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->mPreviousObjectSelectArea:Landroid/graphics/Rect;

    return-object p0

    :cond_1
    if-nez p2, :cond_4

    .line 123
    iget p2, p1, Landroid/graphics/Rect;->left:I

    if-nez p2, :cond_2

    iget p2, p1, Landroid/graphics/Rect;->top:I

    if-nez p2, :cond_2

    iget p2, p1, Landroid/graphics/Rect;->right:I

    if-nez p2, :cond_2

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    if-nez p2, :cond_2

    goto :goto_0

    .line 127
    :cond_2
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_3

    .line 128
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "before filtering: left="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 133
    :cond_3
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->mPreviousObjectSelectArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, p2, v0}, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->getLowPassFilteredValue(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 135
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->mPreviousObjectSelectArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, p2, v0}, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->getLowPassFilteredValue(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 137
    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->mPreviousObjectSelectArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p2, v0}, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->getLowPassFilteredValue(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 139
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->mPreviousObjectSelectArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p2, v0}, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->getLowPassFilteredValue(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 143
    :goto_0
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_5

    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "after filtering: left="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object p1, v0

    .line 152
    :cond_5
    :goto_1
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->mPreviousObjectSelectArea:Landroid/graphics/Rect;

    return-object p1
.end method

.method private getLowPassFilteredValue(II)I
    .locals 0

    int-to-float p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p0, p1

    int-to-float p1, p2

    const/4 p2, 0x0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
    .locals 8

    .line 47
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->mStart:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 48
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_OBJECT_SELECT_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 51
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->mStart:Z

    .line 52
    const-string p0, "Object select area may keep last selected position, so skip the first one."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 57
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 60
    iget-wide v4, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->mPreviousObjectSelectTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x64

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    return-void

    .line 63
    :cond_2
    iput-wide v2, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->mPreviousObjectSelectTime:J

    .line 65
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_OBJECT_SELECT_AREA:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_5

    .line 70
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Object select area: left="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v6, p1, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", top="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v6, p1, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", right="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v6, p1, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", bottom="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v6, p1, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", lost="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v6, p1, v2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 78
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    aget v6, p1, v5

    aget v7, p1, v1

    aget v4, p1, v4

    aget v3, p1, v3

    invoke-direct {v0, v6, v7, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 83
    aget p1, p1, v2

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v5

    goto :goto_0

    .line 85
    :cond_5
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_6

    .line 86
    const-string p1, "Object select area: none."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 89
    :cond_6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 93
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->getLowPassFilteredArea(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 95
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;-><init>(Landroid/graphics/Rect;Z)V

    .line 97
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker$1;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker$1;-><init>(Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method
