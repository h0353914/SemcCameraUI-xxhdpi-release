.class public Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;
.super Landroid/widget/ImageView;
.source "ZoomSwitchButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomSwitchButton"

.field private static final ZOOM_TEMP_ONE:Ljava/lang/String; = "x1"

.field private static final ZOOM_TEMP_TWO:Ljava/lang/String; = "x1.1"


# instance fields
.field mCirclePaint:Landroid/graphics/Paint;

.field private mCurrentOrientation:I

.field private mCurrentZoomRatio:Ljava/lang/Integer;

.field mTextPaint:Landroid/graphics/Paint;

.field private mZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mCurrentOrientation:I

    .line 31
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mTextPaint:Landroid/graphics/Paint;

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mCirclePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mCurrentOrientation:I

    .line 31
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mTextPaint:Landroid/graphics/Paint;

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mCirclePaint:Landroid/graphics/Paint;

    .line 40
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->init()V

    return-void
.end method

.method private init()V
    .locals 5

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mCirclePaint:Landroid/graphics/Paint;

    .line 79
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0702a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 78
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0702aa

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public getCurrentZoomValue()F
    .locals 1

    .line 122
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mCurrentZoomRatio:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x4

    .line 118
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->setVisibility(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 88
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 89
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertDip2Px(Landroid/content/Context;I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    int-to-float v0, v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 93
    iget v0, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v4, v0, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mTextPaint:Landroid/graphics/Paint;

    const-string/jumbo v3, "x1.1"

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 98
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    div-float/2addr v0, v2

    sub-float/2addr v3, v0

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 100
    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v5, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v4, v0

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    add-float/2addr v0, v4

    .line 103
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->getCurrentZoomValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%.1f"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 104
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x0

    .line 105
    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mTextPaint:Landroid/graphics/Paint;

    const-string/jumbo v3, "x1"

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 107
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    div-float/2addr v1, v2

    sub-float/2addr v3, v1

    .line 109
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setUiOrientation(I)V
    .locals 1

    .line 67
    iget v0, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mCurrentOrientation:I

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    iput p1, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mCurrentOrientation:I

    .line 71
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->invalidate()V

    return-void
.end method

.method public setZoomRatios(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mZoomRatios:Ljava/util/List;

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->setVisibility(I)V

    return-void
.end method

.method public switchZoomIndex(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v0, 0x3c6

    if-le p1, v0, :cond_1

    move p1, v0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mZoomRatios:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mCurrentZoomRatio:Ljava/lang/Integer;

    .line 53
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ZOOM currentZoomRatio: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->mCurrentZoomRatio:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZoomSwitchButton"

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->invalidate()V

    return-void
.end method
