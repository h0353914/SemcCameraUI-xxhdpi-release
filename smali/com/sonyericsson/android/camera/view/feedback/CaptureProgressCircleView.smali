.class public Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;
.super Landroid/view/View;
.source "CaptureProgressCircleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$ValueAnimationUpdater;
    }
.end annotation


# static fields
.field private static final ANIMATION_VALUE_END:F = 360.0f

.field private static final ANIMATION_VALUE_START:F = 0.0f

.field private static final ARC_START_ANGLE:F = -90.0f

.field private static final ARC_SWEEP_ANGLE_FULL:F = 360.0f

.field public static final TAG:Ljava/lang/String; = "SelfTimerCountDownCircleView"


# instance fields
.field private final COUNTDOWN_CIRCLE_RADIUS:I

.field private final COUNTDOWN_CIRCLE_STROKE_WIDTH:I

.field private mIsCanceled:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070261

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->COUNTDOWN_CIRCLE_RADIUS:I

    .line 39
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 41
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070260

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->COUNTDOWN_CIRCLE_STROKE_WIDTH:I

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 50
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->init()V

    return-void
.end method

.method private calculateArcOvalRect(Landroid/graphics/Canvas;)Landroid/graphics/RectF;
    .locals 4

    .line 92
    iget v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->COUNTDOWN_CIRCLE_RADIUS:I

    iget p0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->COUNTDOWN_CIRCLE_STROKE_WIDTH:I

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    int-to-float p0, v0

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 95
    new-instance v1, Landroid/graphics/RectF;

    sub-float v2, v0, p0

    sub-float v3, p1, p0

    add-float/2addr v0, p0

    add-float/2addr p1, p0

    invoke-direct {v1, v2, v3, v0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method private drawArc(Landroid/graphics/Canvas;)V
    .locals 7

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 78
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 80
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->calculateArcOvalRect(Landroid/graphics/Canvas;)Landroid/graphics/RectF;

    move-result-object v2

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x3d4c0000    # -90.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->mIsCanceled:Z

    if-nez v0, :cond_1

    .line 85
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->calculateArcOvalRect(Landroid/graphics/Canvas;)Landroid/graphics/RectF;

    move-result-object v2

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x43b40000    # 360.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private init()V
    .locals 3

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->mPaint:Landroid/graphics/Paint;

    .line 56
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->COUNTDOWN_CIRCLE_STROKE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f06009d

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private setAnimator(I)V
    .locals 3

    const/4 v0, 0x2

    .line 63
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 64
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 66
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$ValueAnimationUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$ValueAnimationUpdater;-><init>(Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$ValueAnimationUpdater-IA;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->mIsCanceled:Z

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->drawArc(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->setAnimator(I)V

    return-void
.end method

.method public startAnimation()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->mIsCanceled:Z

    :cond_0
    return-void
.end method
