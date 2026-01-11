.class public Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;
.super Landroid/widget/FrameLayout;
.source "RotatableContainerView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RotatableContainerView"


# instance fields
.field private mContainerView:Landroid/widget/FrameLayout;

.field private mCustomizableView:Landroid/widget/FrameLayout;

.field private mUiOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mUiOrientation:I

    return-void
.end method

.method private isPortraitUi()Z
    .locals 1

    .line 117
    iget p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mUiOrientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setLandscapeUi(IIZ)V
    .locals 1

    .line 80
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 83
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->requestLayout()V

    .line 85
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p3

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    if-ne p3, p1, :cond_0

    if-eq v0, p2, :cond_1

    .line 88
    :cond_0
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p1, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 89
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 90
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 93
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setRotation(F)V

    return-void
.end method

.method private setPortraitUi(IIZ)V
    .locals 2

    .line 97
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 99
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 100
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->requestLayout()V

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    if-ne v0, p2, :cond_0

    if-eq v1, p1, :cond_1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 106
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 107
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1
    if-eqz p3, :cond_2

    .line 110
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    const/high16 p1, 0x42b40000    # 90.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setRotation(F)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    const/high16 p1, 0x43870000    # 270.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setRotation(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getCustamizableView()Landroid/widget/FrameLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 38
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0900a3

    .line 39
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mContainerView:Landroid/widget/FrameLayout;

    const v0, 0x7f090132

    .line 40
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 51
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->getDefaultSize(II)I

    move-result v0

    .line 52
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->getDefaultSize(II)I

    move-result v1

    .line 54
    iget v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mUiOrientation:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 55
    invoke-direct {p0, v0, v1, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->setLandscapeUi(IIZ)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->isPortraitUi()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    invoke-direct {p0, v0, v1, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->setPortraitUi(IIZ)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-direct {p0, v0, v1, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->setLandscapeUi(IIZ)V

    .line 65
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setUiOrientation(I)V
    .locals 1

    .line 73
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mUiOrientation:I

    if-eq v0, p1, :cond_0

    .line 74
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mUiOrientation:I

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->requestLayout()V

    :cond_0
    return-void
.end method
