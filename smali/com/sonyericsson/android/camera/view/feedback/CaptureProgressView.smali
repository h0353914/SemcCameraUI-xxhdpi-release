.class public Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;
.super Landroid/widget/FrameLayout;
.source "CaptureProgressView.java"


# instance fields
.field private mCircleViewLandscape:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

.field private mCircleViewPortrait:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

.field private mLayoutLandscape:Landroid/widget/RelativeLayout;

.field private mLayoutPortrait:Landroid/widget/RelativeLayout;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getCurrentCircleView()Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;
    .locals 2

    .line 65
    iget v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 66
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->mCircleViewLandscape:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->mCircleViewPortrait:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    :goto_0
    return-object p0
.end method

.method private getCurrentLayout()Landroid/widget/RelativeLayout;
    .locals 2

    .line 70
    iget v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 71
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->mLayoutLandscape:Landroid/widget/RelativeLayout;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->mLayoutPortrait:Landroid/widget/RelativeLayout;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->getCurrentLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 52
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->getCurrentCircleView()Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->cancelAnimation()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 31
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f09007e

    .line 32
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->mLayoutPortrait:Landroid/widget/RelativeLayout;

    const v0, 0x7f09007d

    .line 33
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->mLayoutLandscape:Landroid/widget/RelativeLayout;

    const v0, 0x7f09007c

    .line 34
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->mCircleViewPortrait:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    const v0, 0x7f09007b

    .line 35
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->mCircleViewLandscape:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->getCurrentCircleView()Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->setDuration(I)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->mOrientation:I

    return-void
.end method

.method public startAnimation()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->getCurrentLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 43
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->getCurrentCircleView()Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->startAnimation()V

    return-void
.end method
