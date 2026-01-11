.class Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;
.super Ljava/lang/Object;
.source "HandSignsDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FpsLimiter"
.end annotation


# instance fields
.field private final mExpectedInterval:I

.field private mFpsDetectStartTime:J

.field private mFrameStartTimeStamp:J

.field private mFrames:I


# direct methods
.method constructor <init>(I)V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;->mFrameStartTimeStamp:J

    const/4 v2, 0x0

    .line 46
    iput v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;->mFrames:I

    .line 47
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;->mFpsDetectStartTime:J

    if-lez p1, :cond_0

    const/16 v0, 0x3e8

    .line 55
    div-int/2addr v0, p1

    iput v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;->mExpectedInterval:I

    goto :goto_0

    .line 57
    :cond_0
    iput v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;->mExpectedInterval:I

    :goto_0
    return-void
.end method

.method private logFps(J)V
    .locals 4

    .line 89
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;->mFpsDetectStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 90
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;->mFpsDetectStartTime:J

    goto :goto_0

    :cond_0
    sub-long v0, p1, v0

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Detect FPS = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;->mFrames:I

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    iget-wide v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;->mFpsDetectStartTime:J

    sub-long v2, p1, v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 95
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;->mFpsDetectStartTime:J

    const/4 p1, 0x0

    .line 96
    iput p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;->mFrames:I

    .line 98
    :cond_1
    :goto_0
    iget p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;->mFrames:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;->mFrames:I

    return-void
.end method


# virtual methods
.method hit()J
    .locals 9

    .line 67
    iget v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;->mExpectedInterval:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 70
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 72
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 73
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;->logFps(J)V

    .line 76
    :cond_1
    iget-wide v5, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;->mFrameStartTimeStamp:J

    sub-long v5, v3, v5

    .line 79
    iget v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;->mExpectedInterval:I

    int-to-long v7, v0

    cmp-long v7, v5, v7

    if-gez v7, :cond_2

    int-to-long v0, v0

    sub-long v1, v0, v5

    :cond_2
    add-long/2addr v3, v1

    .line 83
    iput-wide v3, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;->mFrameStartTimeStamp:J

    return-wide v1
.end method
