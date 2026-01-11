.class public Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;
.super Landroid/view/View;
.source "ZoomLineView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$UpdateListener;
    }
.end annotation


# static fields
.field public static final GRAY_OUT_ALPHA:F = 0.4f

.field public static final TAG:Ljava/lang/String; = "ZoomLineView"

.field public static final VISIBLE_ALPHA:F = 1.0f

.field private static final zoomPointRect:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field largest_rect_margin:F

.field private mCurrentZoomValue:F

.field private mIsGray:Z

.field private mIsZoomLineEnabled:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPaintCircle:Landroid/graphics/Paint;

.field private final mPaintRect:Landroid/graphics/Paint;

.field private final mPaintText:Landroid/graphics/Paint;

.field private mViewHeight:F

.field private mViewWidth:F

.field private modeOne:Z

.field orientation:I

.field scaledDensityLargest:Z

.field text_rect_margin:F

.field tvSize:F

.field private updateListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$UpdateListener;

.field private zoomAssistDetail:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentZoomValue(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;)F
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mCurrentZoomValue:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGray(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mIsGray:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetupdateListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$UpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->updateListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$UpdateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetzoomAssistDetail(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->zoomAssistDetail:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputzoomAssistDetail(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->zoomAssistDetail:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->zoomPointRect:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 85
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mViewWidth:F

    .line 44
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mViewHeight:F

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->modeOne:Z

    .line 49
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaint:Landroid/graphics/Paint;

    .line 50
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    .line 51
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    .line 52
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintCircle:Landroid/graphics/Paint;

    .line 54
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0702a2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->tvSize:F

    .line 55
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0702a3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0702a5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    const/4 v4, 0x0

    .line 67
    iput-boolean v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mIsZoomLineEnabled:Z

    .line 69
    iput-boolean v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mIsGray:Z

    const/high16 v5, 0x3f800000    # 1.0f

    .line 71
    iput v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mCurrentZoomValue:F

    .line 123
    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->orientation:I

    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x40400000    # 3.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->scaledDensityLargest:Z

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0600a4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0702a4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v5, -0x1000000

    invoke-virtual {v1, v0, p1, p1, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0702a6

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, -0x1

    .line 93
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f07027e

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v3, v0, p1, p1, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 98
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$1;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;)V

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private drawZoomLine(Landroid/graphics/Canvas;)V
    .locals 7

    .line 174
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->modeOne:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 175
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    .line 176
    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->zoomPointRect:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 177
    aget v3, v1, v2

    .line 178
    iget v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mCurrentZoomValue:F

    const/high16 v5, 0x40000000    # 2.0f

    cmpl-float v6, v4, v5

    if-lez v6, :cond_0

    cmpl-float v5, v3, v5

    if-lez v5, :cond_0

    goto :goto_1

    .line 180
    :cond_0
    invoke-direct {p0, p1, v4, v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->drawZoomLineOne(Landroid/graphics/Canvas;FF)V

    .line 181
    iget v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mCurrentZoomValue:F

    invoke-direct {p0, p1, v4, v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->drawZoomValueOne(Landroid/graphics/Canvas;FF)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private drawZoomLineOne(Landroid/graphics/Canvas;FF)V
    .locals 8

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    return-void

    .line 223
    :cond_0
    iget p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mViewWidth:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p2, v0

    div-float v2, p2, v0

    div-float/2addr v2, p3

    sub-float/2addr v1, v2

    .line 224
    iget v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mViewHeight:F

    div-float v3, v2, v0

    div-float v4, v2, v0

    div-float/2addr v4, p3

    sub-float/2addr v3, v4

    div-float v4, p2, v0

    div-float/2addr p2, v0

    div-float/2addr p2, p3

    add-float/2addr v4, p2

    div-float p2, v2, v0

    div-float/2addr v2, v0

    div-float/2addr v2, p3

    add-float/2addr p2, v2

    .line 228
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->tvSize:F

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 229
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    const-string/jumbo v2, "x9.9"

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p3

    .line 231
    iget v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->orientation:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 232
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 233
    iget-boolean v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->scaledDensityLargest:Z

    if-eqz v5, :cond_1

    .line 234
    iget v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float v5, p2, v5

    div-float v6, p3, v0

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    add-float/2addr v5, v6

    .line 235
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 236
    invoke-virtual {v2, v4, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 237
    invoke-virtual {v2, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 238
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 239
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float/2addr v5, p3

    .line 240
    iget v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_1
    div-float v5, p3, v0

    sub-float v6, v4, v5

    .line 243
    iget v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    sub-float/2addr v6, v7

    invoke-virtual {v2, v6, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 244
    invoke-virtual {v2, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 245
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 246
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v5, p2, v5

    .line 247
    iget v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    sub-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 249
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 251
    :cond_2
    iget v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    .line 252
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 253
    iget-boolean v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->scaledDensityLargest:Z

    if-eqz v5, :cond_3

    div-float/2addr p3, v0

    sub-float v0, p2, p3

    .line 254
    iget v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    sub-float/2addr v0, v5

    iget v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float/2addr v0, v5

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 255
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 256
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 257
    invoke-virtual {v2, v4, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 258
    invoke-virtual {v2, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 259
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float/2addr p2, v0

    add-float/2addr p2, p3

    iget p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    add-float/2addr p2, p3

    invoke-virtual {v2, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_3
    div-float/2addr p3, v0

    sub-float v0, p2, p3

    .line 261
    iget v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    sub-float/2addr v0, v5

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 262
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 263
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 264
    invoke-virtual {v2, v4, p2}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr v1, p3

    .line 265
    iget p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    add-float/2addr v1, p3

    invoke-virtual {v2, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 267
    :goto_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method private drawZoomValueOne(Landroid/graphics/Canvas;FF)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    mul-float v8, p2, p3

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    return-void

    .line 279
    :cond_0
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "x%.1f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    rem-float v2, v8, v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    float-to-int v1, v8

    .line 281
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "x%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v9, v1

    .line 284
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    iget v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->tvSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 285
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 292
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v10, v2, v1

    .line 293
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    .line 294
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    const-string/jumbo v2, "x9.9"

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    .line 296
    iget v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mViewWidth:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float v2, v1, v13

    div-float v3, v1, v13

    div-float v3, v3, p3

    add-float v14, v2, v3

    .line 297
    iget v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mViewHeight:F

    div-float v3, v2, v13

    div-float/2addr v2, v13

    div-float v2, v2, p3

    add-float v15, v3, v2

    div-float v2, v1, v13

    div-float/2addr v1, v13

    div-float v1, v1, p3

    sub-float v6, v2, v1

    .line 299
    iget v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->orientation:I

    const/4 v2, 0x1

    const/high16 v16, 0x40800000    # 4.0f

    if-ne v1, v2, :cond_3

    .line 301
    iget-boolean v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->scaledDensityLargest:Z

    if-eqz v1, :cond_2

    div-float v1, v11, v13

    sub-float v2, v14, v1

    sub-float v1, v15, v1

    .line 304
    new-instance v3, Landroid/graphics/RectF;

    iget v13, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    sub-float v4, v2, v13

    sub-float/2addr v1, v13

    iget v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float/2addr v1, v5

    add-float v18, v14, v11

    move/from16 v19, v6

    add-float v6, v18, v13

    add-float v18, v15, v11

    add-float v18, v18, v13

    sub-float v5, v18, v5

    invoke-direct {v3, v4, v1, v6, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 307
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f06002d

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 308
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 309
    iget v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float v1, v15, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v13, v12, v4

    iget v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    add-float/2addr v4, v13

    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    invoke-virtual {v7, v14, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 310
    iget v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float v1, v15, v1

    iget v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    add-float/2addr v13, v4

    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintCircle:Landroid/graphics/Paint;

    invoke-virtual {v7, v14, v1, v13, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 311
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    div-float v1, v10, v16

    add-float/2addr v1, v15

    .line 312
    iget v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float v5, v1, v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr v2, v11

    .line 313
    iget v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float/2addr v1, v5

    invoke-virtual {v4, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 314
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v5, 0x0

    .line 315
    iget-object v13, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    const/16 v18, 0x0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object/from16 v20, v3

    move-object v3, v4

    move/from16 v4, v18

    move-object/from16 v17, v9

    move/from16 v21, v19

    move v9, v6

    move-object v6, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 316
    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->zoomPointRect:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object/from16 v3, v20

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v18, v10

    goto/16 :goto_0

    :cond_2
    move/from16 v21, v6

    move-object/from16 v17, v9

    move v1, v13

    const v9, 0x7f06002d

    div-float v2, v11, v1

    sub-float v1, v14, v2

    sub-float v2, v15, v2

    .line 321
    new-instance v13, Landroid/graphics/RectF;

    iget v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    sub-float v4, v1, v3

    sub-float/2addr v2, v3

    add-float v5, v14, v11

    add-float/2addr v5, v3

    add-float v6, v15, v11

    add-float/2addr v6, v3

    invoke-direct {v13, v4, v2, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 324
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v9, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 325
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v12, v2

    .line 326
    iget v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    add-float/2addr v2, v3

    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    invoke-virtual {v7, v14, v15, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 327
    iget v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    add-float/2addr v3, v2

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintCircle:Landroid/graphics/Paint;

    invoke-virtual {v7, v14, v15, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 328
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    div-float v2, v10, v16

    add-float/2addr v2, v15

    .line 329
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr v1, v11

    .line 330
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 331
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v5, 0x0

    .line 332
    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    const/16 v18, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v19, v4

    move/from16 v4, v18

    move/from16 v18, v10

    move-object v10, v6

    move-object/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 333
    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->zoomPointRect:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move/from16 v21, v6

    move-object/from16 v17, v9

    move/from16 v18, v10

    const v9, 0x7f06002d

    :goto_0
    const/4 v10, 0x0

    .line 338
    :goto_1
    iget v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 340
    iget-boolean v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->scaledDensityLargest:Z

    if-eqz v1, :cond_4

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v11, v1

    move/from16 v1, v21

    sub-float v6, v1, v2

    sub-float v2, v15, v2

    .line 344
    new-instance v13, Landroid/graphics/RectF;

    iget v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    sub-float/2addr v6, v3

    sub-float v4, v2, v3

    iget v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float/2addr v4, v5

    add-float/2addr v14, v11

    add-float/2addr v14, v3

    add-float v19, v15, v11

    add-float v19, v19, v3

    sub-float v3, v19, v5

    invoke-direct {v13, v6, v4, v14, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 347
    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 348
    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 349
    iget v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float v3, v15, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v12, v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0702a5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v4, v12

    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 350
    iget v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float/2addr v15, v3

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v12, v3

    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintCircle:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v15, v12, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 351
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    div-float v10, v18, v16

    sub-float v6, v1, v10

    .line 352
    iget v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float v1, v2, v1

    invoke-virtual {v3, v6, v1}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr v2, v11

    .line 353
    iget v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float/2addr v2, v1

    invoke-virtual {v3, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 354
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v4, 0x0

    .line 355
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object v2, v3

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 356
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->zoomPointRect:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    move/from16 v1, v21

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v11, v2

    sub-float v6, v1, v3

    sub-float v2, v15, v3

    .line 361
    new-instance v13, Landroid/graphics/RectF;

    iget v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    sub-float/2addr v6, v3

    sub-float v4, v2, v3

    add-float/2addr v14, v11

    add-float/2addr v14, v3

    add-float v5, v15, v11

    add-float/2addr v5, v3

    invoke-direct {v13, v6, v4, v14, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 364
    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 365
    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v12, v3

    .line 366
    iget v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    add-float/2addr v3, v12

    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v15, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 367
    iget v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    add-float/2addr v12, v3

    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintCircle:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v15, v12, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 368
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    div-float v10, v18, v16

    sub-float v6, v1, v10

    .line 369
    invoke-virtual {v3, v6, v2}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr v2, v11

    .line 370
    invoke-virtual {v3, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 371
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v4, 0x0

    .line 372
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object v2, v3

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 373
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->zoomPointRect:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    return-void
.end method

.method public static getTouchedZoomValue(Landroid/graphics/Rect;)Ljava/lang/Float;
    .locals 5

    .line 193
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->zoomPointRect:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 194
    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->zoomPointRect:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    .line 195
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 196
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static onClickedRect(FF)Ljava/lang/Float;
    .locals 7

    .line 204
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->zoomPointRect:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 205
    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->zoomPointRect:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    if-eqz v2, :cond_0

    .line 208
    new-instance v3, Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget v6, v2, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v3, v4, v5, v6, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 209
    invoke-virtual {v3, p0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    .line 214
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public disable()V
    .locals 1

    const/4 v0, 0x0

    .line 421
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mIsZoomLineEnabled:Z

    return-void
.end method

.method public enable()V
    .locals 1

    const/4 v0, 0x1

    .line 425
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mIsZoomLineEnabled:Z

    return-void
.end method

.method public hide()V
    .locals 1

    .line 386
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "hide"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x4

    .line 387
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->setVisibility(I)V

    return-void
.end method

.method public isEnabled()Z
    .locals 0

    .line 433
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mIsZoomLineEnabled:Z

    return p0
.end method

.method public isVisible()Z
    .locals 0

    .line 429
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 150
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 151
    const-string v0, "onDraw"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 152
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mIsZoomLineEnabled:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->drawZoomLine(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public setGray(Z)V
    .locals 2

    .line 409
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setGray "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 410
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mIsZoomLineEnabled:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 411
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mIsGray:Z

    if-eqz p1, :cond_1

    const p1, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 412
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public setModeOne(Ljava/lang/Boolean;)V
    .locals 0

    .line 189
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->modeOne:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->orientation:I

    .line 127
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->invalidate()V

    return-void
.end method

.method public setUpdateListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$UpdateListener;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->updateListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$UpdateListener;

    return-void
.end method

.method public setViewSize(II)V
    .locals 3

    .line 132
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setViewSize width:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 134
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mViewWidth:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mViewHeight:F

    int-to-float v2, p2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    return-void

    .line 137
    :cond_1
    iput v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mViewWidth:F

    int-to-float v0, p2

    .line 138
    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mViewHeight:F

    .line 140
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 142
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 143
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 144
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setmIsZoomLineEnabled(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mIsZoomLineEnabled:Z

    return-void
.end method

.method public show()V
    .locals 1

    .line 395
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "show"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 396
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mIsZoomLineEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 397
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mIsGray:Z

    .line 398
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 399
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public update(F)V
    .locals 2

    .line 158
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mCurrentZoomValue:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 159
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->updateWithAnimation(F)V

    goto :goto_0

    .line 161
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "update:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 162
    :cond_1
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mCurrentZoomValue:F

    .line 163
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->invalidate()V

    :goto_0
    return-void
.end method

.method public updateWithAnimation(F)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mCurrentZoomValue:F

    .line 170
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->invalidate()V

    return-void
.end method
