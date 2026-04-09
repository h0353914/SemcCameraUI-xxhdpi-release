.class public Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;
.super Landroid/view/View;
.source "SideTouchCountDownCircleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView$CircleDecelerateInterpolator;,
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView$AnimationEventHandler;,
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView$ValueAnimationUpdater;
    }
.end annotation


# static fields
.field private static final ANIMATION_TIME_RATIO:F = 0.6f

.field private static final ANIMATION_VALUE:F = 360.0f

.field private static final COUNTDOWN_CIRCLE_STROKE_WIDTH:I = 0x6

.field public static final TAG:Ljava/lang/String; = "SideTouchCountDownCircleView"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private drawArc(Landroid/graphics/Canvas;)V
    .locals 8

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 83
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 84
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    sub-float v1, v0, v1

    .line 89
    new-instance v3, Landroid/graphics/RectF;

    sub-float v2, v0, v1

    add-float/2addr v0, v1

    invoke-direct {v3, v2, v2, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v6, 0x0

    .line 95
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private getRotateDuration(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)I
    .locals 2

    .line 71
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;->getDurationInMillisecond()I

    move-result p0

    const/16 v0, 0x5dc

    const/16 v1, 0x3e8

    if-ge p0, v1, :cond_0

    const/16 v0, 0x1f4

    goto :goto_0

    .line 73
    :cond_0
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;->getDurationInMillisecond()I

    move-result p0

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method private init()V
    .locals 3

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->mPaint:Landroid/graphics/Paint;

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f06007f

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private setAnimator(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V
    .locals 7

    .line 52
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->init()V

    const/4 v0, 0x2

    .line 53
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView$CircleDecelerateInterpolator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView$CircleDecelerateInterpolator;-><init>(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->getRotateDuration(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 58
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;->getDurationInMillisecond()I

    move-result p1

    int-to-double v3, p1

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    double-to-int p1, v3

    .line 57
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 59
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView$ValueAnimationUpdater;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView$ValueAnimationUpdater;-><init>(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView$1;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView$AnimationEventHandler;

    invoke-direct {p1, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView$AnimationEventHandler;-><init>(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView$1;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method


# virtual methods
.method public cancelSelfTimerAnimation()V
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->drawArc(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->setAnimator(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V

    return-void
.end method

.method public startAnimation()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
