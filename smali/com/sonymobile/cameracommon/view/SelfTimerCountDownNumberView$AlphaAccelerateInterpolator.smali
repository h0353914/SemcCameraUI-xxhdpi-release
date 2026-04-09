.class Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AlphaAccelerateInterpolator;
.super Landroid/view/animation/AccelerateInterpolator;
.source "SelfTimerCountDownNumberView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlphaAccelerateInterpolator"
.end annotation


# instance fields
.field private final mAnimationRatio:F


# direct methods
.method constructor <init>(F)V
    .locals 0

    .line 265
    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 266
    iput p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AlphaAccelerateInterpolator;->mAnimationRatio:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .line 271
    iget v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AlphaAccelerateInterpolator;->mAnimationRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    mul-float/2addr p1, v0

    cmpg-float v0, v1, p1

    if-gtz v0, :cond_0

    move p1, v1

    .line 275
    :cond_0
    invoke-super {p0, p1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method
