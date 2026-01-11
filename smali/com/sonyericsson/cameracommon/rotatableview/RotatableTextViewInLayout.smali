.class public Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;
.super Landroid/widget/RelativeLayout;
.source "RotatableTextViewInLayout.java"


# static fields
.field private static final ROTATE_DEGREE:I = -0x5a

.field public static final TAG:Ljava/lang/String; = "RotatableTextViewInLayout"


# instance fields
.field private mBackground:Landroid/widget/ImageView;

.field private mLayoutHeight:I

.field private mLayoutWidth:I

.field private mSensorOrientation:I

.field private mText:Landroid/widget/TextView;

.field private mTextViewHeightOnLandscape:I

.field private mTextViewHeightOnPortrait:I

.field private mTextViewWidthOnLandscape:I

.field private mTextViewWidthOnPortrait:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mText:Landroid/widget/TextView;

    .line 32
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mBackground:Landroid/widget/ImageView;

    const/4 p1, 0x2

    .line 35
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mSensorOrientation:I

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mLayoutWidth:I

    .line 39
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mLayoutHeight:I

    .line 42
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewWidthOnLandscape:I

    .line 43
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewHeightOnLandscape:I

    .line 44
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewWidthOnPortrait:I

    .line 45
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewHeightOnPortrait:I

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 135
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mSensorOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 138
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    const/high16 v1, -0x3d4c0000    # -90.0f

    .line 140
    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 143
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 54
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f09016f

    .line 56
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mText:Landroid/widget/TextView;

    const/16 v1, 0x11

    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const v0, 0x7f09016d

    .line 60
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mBackground:Landroid/widget/ImageView;

    .line 62
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mLayoutWidth:I

    .line 68
    iput p2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mLayoutHeight:I

    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->updateLayout()V

    return-void
.end method

.method public setBackgroundDrawableId(I)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mSensorOrientation:I

    .line 130
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->updateLayout()V

    return-void
.end method

.method public setTextResId(I)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTextSizeOnLandscape(II)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewWidthOnLandscape:I

    .line 83
    iput p2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewHeightOnLandscape:I

    return-void
.end method

.method public setTextSizeOnPortrait(II)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewWidthOnPortrait:I

    .line 88
    iput p2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewHeightOnPortrait:I

    return-void
.end method

.method public updateLayout()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 98
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mSensorOrientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewWidthOnPortrait:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mLayoutHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewHeightOnPortrait:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 107
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mLayoutWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewHeightOnPortrait:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->scrollTo(II)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewWidthOnLandscape:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mLayoutWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewHeightOnLandscape:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 119
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mLayoutHeight:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewHeightOnLandscape:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->scrollTo(II)V

    .line 124
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->requestLayout()V

    .line 125
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->invalidate()V

    return-void
.end method
