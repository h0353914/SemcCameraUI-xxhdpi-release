.class Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;
.super Ljava/lang/Object;
.source "ModeTransitionAnimation.java"


# static fields
.field private static final ANIMATION_ALPHA:Ljava/lang/String; = "alpha"

.field private static final ANIMATION_SCALE_X:Ljava/lang/String; = "scaleX"

.field private static final ANIMATION_SCALE_Y:Ljava/lang/String; = "scaleY"

.field private static final COMPLEMENT_ANIMATION_DURATION_RATIO:F = 0.5f

.field private static final EASE_OUT_IN:Landroid/view/animation/Interpolator;

.field private static final MODE_TRANSITION:Landroid/view/animation/Interpolator;

.field private static final VIEW_FINDER_FADE_DURATION:I = 0xc8


# instance fields
.field private final mCaptureButton:Landroid/view/View;

.field private final mCurrentModeIndicator:Landroid/widget/ImageView;

.field private final mFrontAngleSwitchButton:Landroid/view/View;

.field private final mGridLineView:Landroid/view/View;

.field private final mModeSelectorShortcut:Landroid/view/View;

.field private final mModeShortcutButton:Landroid/view/View;

.field private mModeSwitchImageView:Landroid/widget/ImageView;

.field private mModeSwitchTextView:Landroid/widget/TextView;

.field private final mNavigator:Lcom/sonyericsson/android/camera/view/ApplicationNavigator;

.field private mPreviousNameSwitchImageAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mPrimaryShortcutList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecondaryShortcutLeft:Landroid/view/View;

.field private final mSecondaryShortcutRight:Landroid/view/View;

.field private final mThumbnail:Landroid/view/View;

.field private final mViewFinderCover:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 66
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e28f5c3    # 0.165f

    const v2, 0x3f570a3d    # 0.84f

    const v3, 0x3ee147ae    # 0.44f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->MODE_TRANSITION:Landroid/view/animation/Interpolator;

    .line 68
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3d3851ec    # 0.045f

    const v2, 0x3eb5c28f    # 0.355f

    const v3, 0x3f251eb8    # 0.645f

    invoke-direct {v0, v3, v1, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->EASE_OUT_IN:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Lcom/sonyericsson/android/camera/view/ApplicationNavigator;Ljava/util/List;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/ApplicationNavigator;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mPreviousNameSwitchImageAnimatorSet:Landroid/animation/AnimatorSet;

    .line 77
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mNavigator:Lcom/sonyericsson/android/camera/view/ApplicationNavigator;

    .line 78
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getCurrentModeIndicatorView()Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mCurrentModeIndicator:Landroid/widget/ImageView;

    .line 80
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mPrimaryShortcutList:Ljava/util/List;

    .line 81
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutLeft:Landroid/view/View;

    .line 82
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutRight:Landroid/view/View;

    .line 83
    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mCaptureButton:Landroid/view/View;

    .line 84
    iput-object p6, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mViewFinderCover:Landroid/view/View;

    .line 85
    iput-object p7, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mGridLineView:Landroid/view/View;

    .line 86
    iput-object p8, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSelectorShortcut:Landroid/view/View;

    .line 87
    iput-object p10, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mThumbnail:Landroid/view/View;

    .line 88
    iput-object p11, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mFrontAngleSwitchButton:Landroid/view/View;

    .line 89
    iput-object p9, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeShortcutButton:Landroid/view/View;

    return-void
.end method

.method private getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .locals 6

    const/4 p0, 0x1

    .line 394
    new-array v0, p0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const-string v2, "alpha"

    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v2, 0x2

    .line 395
    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "scaleX"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 396
    new-array v4, v2, [F

    fill-array-data v4, :array_1

    const-string v5, "scaleY"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const/4 v5, 0x3

    .line 397
    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v1

    aput-object v3, v5, p0

    aput-object v4, v5, v2

    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p2

    .line 399
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 400
    sget-object p1, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->EASE_OUT_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getEaseOutAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .locals 3

    const/4 p0, 0x1

    .line 386
    new-array v0, p0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const-string v2, "alpha"

    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 387
    new-array p0, p0, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, p0, v1

    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p2

    .line 388
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 389
    sget-object p1, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->EASE_OUT_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .locals 5

    const/4 p0, 0x1

    .line 405
    new-array v0, p0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const-string v3, "alpha"

    invoke-static {v3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 406
    new-array v3, p0, [F

    aput v2, v3, v1

    const-string v4, "scaleX"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 407
    new-array v4, p0, [F

    aput v2, v4, v1

    const-string v2, "scaleY"

    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v4, 0x3

    .line 408
    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v1

    aput-object v3, v4, p0

    const/4 p0, 0x2

    aput-object v2, v4, p0

    invoke-static {p1, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p2

    .line 410
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 411
    sget-object p1, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->EASE_OUT_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private getLinearFadeInAnimator(Landroid/view/View;IFF)Landroid/animation/Animator;
    .locals 1

    const/4 p0, 0x2

    .line 372
    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p3, p0, v0

    const/4 p3, 0x1

    aput p4, p0, p3

    const-string p4, "alpha"

    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    .line 373
    new-array p3, p3, [Landroid/animation/PropertyValuesHolder;

    aput-object p0, p3, v0

    invoke-static {p1, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p2

    .line 374
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private getLinearFadeOutAnimator(Landroid/view/View;IF)Landroid/animation/Animator;
    .locals 2

    const/4 p0, 0x2

    .line 379
    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p3, p0, v0

    const/4 p3, 0x1

    const/4 v1, 0x0

    aput v1, p0, p3

    const-string v1, "alpha"

    invoke-static {v1, p0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    .line 380
    new-array p3, p3, [Landroid/animation/PropertyValuesHolder;

    aput-object p0, p3, v0

    invoke-static {p1, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p2

    .line 381
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private getModeIconAutoTransitionAnimation(Lcom/sonyericsson/android/camera/NavigatorContents;I)Landroid/animation/ObjectAnimator;
    .locals 4

    .line 417
    invoke-static {}, Lcom/sonyericsson/android/camera/NavigatorContents;->values()[Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v0

    array-length v0, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/NavigatorContents;->indexOf(Lcom/sonyericsson/android/camera/NavigatorContents;)I

    move-result p1

    sub-int/2addr v0, p1

    const/4 p1, 0x1

    sub-int/2addr v0, p1

    .line 419
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getModeIconAutoTransitionAnimation : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mCurrentModeIndicator:Landroid/widget/ImageView;

    .line 423
    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mNavigator:Lcom/sonyericsson/android/camera/view/ApplicationNavigator;

    .line 424
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->calculateModeIndicatorPosition(I)I

    move-result p0

    int-to-float p0, p0

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v3, 0x0

    aput v2, v0, v3

    aput p0, v0, p1

    .line 421
    const-string/jumbo p0, "translationY"

    invoke-static {v1, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p2

    .line 425
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 426
    sget-object p1, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->MODE_TRANSITION:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private getModeSwitchEaseOutAnimation()Landroid/animation/AnimatorSet;
    .locals 8

    .line 343
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 344
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 348
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mPreviousNameSwitchImageAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 349
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mPreviousNameSwitchImageAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 352
    :cond_0
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mPreviousNameSwitchImageAnimatorSet:Landroid/animation/AnimatorSet;

    .line 355
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchTextView:Landroid/widget/TextView;

    const/16 v3, 0x3e8

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0xc8

    .line 356
    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 357
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchTextView:Landroid/widget/TextView;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 361
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 362
    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 363
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 367
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v0
.end method

.method static getPreviewAlpha(IF)F
    .locals 0

    .line 338
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p0, p1, p0

    sub-float/2addr p1, p0

    return p1
.end method

.method private isScaleOut(Landroid/view/View;)Z
    .locals 1

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    if-ltz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private setupModeSwitchContainer()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mNavigator:Lcom/sonyericsson/android/camera/view/ApplicationNavigator;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getModeSwitchImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchImageView:Landroid/widget/ImageView;

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mNavigator:Lcom/sonyericsson/android/camera/view/ApplicationNavigator;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getModeSwitchNameView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 154
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method getCancelAnimation(Lcom/sonyericsson/android/camera/NavigatorContents;)Landroid/animation/AnimatorSet;
    .locals 6

    .line 244
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0xc8

    .line 248
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getModeIconAutoTransitionAnimation(Lcom/sonyericsson/android/camera/NavigatorContents;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mPrimaryShortcutList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 252
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 256
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mFrontAngleSwitchButton:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 257
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mFrontAngleSwitchButton:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mViewFinderCover:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    .line 263
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mViewFinderCover:Landroid/view/View;

    const/high16 v4, 0x43480000    # 200.0f

    mul-float/2addr v4, p1

    float-to-int v4, v4

    invoke-direct {p0, v3, v4, p1}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getLinearFadeOutAnimator(Landroid/view/View;IF)Landroid/animation/Animator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mGridLineView:Landroid/view/View;

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v4, v3, v5}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getLinearFadeInAnimator(Landroid/view/View;IFF)Landroid/animation/Animator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutLeft:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutRight:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mCaptureButton:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSelectorShortcut:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeShortcutButton:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mThumbnail:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->isScaleOut(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 279
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mThumbnail:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_2
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v0
.end method

.method getExecuteAnimation(Lcom/sonyericsson/android/camera/NavigatorContents;)Landroid/animation/AnimatorSet;
    .locals 7

    .line 195
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mViewFinderCover:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, v2, v3

    const/high16 v5, 0x43480000    # 200.0f

    if-gez v4, :cond_0

    sub-float v4, v3, v2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    goto :goto_0

    :cond_0
    const/16 v4, 0xc8

    :goto_0
    int-to-float v4, v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 204
    invoke-direct {p0, p1, v4}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getModeIconAutoTransitionAnimation(Lcom/sonyericsson/android/camera/NavigatorContents;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mViewFinderCover:Landroid/view/View;

    sub-float v4, v3, v2

    mul-float/2addr v4, v5

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-direct {p0, p1, v4, v2, v3}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getLinearFadeInAnimator(Landroid/view/View;IFF)Landroid/animation/Animator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mPrimaryShortcutList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v5, 0x64

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 212
    invoke-direct {p0, v3, v5}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 217
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mFrontAngleSwitchButton:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 218
    invoke-direct {p0, p1, v5}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutLeft:Landroid/view/View;

    invoke-direct {p0, p1, v5}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutRight:Landroid/view/View;

    invoke-direct {p0, p1, v5}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mCaptureButton:Landroid/view/View;

    invoke-direct {p0, p1, v5}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSelectorShortcut:Landroid/view/View;

    invoke-direct {p0, p1, v5}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeShortcutButton:Landroid/view/View;

    invoke-direct {p0, p1, v5}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mGridLineView:Landroid/view/View;

    invoke-direct {p0, p1, v4, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getLinearFadeOutAnimator(Landroid/view/View;IF)Landroid/animation/Animator;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v0
.end method

.method getFinishAnimation(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Landroid/animation/AnimatorSet;
    .locals 5

    .line 287
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 288
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchTextView:Landroid/widget/TextView;

    .line 291
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 293
    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 297
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->exists(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 299
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mNavigator:Lcom/sonyericsson/android/camera/view/ApplicationNavigator;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->updateModeSwitchViews()V

    .line 300
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getModeSwitchEaseOutAnimation()Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mPrimaryShortcutList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0xc8

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 306
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 310
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mFrontAngleSwitchButton:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 311
    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutLeft:Landroid/view/View;

    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutRight:Landroid/view/View;

    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mCaptureButton:Landroid/view/View;

    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSelectorShortcut:Landroid/view/View;

    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeShortcutButton:Landroid/view/View;

    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mThumbnail:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->isScaleOut(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 323
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mThumbnail:Landroid/view/View;

    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mViewFinderCover:Landroid/view/View;

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    .line 327
    invoke-direct {p0, p1, v3, v2}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getLinearFadeOutAnimator(Landroid/view/View;IF)Landroid/animation/Animator;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mGridLineView:Landroid/view/View;

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v3, v2, v4}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getLinearFadeInAnimator(Landroid/view/View;IFF)Landroid/animation/Animator;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v0
.end method

.method getStartAnimation()Landroid/animation/AnimatorSet;
    .locals 5

    .line 163
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchTextView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->setupModeSwitchContainer()V

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mPrimaryShortcutList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0xc8

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 172
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mFrontAngleSwitchButton:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 177
    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mFrontAngleSwitchButton:Landroid/view/View;

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutLeft:Landroid/view/View;

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutRight:Landroid/view/View;

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mCaptureButton:Landroid/view/View;

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSelectorShortcut:Landroid/view/View;

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeShortcutButton:Landroid/view/View;

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mGridLineView:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v2, v4, v3}, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->getLinearFadeOutAnimator(Landroid/view/View;IF)Landroid/animation/Animator;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v0
.end method

.method resume()V
    .locals 4

    .line 93
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "resume"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mPrimaryShortcutList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 103
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 104
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 105
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutLeft:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutLeft:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutLeft:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutRight:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutRight:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mSecondaryShortcutRight:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mCaptureButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mCaptureButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mCaptureButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSelectorShortcut:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSelectorShortcut:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeSelectorShortcut:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mViewFinderCover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mGridLineView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mThumbnail:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mThumbnail:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mThumbnail:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeShortcutButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeShortcutButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mModeShortcutButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mFrontAngleSwitchButton:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 144
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mFrontAngleSwitchButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 146
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/ModeTransitionAnimation;->mFrontAngleSwitchButton:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_3
    return-void
.end method
