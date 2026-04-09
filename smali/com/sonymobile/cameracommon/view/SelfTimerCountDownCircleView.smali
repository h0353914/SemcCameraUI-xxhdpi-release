.class public Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;
.super Landroid/view/View;
.source "SelfTimerCountDownCircleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$CircleDecelerateInterpolator;,
        Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$AnimationEventHandler;,
        Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$ValueAnimationUpdater;
    }
.end annotation


# static fields
.field private static final ANIMATION_TIME_RATIO:F = 0.6f

.field private static final ANIMATION_VALUE:F = 360.0f

.field public static final TAG:Ljava/lang/String; = "SelfTimerCountDownCircleView"


# instance fields
.field private final COUNTDOWN_CIRCLE_RADIUS:I

.field private final COUNTDOWN_CIRCLE_STROKE_WIDTH:I

.field private mPaint:Landroid/graphics/Paint;

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070213

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->COUNTDOWN_CIRCLE_RADIUS:I

    .line 39
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 40
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070212

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->COUNTDOWN_CIRCLE_STROKE_WIDTH:I

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 52
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070213

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->COUNTDOWN_CIRCLE_RADIUS:I

    .line 39
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 40
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070212

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->COUNTDOWN_CIRCLE_STROKE_WIDTH:I

    const/4 p2, 0x0

    .line 43
    iput-object p2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 47
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070213

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->COUNTDOWN_CIRCLE_RADIUS:I

    .line 39
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 40
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070212

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->COUNTDOWN_CIRCLE_STROKE_WIDTH:I

    const/4 p2, 0x0

    .line 43
    iput-object p2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 57
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private drawArc(Landroid/graphics/Canvas;)V
    .locals 10

    .line 97
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 98
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 99
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->COUNTDOWN_CIRCLE_RADIUS:I

    iget v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->COUNTDOWN_CIRCLE_STROKE_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 105
    new-instance v5, Landroid/graphics/RectF;

    sub-float v2, v1, v0

    sub-float v4, v3, v0

    add-float/2addr v1, v0

    add-float/2addr v3, v0

    invoke-direct {v5, v2, v4, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 110
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/high16 v6, -0x3d4c0000    # -90.0f

    const/4 v8, 0x0

    .line 111
    iget-object v9, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private getRotateDuration(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)I
    .locals 2

    .line 86
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;->getDurationInMillisecond()I

    move-result p0

    const/16 v0, 0x5dc

    const/16 v1, 0x3e8

    if-ge p0, v1, :cond_0

    const/16 v0, 0x1f4

    goto :goto_0

    .line 88
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

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 61
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mPaint:Landroid/graphics/Paint;

    .line 62
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->COUNTDOWN_CIRCLE_STROKE_WIDTH:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f06007f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private setAnimator(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V
    .locals 5

    const/4 v0, 0x2

    .line 69
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 70
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$CircleDecelerateInterpolator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$CircleDecelerateInterpolator;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 71
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 72
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->getRotateDuration(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 73
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;->getDurationInMillisecond()I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 74
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$ValueAnimationUpdater;

    invoke-direct {v0, p0, v2}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$ValueAnimationUpdater;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$1;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 75
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p1, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$AnimationEventHandler;

    invoke-direct {p1, v2}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$AnimationEventHandler;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$1;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method


# virtual methods
.method public cancelSelfTimerAnimation()V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 81
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->drawArc(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->setAnimator(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V

    return-void
.end method

.method public startAnimation()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
