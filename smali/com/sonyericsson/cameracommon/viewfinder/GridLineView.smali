.class public Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;
.super Landroid/view/View;
.source "GridLineView.java"


# static fields
.field private static final LINE_TYPE_FRAME_LINE:I = 0x1

.field private static final LINE_TYPE_GRID_LINE:I = 0x0

.field private static final LINE_TYPE_TOGETHER:I = 0x2

.field public static final TAG:Ljava/lang/String; = "GridLineView"


# instance fields
.field private isSquareView:Z

.field private mBottomHorizontalLinePositionY:F

.field private mBottomLineForSquarePositionY:F

.field private mIsGridLineEnabled:Z

.field private mLeftVerticalLinePositionX:F

.field private mLineType:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRightVerticalLinePositionX:F

.field private mTopHorizontalLinePositionY:F

.field private mTopLineForSquarePositionY:F

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 55
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mViewWidth:I

    .line 31
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mViewHeight:I

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mPaint:Landroid/graphics/Paint;

    .line 42
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->isSquareView:Z

    .line 43
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mLineType:I

    .line 52
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mIsGridLineEnabled:Z

    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f06003f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mPaint:Landroid/graphics/Paint;

    .line 58
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070276

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    .line 57
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private drawGridLine(Landroid/graphics/Canvas;)V
    .locals 13

    .line 110
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "drawGridLine"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 112
    :cond_0
    iget v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mLeftVerticalLinePositionX:F

    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mViewHeight:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 120
    iget v10, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mRightVerticalLinePositionX:F

    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mViewHeight:I

    int-to-float v11, v0

    iget-object v12, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    move-object v7, p1

    move v8, v10

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 128
    iget v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mTopHorizontalLinePositionY:F

    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mViewWidth:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object v0, p1

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 136
    iget v10, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mBottomHorizontalLinePositionY:F

    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mViewWidth:I

    int-to-float v9, v0

    iget-object v11, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move-object v6, p1

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawGridLineForSquare(Landroid/graphics/Canvas;)V
    .locals 13

    .line 145
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->isSquareView:Z

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "drawGridLineForSquare"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 150
    :cond_1
    iget v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mTopLineForSquarePositionY:F

    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mViewWidth:I

    int-to-float v4, v0

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 158
    iget v11, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mBottomLineForSquarePositionY:F

    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mViewWidth:I

    int-to-float v10, v0

    iget-object v12, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object v7, p1

    move v9, v11

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mIsGridLineEnabled:Z

    const/4 v0, 0x4

    .line 201
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setVisibility(I)V

    return-void
.end method

.method public enable()V
    .locals 1

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mIsGridLineEnabled:Z

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setVisibility(I)V

    return-void
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x4

    .line 183
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setVisibility(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 90
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 91
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mIsGridLineEnabled:Z

    if-eqz v0, :cond_3

    .line 92
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mLineType:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->drawGridLine(Landroid/graphics/Canvas;)V

    .line 101
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->drawGridLineForSquare(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->drawGridLineForSquare(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 94
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->drawGridLine(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setType(Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;Lcom/sonyericsson/android/camera/configuration/parameters/FrameLines;)V
    .locals 2

    .line 167
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrameLines;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FrameLines;

    if-ne p2, v0, :cond_0

    const/4 p1, 0x2

    .line 168
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mLineType:I

    goto :goto_0

    .line 169
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrameLines;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FrameLines;

    if-ne p2, v0, :cond_1

    .line 170
    iput v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mLineType:I

    goto :goto_0

    .line 171
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/FrameLines;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FrameLines;

    if-ne p2, p1, :cond_2

    const/4 p1, 0x1

    .line 172
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mLineType:I

    goto :goto_0

    .line 174
    :cond_2
    iput v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mLineType:I

    :goto_0
    return-void
.end method

.method public setViewSize(II)V
    .locals 2

    .line 62
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 63
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

    .line 64
    :cond_0
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mViewWidth:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mViewHeight:I

    if-ne v0, p2, :cond_1

    return-void

    .line 68
    :cond_1
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mViewWidth:I

    .line 69
    iput p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mViewHeight:I

    int-to-float v0, p1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    .line 70
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mLeftVerticalLinePositionX:F

    mul-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 71
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mRightVerticalLinePositionX:F

    int-to-float v0, p2

    div-float/2addr v0, v1

    .line 72
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mTopHorizontalLinePositionY:F

    mul-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 73
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mBottomHorizontalLinePositionY:F

    if-ne p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 75
    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->isSquareView:Z

    sub-int v0, p2, p1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 77
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mTopLineForSquarePositionY:F

    int-to-float v1, p2

    sub-float/2addr v1, v0

    .line 78
    iput v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mBottomLineForSquarePositionY:F

    .line 80
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 82
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 83
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->requestLayout()V

    :cond_3
    return-void
.end method
