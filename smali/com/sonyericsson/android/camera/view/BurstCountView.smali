.class public Lcom/sonyericsson/android/camera/view/BurstCountView;
.super Landroid/widget/TextView;
.source "BurstCountView.java"


# instance fields
.field private final mFadeOutAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "alpha"

    const/4 p2, 0x2

    .line 23
    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/BurstCountView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 24
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/BurstCountView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 25
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/BurstCountView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/sonyericsson/android/camera/view/BurstCountView$1;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/view/BurstCountView$1;-><init>(Lcom/sonyericsson/android/camera/view/BurstCountView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/BurstCountView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/BurstCountView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/BurstCountView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method public setUiOrientation(I)V
    .locals 0

    .line 69
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/BurstCountView;->setRotation(F)V

    return-void
.end method

.method public update(I)V
    .locals 0

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/BurstCountView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/BurstCountView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/BurstCountView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/BurstCountView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 57
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/BurstCountView;->setAlpha(F)V

    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/BurstCountView;->setVisibility(I)V

    :cond_1
    return-void
.end method
