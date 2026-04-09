.class public Lcom/sonyericsson/android/camera/view/baselayout/RippleEffectView;
.super Landroid/view/View;
.source "RippleEffectView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RippleEffectView"


# instance fields
.field private mMaxRadius:F

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/RippleEffectView;->mPaint:Landroid/graphics/Paint;

    .line 36
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/RippleEffectView;->mPaint:Landroid/graphics/Paint;

    const/16 p1, 0x20

    const/16 v0, 0xff

    invoke-static {v0, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/RippleEffectView;->mPaint:Landroid/graphics/Paint;

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/RippleEffectView;->mPaint:Landroid/graphics/Paint;

    const/16 p1, 0x20

    const/16 p2, 0xff

    invoke-static {p2, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private drawRippleEffect(Landroid/graphics/Canvas;)V
    .locals 5

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 52
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/RippleEffectView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 53
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    .line 54
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 55
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 56
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawRippleEffect canvas.drawCircle() rect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 57
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 58
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/RippleEffectView;->mRadius:F

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/RippleEffectView;->mPaint:Landroid/graphics/Paint;

    .line 57
    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public getMaxRadius()F
    .locals 0

    .line 72
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/RippleEffectView;->mMaxRadius:F

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/RippleEffectView;->drawRippleEffect(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setMaxRadius(F)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/RippleEffectView;->mMaxRadius:F

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/RippleEffectView;->mRadius:F

    .line 64
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/RippleEffectView;->postInvalidate()V

    return-void
.end method
