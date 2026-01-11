.class public Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
.super Ljava/lang/Object;
.source "TutorialController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;,
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialStateListener;,
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;,
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;,
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;,
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;
    }
.end annotation


# static fields
.field private static final FADE_OUT_ANIMATION_DURATION_MILLIS:J = 0x12cL

.field private static final SLIDE_IN_ANIMATION_DURATION_LAND_MILLIS:J = 0x2bcL

.field private static final SLIDE_IN_ANIMATION_DURATION_PORT_MILLIS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "TutorialController"

.field private static final TRACE:Z = true


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

.field private mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

.field private final mContext:Landroid/content/Context;

.field private mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

.field private final mHandler:Landroid/os/Handler;

.field private mIsOpened:Z

.field private mOrientation:I

.field private mPostStartAnimationTask:Ljava/lang/Runnable;

.field private mPreviousType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

.field private final mRootView:Landroid/view/ViewGroup;

.field private mSetNavigationBarThemeLight:Z

.field private mStateListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialStateListener;

.field private mSystemUiAccessor:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;

.field private final mTutorialFactory:Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;

.field private mViewFlipper:Landroid/widget/ViewFlipper;

.field private mWindow:Landroid/view/Window;


# direct methods
.method static bridge synthetic -$$Nest$fgetmButtonListener(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContainer(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateListener(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialStateListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mStateListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialStateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhide(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hide()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrelease(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->release()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNavigationBarThemeLight(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setNavigationBarThemeLight(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshow(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->show()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartSlideInAnimation(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->startSlideInAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUiOrientation(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->updateUiOrientation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smtrace(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/Window;)V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mIsOpened:Z

    .line 62
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mSetNavigationBarThemeLight:Z

    .line 78
    iput v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    .line 172
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mRootView:Landroid/view/ViewGroup;

    .line 173
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContext:Landroid/content/Context;

    .line 174
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mTutorialFactory:Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;

    .line 175
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mHandler:Landroid/os/Handler;

    .line 176
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mWindow:Landroid/view/Window;

    .line 178
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->prepareTutorial()V

    return-void
.end method

.method private addContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)V
    .locals 3

    .line 333
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;-><init>(Landroid/content/Context;)V

    .line 334
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    .line 336
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 337
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 341
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->setContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;)Z

    .line 342
    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->setOnClickCloseButtonListener(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)V

    return-void
.end method

.method private addFlags(I)V
    .locals 0

    .line 841
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mSystemUiAccessor:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;

    if-eqz p0, :cond_0

    .line 842
    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;->onAddFlags(I)V

    :cond_0
    return-void
.end method

.method private canHandleNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Z
    .locals 0

    .line 563
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mPreviousType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private clearFlags(I)V
    .locals 0

    .line 847
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mSystemUiAccessor:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;

    if-eqz p0, :cond_0

    .line 848
    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;->onClearFlags(I)V

    :cond_0
    return-void
.end method

.method private getFadeOutAnimator(J)Landroid/animation/ObjectAnimator;
    .locals 5

    .line 669
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3eb5c28f    # 0.355f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f251eb8    # 0.645f

    const v4, 0x3d3851ec    # 0.045f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v1, 0x2

    .line 671
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 673
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 676
    invoke-virtual {v1, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 677
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 678
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$3;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$3;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V

    invoke-virtual {v1, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getNextTutorialType(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;
    .locals 7

    .line 512
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    move v2, v0

    .line 513
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 514
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;

    .line 515
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    move-result-object v3

    .line 516
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->getTutorialTypes()Ljava/util/List;

    move-result-object v3

    move v4, v0

    .line 517
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 518
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne p1, v5, :cond_2

    add-int/lit8 v5, v4, 0x1

    .line 519
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 520
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    return-object p0

    :cond_0
    add-int/lit8 v3, v2, 0x1

    .line 522
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 523
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v5, v3}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;

    .line 524
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    move-result-object v3

    .line 525
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->getTutorialTypes()Ljava/util/List;

    move-result-object v3

    .line 526
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 527
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    return-object p0

    :cond_1
    return-object v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private getSlideInAnimator(J)Landroid/animation/ObjectAnimator;
    .locals 6

    .line 621
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3eb5c28f    # 0.355f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f251eb8    # 0.645f

    const v4, 0x3d3851ec    # 0.045f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 623
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070253

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 627
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "translationY"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "translationX"

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 628
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->isPortrait()Z

    move-result v4

    if-eqz v4, :cond_1

    neg-int v1, v1

    :cond_1
    int-to-float v1, v1

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x0

    const/4 v5, 0x1

    aput v1, v3, v5

    .line 626
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 630
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    new-array v3, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 633
    invoke-virtual {v1, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 634
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 635
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$2;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$2;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V

    invoke-virtual {v1, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1
.end method

.method private getTutorialCount()I
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result p0

    :goto_0
    return p0
.end method

.method private getTutorialView(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;
    .locals 3

    .line 545
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 546
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 547
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;

    .line 548
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private hide()V
    .locals 1

    .line 407
    const-string v0, "hide()"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    .line 408
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;->setVisibility(I)V

    return-void
.end method

.method private isPortrait()Z
    .locals 1

    .line 397
    iget p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private prepareTutorial()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f09020c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 187
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09020d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    .line 190
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;->getViewFlipper()Landroid/widget/ViewFlipper;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    const v1, 0x7f0900d7

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->updateFlipperAnimation()V

    return-void
.end method

.method private release()V
    .locals 3

    .line 378
    const-string v0, "release()"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 379
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 380
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;

    .line 381
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mSetNavigationBarThemeLight:Z

    if-eqz v1, :cond_1

    .line 384
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setNavigationBarThemeLight(Z)V

    .line 386
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 388
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mPostStartAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 389
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mPostStartAnimationTask:Ljava/lang/Runnable;

    .line 391
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mPreviousType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 392
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 393
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mIsOpened:Z

    return-void
.end method

.method private setContentToView(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;Lcom/sonyericsson/android/camera/setting/StoredSettings;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 255
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 256
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 257
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 258
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 259
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 260
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 261
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 262
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 266
    iget-object v10, v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->tutorialTypes:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 267
    iget-object v12, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mTutorialFactory:Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;

    iget v13, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    invoke-virtual {v12, v11, v13}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;->create(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    move-result-object v12

    .line 268
    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->isSimpleTutorialContent()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 269
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object/from16 v13, p2

    goto :goto_0

    .line 271
    :cond_1
    iget-boolean v13, v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->isFeatureListType:Z

    if-eqz v13, :cond_2

    .line 272
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 275
    :cond_2
    iget-boolean v13, v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->isReadMore:Z

    if-nez v13, :cond_3

    move-object/from16 v13, p2

    invoke-virtual {v12, v13}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->canShowContent(Lcom/sonyericsson/android/camera/setting/StoredSettings;)Z

    move-result v14

    if-eqz v14, :cond_0

    goto :goto_2

    :cond_3
    move-object/from16 v13, p2

    .line 276
    :goto_2
    move-object v14, v12

    check-cast v14, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    .line 277
    invoke-virtual {v14}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->getNavigatorType()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;

    move-result-object v14

    sget-object v15, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;->NORMAL:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;

    if-ne v14, v15, :cond_4

    .line 278
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    :cond_4
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 288
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 289
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_6

    return v10

    :cond_6
    move v1, v10

    .line 293
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v1, v11, :cond_7

    .line 294
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    new-instance v12, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;

    .line 295
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    invoke-direct {v12, v0, v13}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;)V

    .line 294
    invoke-direct {v0, v11, v12}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->addContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 298
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 299
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mTutorialFactory:Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;

    iget v7, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    .line 300
    invoke-virtual {v1, v7, v2, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;->create(ILjava/util/List;Ljava/util/List;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    move-result-object v1

    if-nez p3, :cond_8

    .line 302
    new-instance v3, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;

    invoke-direct {v3, v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;)V

    goto :goto_4

    :cond_8
    move-object/from16 v3, p3

    .line 301
    :goto_4
    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->addContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)V

    .line 305
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 306
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mTutorialFactory:Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;

    iget v3, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    .line 307
    invoke-virtual {v1, v3, v4, v5}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;->create(ILjava/util/List;Ljava/util/List;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    move-result-object v1

    if-nez p3, :cond_a

    .line 310
    new-instance v3, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;

    invoke-direct {v3, v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;)V

    goto :goto_5

    :cond_a
    move-object/from16 v3, p3

    .line 309
    :goto_5
    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->addContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)V

    .line 313
    :cond_b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 314
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mTutorialFactory:Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;

    iget v3, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    .line 315
    invoke-virtual {v1, v3, v8, v9}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;->create(ILjava/util/List;Ljava/util/List;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    move-result-object v1

    if-nez p3, :cond_c

    .line 317
    new-instance v3, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;

    invoke-direct {v3, v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;)V

    goto :goto_6

    :cond_c
    move-object/from16 v3, p3

    .line 316
    :goto_6
    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->addContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)V

    .line 320
    :cond_d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 321
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    goto :goto_7

    .line 322
    :cond_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f

    .line 323
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    goto :goto_7

    .line 324
    :cond_f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 325
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    goto :goto_7

    .line 326
    :cond_10
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 327
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    :cond_11
    :goto_7
    const/4 v0, 0x1

    return v0
.end method

.method private setNavigationBarThemeLight(Z)V
    .locals 2

    .line 869
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mSetNavigationBarThemeLight:Z

    .line 870
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mWindow:Landroid/view/Window;

    if-eqz p0, :cond_1

    .line 872
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 874
    invoke-interface {p0}, Landroid/view/WindowInsetsController;->getSystemBarsAppearance()I

    move-result v0

    const/16 v1, 0x10

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eq v0, p1, :cond_1

    .line 878
    invoke-interface {p0, p1, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :cond_1
    return-void
.end method

.method private show()V
    .locals 2

    .line 401
    const-string/jumbo v0, "show()"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContext:Landroid/content/Context;

    const v1, 0x7f060094

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;->setBackgroundColor(I)V

    return-void
.end method

.method private startSlideInAnimation()V
    .locals 2

    .line 349
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->show()V

    .line 350
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x2bc

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getSlideInAnimator(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 352
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private static trace(Ljava/lang/String;)V
    .locals 0

    .line 52
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method

.method private updateFlipperAnimation()V
    .locals 3

    .line 588
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    if-nez v0, :cond_0

    return-void

    .line 594
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const v0, 0x7f01001c

    const v1, 0x7f01001a

    goto :goto_0

    :cond_1
    const v0, 0x7f01001d

    const v1, 0x7f01001b

    .line 608
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContext:Landroid/content/Context;

    .line 609
    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 610
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v0}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 612
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContext:Landroid/content/Context;

    .line 613
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 614
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private updateUiOrientation()V
    .locals 3

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateUiOrientation() E orientation = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 444
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;

    .line 446
    iget v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->setUiOrientation(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 449
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->updateFlipperAnimation()V

    .line 450
    const-string/jumbo p0, "updateUiOrientation() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public backToPreviousPage()Z
    .locals 1

    .line 857
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    if-eqz p0, :cond_0

    const v0, 0x7f090137

    .line 858
    invoke-virtual {p0, v0}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 860
    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public close()V
    .locals 2

    .line 370
    const-string v0, "close()"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    .line 371
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x12c

    .line 372
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getFadeOutAnimator(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    const/4 v0, 0x0

    .line 374
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mIsOpened:Z

    return-void
.end method

.method public doNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V
    .locals 2

    .line 469
    const-string v0, "doNextAction()"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    .line 471
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->canHandleNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mPreviousType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 473
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getNextTutorialType(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 484
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hasNext(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 485
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startSetupWizard(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)V

    .line 486
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->showNext()V

    goto :goto_0

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->close()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCurrentType()Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;
    .locals 0

    .line 496
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    return-object p0
.end method

.method public getTutorialTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;",
            ">;"
        }
    .end annotation

    .line 505
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->getTutorialTypes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hasNext(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Z
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;

    .line 574
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    move-result-object p0

    .line 575
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->getTutorialTypes()Ljava/util/List;

    move-result-object p0

    .line 576
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method

.method public isOpened()Z
    .locals 0

    .line 415
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mIsOpened:Z

    return p0
.end method

.method public open(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;Lcom/sonyericsson/android/camera/setting/StoredSettings;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)Z
    .locals 1

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->open(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;Lcom/sonyericsson/android/camera/setting/StoredSettings;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialStateListener;)Z

    move-result p0

    return p0
.end method

.method public open(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;Lcom/sonyericsson/android/camera/setting/StoredSettings;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialStateListener;)Z
    .locals 2

    .line 205
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->isOpened()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 207
    const-string p0, "open()  :  is already accepted.In the middle of starting to open tutorial..."

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    return v1

    .line 213
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setContentToView(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;Lcom/sonyericsson/android/camera/setting/StoredSettings;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)Z

    move-result p2

    if-nez p2, :cond_1

    return v1

    .line 217
    :cond_1
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mStateListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialStateListener;

    .line 219
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_4

    .line 221
    const-string p2, "open()  :  is requested."

    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    .line 223
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mIsOpened:Z

    .line 225
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mStateListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialStateListener;

    if-eqz p2, :cond_2

    .line 226
    invoke-interface {p2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialStateListener;->onOpened()V

    .line 229
    :cond_2
    iget-boolean p2, p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->isFeatureListType:Z

    if-nez p2, :cond_3

    .line 230
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    iget-boolean p4, p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->isReadMore:Z

    iget-boolean v0, p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->isFeatureListType:Z

    invoke-virtual {p2, p4, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->initSetupwizard(ZZ)V

    .line 232
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    iget-object p4, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mCurrentType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {p2, p4, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startSetupWizard(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)V

    .line 237
    :cond_3
    new-instance p2, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$1;

    invoke-direct {p2, p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$1;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mPostStartAnimationTask:Ljava/lang/Runnable;

    .line 247
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return p3
.end method

.method public pause()V
    .locals 1

    .line 359
    const-string v0, "pause()"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    .line 360
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->release()V

    .line 362
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hide()V

    :cond_0
    return-void
.end method

.method public setOnClickTutorialButtonListener(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;)V
    .locals 0

    .line 825
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    return-void
.end method

.method public setSystemUiAccessor(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mSystemUiAccessor:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$SystemUiAccessor;

    return-void
.end method

.method public setUiOrientation(I)V
    .locals 2

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setUiOrientation() E orientation = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    .line 425
    iget v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    if-eq v0, p1, :cond_1

    .line 427
    iput p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mOrientation:I

    .line 428
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 429
    const-string/jumbo p0, "setUiOrientation() X : Tutorial open animation is running."

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    return-void

    .line 433
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->updateUiOrientation()V

    .line 435
    :cond_1
    const-string/jumbo p0, "setUiOrientation() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V

    return-void
.end method
