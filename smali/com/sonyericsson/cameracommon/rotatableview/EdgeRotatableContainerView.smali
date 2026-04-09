.class public Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;
.super Landroid/widget/FrameLayout;
.source "EdgeRotatableContainerView.java"


# instance fields
.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 25
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->mOrientation:I

    return-void
.end method

.method private setOrientation(FF)V
    .locals 2

    .line 51
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->setRotation(F)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->setTranslationX(F)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 56
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->setRotation(F)V

    sub-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 57
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->setTranslationX(F)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->setTranslationY(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 31
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->setOrientation(FF)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 40
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->mOrientation:I

    .line 41
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->setOrientation(FF)V

    return-void
.end method
