.class public Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;
.super Landroid/view/TextureView;
.source "TutorialVideoView.java"


# instance fields
.field private mTextureAspectRatio:F

.field private mVideoAspectRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 58
    invoke-super/range {p0 .. p5}, Landroid/view/TextureView;->onLayout(ZIIII)V

    .line 59
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->mTextureAspectRatio:F

    return-void
.end method

.method public setVideoAspectRatio(F)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->mVideoAspectRatio:F

    return-void
.end method

.method public updateScale()V
    .locals 6

    .line 42
    iget v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->mVideoAspectRatio:F

    iget v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->mTextureAspectRatio:F

    cmpl-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    .line 44
    iget v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->mVideoAspectRatio:F

    iget v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->mTextureAspectRatio:F

    div-float/2addr v0, v2

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_0

    .line 46
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->mTextureAspectRatio:F

    iget v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->mVideoAspectRatio:F

    div-float/2addr v0, v2

    .line 49
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 51
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v2, v2

    int-to-float v3, v3

    .line 52
    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 53
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method
