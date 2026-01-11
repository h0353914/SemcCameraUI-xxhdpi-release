.class public Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;
.super Landroid/view/View;
.source "CircleView.java"


# static fields
.field private static final SHADOW_DX:F = 0.0f

.field private static final SHADOW_DY:F = 0.0f

.field private static final SHADOW_RADIUS:F = 3.0f


# instance fields
.field private mColor:I

.field private mSWidth:F

.field private mStyle:Landroid/graphics/Paint$Style;

.field paint:Landroid/graphics/Paint;

.field private radius:F

.field private size:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->radius:F

    .line 27
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mStyle:Landroid/graphics/Paint$Style;

    const/high16 p1, -0x1000000

    .line 28
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mColor:I

    .line 29
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07027e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mSWidth:F

    .line 30
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070298

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->size:F

    .line 84
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->radius:F

    .line 27
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mStyle:Landroid/graphics/Paint$Style;

    const/high16 p1, -0x1000000

    .line 28
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mColor:I

    .line 29
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07027e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mSWidth:F

    .line 30
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070298

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->size:F

    .line 84
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public getCircleStyle()Landroid/graphics/Paint$Style;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mStyle:Landroid/graphics/Paint$Style;

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mStyle:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v0, v3, v1, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 94
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->size:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->radius:F

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mStyle:Landroid/graphics/Paint$Style;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v2, :cond_0

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mSWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->radius:F

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->radius:F

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->radius:F

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setCircleStrokeWidth(F)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mSWidth:F

    .line 81
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->invalidate()V

    return-void
.end method

.method public setCircleStyle(Landroid/graphics/Paint$Style;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mStyle:Landroid/graphics/Paint$Style;

    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mColor:I

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->invalidate()V

    return-void
.end method

.method public setColorRGB(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mColor:I

    .line 57
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->invalidate()V

    return-void
.end method
