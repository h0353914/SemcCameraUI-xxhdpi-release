.class public Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;
.super Landroid/widget/ImageView;
.source "RotatableImageView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RotatableImageView"


# instance fields
.field private mFixRotation:I

.field private mHeight:I

.field private mPrepared:Z

.field private mSensorOrientation:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 24
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mSensorOrientation:I

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    .line 28
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    .line 29
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    .line 31
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mPrepared:Z

    .line 35
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 24
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mSensorOrientation:I

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    .line 28
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    .line 29
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    .line 31
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mPrepared:Z

    .line 40
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    .line 24
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mSensorOrientation:I

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    .line 28
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    .line 29
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    .line 31
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mPrepared:Z

    .line 45
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method public clearFixedRotate(I)V
    .locals 0

    const/4 p1, 0x0

    .line 168
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    return-void
.end method

.method public fixRotation(I)V
    .locals 0

    .line 163
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    .line 164
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    return-void
.end method

.method protected isPrepared()Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mPrepared:Z

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 72
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->isPrepared()Z

    move-result p1

    if-nez p1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->setWidthHeight(II)V

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 144
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 151
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 158
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 159
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mSensorOrientation:I

    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    return-void
.end method

.method public setWidthHeight(II)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    .line 56
    iput p2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mPrepared:Z

    return-void
.end method

.method public update()V
    .locals 7

    .line 93
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getWidth()I

    move-result v0

    .line 98
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getHeight()I

    move-result v1

    .line 99
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 100
    iget v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mSensorOrientation:I

    .line 102
    iget v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    if-eqz v4, :cond_1

    move v3, v4

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 108
    iget v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 109
    iget v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 110
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    int-to-float v0, v0

    neg-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v1, v1

    neg-float v5, v1

    div-float/2addr v5, v4

    .line 118
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/16 v3, -0x5a

    int-to-float v3, v3

    .line 119
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    div-float/2addr v1, v4

    div-float/2addr v0, v4

    .line 120
    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 122
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    .line 123
    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    goto :goto_0

    .line 125
    :cond_3
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    .line 126
    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    .line 130
    :goto_0
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 133
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 134
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 135
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 136
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->requestLayout()V

    return-void
.end method
