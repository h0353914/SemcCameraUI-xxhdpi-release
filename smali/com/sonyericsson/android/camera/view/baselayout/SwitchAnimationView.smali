.class public Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;
.super Landroid/view/View;
.source "SwitchAnimationView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SwitchAnimationView"


# instance fields
.field private final mDraggingEndRadius:F

.field private final mDraggingStartRadius:F

.field private mHolePaint:Landroid/graphics/Paint;

.field private mHoleRadius:F

.field private mMaxRadius:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPositionX:I

.field private mPositionY:I

.field private mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 46
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mPaint:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mHolePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mHoleRadius:F

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mPositionX:I

    .line 39
    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mPositionY:I

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xee

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mHolePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mDraggingStartRadius:F

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070095

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mDraggingEndRadius:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mPaint:Landroid/graphics/Paint;

    .line 35
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mHolePaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 36
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mHoleRadius:F

    const/4 p2, 0x0

    .line 38
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mPositionX:I

    .line 39
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mPositionY:I

    .line 58
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    const/16 v1, 0xee

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mHolePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070096

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mDraggingStartRadius:F

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070095

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mDraggingEndRadius:F

    return-void
.end method

.method private drawAfterSwitchEffect(Landroid/graphics/Canvas;)V
    .locals 3

    .line 80
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mPositionX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mPositionY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mHoleRadius:F

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mHolePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawSwitchEffect(Landroid/graphics/Canvas;)V
    .locals 3

    .line 74
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "drawSwitchEffect canvas.drawCircle()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 76
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mPositionX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mPositionY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mRadius:F

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->drawSwitchEffect(Landroid/graphics/Canvas;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->drawAfterSwitchEffect(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getDraggingStartRadius()F
    .locals 0

    .line 122
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mDraggingStartRadius:F

    return p0
.end method

.method public getMaxRadius()F
    .locals 0

    .line 114
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mMaxRadius:F

    return p0
.end method

.method public getRadius()F
    .locals 0

    .line 118
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mRadius:F

    return p0
.end method

.method public setHoleRadius(F)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mHoleRadius:F

    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->postInvalidate()V

    return-void
.end method

.method public setMaxRadius(Landroid/graphics/Rect;)V
    .locals 7

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mPositionX:I

    .line 100
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object p1

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne p1, v2, :cond_0

    .line 102
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mPositionX:I

    .line 103
    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mPositionY:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 105
    :cond_0
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mPositionX:I

    sub-int p1, v0, p1

    .line 106
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mPositionY:I

    sub-int v0, v1, v0

    :goto_0
    int-to-double v1, p1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 109
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    int-to-double v5, v0

    .line 110
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    .line 108
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mMaxRadius:F

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mRadius:F

    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->postInvalidate()V

    return-void
.end method

.method public startDraggingAnimation(F)V
    .locals 2

    .line 133
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "startDraggingAnimation"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 134
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->setAlpha(F)V

    .line 135
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mDraggingStartRadius:F

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mDraggingEndRadius:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mRadius:F

    .line 136
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->postInvalidate()V

    return-void
.end method

.method public startDraggingStartedAnimation()V
    .locals 1

    .line 126
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "startDraggingStartedAnimation"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 127
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->setAlpha(F)V

    .line 128
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mDraggingStartRadius:F

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->mRadius:F

    .line 129
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->postInvalidate()V

    return-void
.end method
