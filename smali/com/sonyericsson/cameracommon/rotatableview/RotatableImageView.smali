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

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 25
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mSensorOrientation:I

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    .line 29
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    .line 30
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    .line 32
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mPrepared:Z

    .line 36
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 25
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mSensorOrientation:I

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    .line 29
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    .line 30
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    .line 32
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mPrepared:Z

    .line 41
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    .line 25
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mSensorOrientation:I

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    .line 29
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    .line 30
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    .line 32
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mPrepared:Z

    .line 46
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method public clearFixedRotate(I)V
    .locals 0

    const/4 p1, 0x0

    .line 169
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    .line 170
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    return-void
.end method

.method public fixRotation(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    .line 165
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    return-void
.end method

.method protected isPrepared()Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mPrepared:Z

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 73
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 74
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->isPrepared()Z

    move-result p1

    if-nez p1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->setWidthHeight(II)V

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 145
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 152
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 159
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 160
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mSensorOrientation:I

    .line 87
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    return-void
.end method

.method public setWidthHeight(II)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    .line 57
    iput p2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mPrepared:Z

    return-void
.end method

.method public update()V
    .locals 7

    .line 94
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getWidth()I

    move-result v0

    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getHeight()I

    move-result v1

    .line 100
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 101
    iget v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mSensorOrientation:I

    .line 103
    iget v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    if-eqz v4, :cond_1

    .line 104
    iget v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 109
    iget v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 110
    iget v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 111
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/16 v3, -0x5a

    int-to-float v0, v0

    neg-float v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v1, v1

    neg-float v6, v1

    div-float/2addr v6, v5

    .line 119
    invoke-virtual {v2, v4, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float v3, v3

    .line 120
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    div-float/2addr v1, v5

    div-float/2addr v0, v5

    .line 121
    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 123
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    .line 124
    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    goto :goto_0

    .line 126
    :cond_3
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    .line 127
    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    .line 131
    :goto_0
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 134
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 135
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 136
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 137
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->requestLayout()V

    return-void
.end method
