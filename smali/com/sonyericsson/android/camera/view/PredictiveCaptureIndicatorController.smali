.class public Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;
.super Ljava/lang/Object;
.source "PredictiveCaptureIndicatorController.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAnimation:Landroid/view/animation/Animation;

.field private mBackground:Landroid/view/View;

.field private mIsAnimationRunning:Z

.field private mOrientation:I

.field private mRoot:Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;

.field private final mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

.field private mTextView:Landroid/widget/TextView;

.field private mVisible:Z


# direct methods
.method static bridge synthetic -$$Nest$fputmIsAnimationRunning(Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mIsAnimationRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdate(Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->update()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mActivity:Landroid/app/Activity;

    .line 50
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    const/4 p1, 0x2

    .line 51
    iput p1, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mOrientation:I

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mIsAnimationRunning:Z

    .line 53
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mVisible:Z

    return-void
.end method

.method private initPredictiveCaptureIndicator()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mActivity:Landroid/app/Activity;

    const v1, 0x7f09013f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 127
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mRoot:Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;

    .line 128
    iget v1, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->setOrientation(I)V

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mRoot:Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;

    .line 131
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 134
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mActivity:Landroid/app/Activity;

    .line 135
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07015d

    .line 134
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mActivity:Landroid/app/Activity;

    const v1, 0x7f09013d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mBackground:Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090140

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mTextView:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mActivity:Landroid/app/Activity;

    const v1, 0x7f010016

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mAnimation:Landroid/view/animation/Animation;

    .line 142
    new-instance v1, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController$1;-><init>(Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private update()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mRoot:Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mIsAnimationRunning:Z

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mVisible:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 118
    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    .line 120
    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mRoot:Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mIsAnimationRunning:Z

    .line 93
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->update()V

    return-void
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mVisible:Z

    .line 110
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->update()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mOrientation:I

    .line 63
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mRoot:Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;

    if-eqz p0, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mVisible:Z

    .line 101
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->update()V

    return-void
.end method

.method public startAnimation()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mRoot:Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->initPredictiveCaptureIndicator()V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mActivity:Landroid/app/Activity;

    .line 77
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0326

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mIsAnimationRunning:Z

    .line 80
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->update()V

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mBackground:Landroid/view/View;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
