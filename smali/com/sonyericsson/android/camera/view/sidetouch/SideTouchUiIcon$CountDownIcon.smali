.class public final Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;
.super Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;
.source "SideTouchUiIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "CountDownIcon"
.end annotation


# static fields
.field private static final PUT_IN_ANIMATION_DURATION:J = 0x78L


# instance fields
.field private mSideTouchCountDownCircleView:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;

.field private mSideTouchCountDownView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 190
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected attachView(Landroid/view/ViewGroup;)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00a8

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0901b3

    .line 196
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownView:Landroid/widget/FrameLayout;

    const v0, 0x7f0901b4

    .line 197
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownCircleView:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;

    .line 199
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownView:Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownCircleView:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->setVisibility(I)V

    return-void
.end method

.method protected getIconView()Landroid/view/View;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public setUiOrientation(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 226
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownCircleView:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;

    const/high16 p1, 0x43870000    # 270.0f

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->setRotation(F)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownCircleView:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->setRotation(F)V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownCircleView:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownCircleView:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->SIDE_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownCircleView:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->startAnimation()V

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownView:Landroid/widget/FrameLayout;

    .line 216
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 217
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-nez v1, :cond_0

    neg-int v0, v0

    :cond_0
    int-to-float v0, v0

    .line 218
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x78

    .line 219
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 220
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
