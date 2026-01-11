.class public Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;
.super Ljava/lang/Object;
.source "TouchScaleAndRotateDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;
    }
.end annotation


# static fields
.field private static final ROTATE_DETECTION_THRESHOLD_DEGREE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "TouchScaleAndRotateDetector"


# instance fields
.field private mAxisRotateDeg:F

.field private mCurrentAxisVec:Landroid/graphics/PointF;

.field private mCurrentTouchPos0:Landroid/graphics/PointF;

.field private mCurrentTouchPos1:Landroid/graphics/PointF;

.field private mListener:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;

.field private mOriginalAxisLen:F

.field private mPreviousAxisVec:Landroid/graphics/PointF;

.field private mPreviousTouchPos0:Landroid/graphics/PointF;

.field private mPreviousTouchPos1:Landroid/graphics/PointF;

.field private mTouchVec0:Landroid/graphics/PointF;

.field private mTouchVec1:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos0:Landroid/graphics/PointF;

    .line 26
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos1:Landroid/graphics/PointF;

    .line 31
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec0:Landroid/graphics/PointF;

    .line 32
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec1:Landroid/graphics/PointF;

    .line 36
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    .line 39
    iput v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mAxisRotateDeg:F

    .line 42
    iput v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mOriginalAxisLen:F

    return-void
.end method


# virtual methods
.method release()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mListener:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;

    return-void
.end method

.method public setScaleAndRotateDetectorListener(Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mListener:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;

    return-void
.end method

.method public startScaleAndRotateDetection(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3

    .line 66
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos0:Landroid/graphics/PointF;

    .line 67
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos1:Landroid/graphics/PointF;

    .line 68
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p1

    invoke-direct {v0, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousAxisVec:Landroid/graphics/PointF;

    .line 69
    invoke-virtual {v0}, Landroid/graphics/PointF;->length()F

    move-result p1

    iput p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mOriginalAxisLen:F

    return-void
.end method

.method public stopScaleAndRotateDetection()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos0:Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos1:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos0:Landroid/graphics/PointF;

    .line 140
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos1:Landroid/graphics/PointF;

    .line 142
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec0:Landroid/graphics/PointF;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 143
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec1:Landroid/graphics/PointF;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 145
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousAxisVec:Landroid/graphics/PointF;

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 148
    iput v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mAxisRotateDeg:F

    .line 150
    iput v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mOriginalAxisLen:F

    return-void
.end method

.method public updateCurrentPosition(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 5

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos0:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 75
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos1:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 78
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec0:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos0:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos0:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos0:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos0:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 81
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec1:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos1:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos1:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos1:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 86
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos1:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos0:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos1:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos0:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 91
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec0:Landroid/graphics/PointF;

    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;->isSquare(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec1:Landroid/graphics/PointF;

    .line 92
    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;->isSquare(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousAxisVec:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;->getRadianFrom2Vector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    .line 99
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousAxisVec:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr p2, v0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousAxisVec:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v1

    sub-float/2addr p2, v0

    const/4 v0, 0x0

    cmpg-float p2, v0, p2

    const/high16 v0, 0x3f800000    # 1.0f

    if-gtz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/high16 p2, -0x40800000    # -1.0f

    :goto_0
    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    float-to-double v1, p1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v3

    float-to-double p1, p2

    mul-double/2addr v1, p1

    double-to-float p1, v1

    .line 109
    iget p2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mAxisRotateDeg:F

    add-float/2addr p1, p2

    .line 110
    iput p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mAxisRotateDeg:F

    sub-float/2addr p1, p2

    .line 111
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_1

    .line 113
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mListener:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;

    iget v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mAxisRotateDeg:F

    sub-float p2, v0, p2

    invoke-interface {p1, v0, p2}, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;->onDoubleTouchRotateDetected(FF)V

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec0:Landroid/graphics/PointF;

    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;->isParallel(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec1:Landroid/graphics/PointF;

    .line 120
    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;->isParallel(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 122
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/graphics/PointF;->length()F

    move-result p1

    .line 123
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousAxisVec:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    move-result p2

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mListener:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;

    iget v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mOriginalAxisLen:F

    invoke-interface {v0, p1, p2, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;->onDoubleTouchScaleDetected(FFF)V

    .line 130
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousAxisVec:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 131
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos0:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos0:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 132
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos1:Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos1:Landroid/graphics/PointF;

    invoke-virtual {p1, p0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method
