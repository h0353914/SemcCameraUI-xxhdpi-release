.class Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;
.super Ljava/lang/Object;
.source "FacingTransitionAnimation.java"


# static fields
.field private static final ANIMATION_ALPHA:Ljava/lang/String; = "alpha"

.field private static final ANIMATION_HOLE_RADIUS:Ljava/lang/String; = "holeRadius"

.field private static final ANIMATION_RADIUS:Ljava/lang/String; = "radius"

.field private static final ANIMATION_SCALE_X:Ljava/lang/String; = "scaleX"

.field private static final ANIMATION_SCALE_Y:Ljava/lang/String; = "scaleY"

.field private static final EASE_OUT_IN:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String; = "FacingTransitionAnimation"


# instance fields
.field private final mPrimaryShortcutList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

.field private final mViewFinderCover:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 45
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f251eb8    # 0.645f

    const v2, 0x3d3851ec    # 0.045f

    const v3, 0x3eb5c28f    # 0.355f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->EASE_OUT_IN:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;Landroid/view/View;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    .line 58
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->mViewFinderCover:Landroid/view/View;

    .line 59
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->mPrimaryShortcutList:Ljava/util/List;

    return-void
.end method

.method private getAfterSwitchAnimator(Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;I)Landroid/animation/ObjectAnimator;
    .locals 5

    .line 144
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->getMaxRadius()F

    move-result p0

    .line 146
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f0ccccd    # 0.55f

    const v2, 0x3d6147ae    # 0.055f

    const v3, 0x3f2ccccd    # 0.675f

    const v4, 0x3e428f5c    # 0.19f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 147
    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->setAlpha(F)V

    const-string v1, "holeRadius"

    const/4 v2, 0x2

    .line 149
    new-array v2, v2, [F

    const/high16 v3, 0x41200000    # 10.0f

    div-float v3, p0, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput p0, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    .line 152
    new-array v1, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object p0, v1, v4

    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p2

    .line 153
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 154
    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private getDraggingCancelAnimator(Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;I)Landroid/animation/ObjectAnimator;
    .locals 6

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->getRadius()F

    move-result v0

    .line 160
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->getDraggingStartRadius()F

    move-result p0

    .line 162
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ec7ae14    # 0.39f

    const v4, 0x3f133333    # 0.575f

    const v5, 0x3f10a3d7    # 0.565f

    invoke-direct {v1, v3, v4, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 163
    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->setAlpha(F)V

    const-string v2, "radius"

    const/4 v3, 0x2

    .line 165
    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput p0, v3, v0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    .line 168
    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object p0, v0, v4

    invoke-static {p1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p2

    .line 169
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 170
    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .locals 6

    .line 197
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "getEaseInScaleAnimator"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const-string p0, "alpha"

    const/4 v0, 0x1

    .line 198
    new-array v1, v0, [F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {p0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    const-string v1, "scaleX"

    const/4 v2, 0x2

    .line 199
    new-array v4, v2, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string v4, "scaleY"

    .line 200
    new-array v5, v2, [F

    fill-array-data v5, :array_1

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const/4 v5, 0x3

    .line 201
    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object p0, v5, v3

    aput-object v1, v5, v0

    aput-object v4, v5, v2

    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p2

    .line 203
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 204
    sget-object p1, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->EASE_OUT_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0

    nop

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

.method private getEaseOutAnimator(Landroid/view/View;IF)Landroid/animation/ObjectAnimator;
    .locals 4

    .line 175
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ec7ae14    # 0.39f

    const v1, 0x3f133333    # 0.575f

    const v2, 0x3f10a3d7    # 0.565f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-string v0, "alpha"

    const/4 v1, 0x2

    .line 177
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 p3, 0x1

    const/4 v3, 0x0

    aput v3, v1, p3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 179
    new-array p3, p3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, p3, v2

    invoke-static {p1, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    int-to-long p2, p2

    .line 180
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 181
    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .locals 6

    .line 216
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "getEaseOutScaleAnimator"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const-string p0, "alpha"

    const/4 v0, 0x1

    .line 217
    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {p0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    const-string v1, "scaleX"

    .line 218
    new-array v4, v0, [F

    aput v2, v4, v3

    invoke-static {v1, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string v4, "scaleY"

    .line 219
    new-array v5, v0, [F

    aput v2, v5, v3

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v4, 0x3

    .line 220
    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object p0, v4, v3

    aput-object v1, v4, v0

    const/4 p0, 0x2

    aput-object v2, v4, p0

    invoke-static {p1, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p2

    .line 222
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 223
    sget-object p1, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->EASE_OUT_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private getSwipeSwitchAnimator(Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;I)Landroid/animation/ObjectAnimator;
    .locals 6

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->getMaxRadius()F

    move-result v0

    .line 128
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->getRadius()F

    move-result p0

    .line 130
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ec7ae14    # 0.39f

    const v4, 0x3f133333    # 0.575f

    const v5, 0x3f10a3d7    # 0.565f

    invoke-direct {v1, v3, v4, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 131
    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->setAlpha(F)V

    const-string v2, "radius"

    const/4 v3, 0x2

    .line 133
    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p0, v3, v4

    const/4 p0, 0x1

    aput v0, v3, p0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 136
    new-array p0, p0, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, p0, v4

    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p2

    .line 138
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 139
    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method


# virtual methods
.method getAfterSwitchAnimation()Landroid/animation/AnimatorSet;
    .locals 5

    .line 110
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "getAfterSwitchAnimator"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 111
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    const/16 v3, 0xc8

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->getAfterSwitchAnimator(Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->mPrimaryShortcutList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 119
    invoke-direct {p0, v4, v3}, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->getEaseInScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v0
.end method

.method getDraggingCancelAnimation()Landroid/animation/AnimatorSet;
    .locals 5

    .line 96
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "getDraggingCancelAnimation"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 97
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    const/16 v3, 0xc8

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->getDraggingCancelAnimator(Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->mViewFinderCover:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    .line 103
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->mViewFinderCover:Landroid/view/View;

    invoke-direct {p0, v4, v3, v2}, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->getEaseOutAnimator(Landroid/view/View;IF)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v0
.end method

.method getSwipeSwitchAnimation()Landroid/animation/AnimatorSet;
    .locals 5

    .line 78
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "getSwipeSwitchAnimation"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 79
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    const/16 v3, 0xc8

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->getSwipeSwitchAnimator(Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->mPrimaryShortcutList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 87
    invoke-direct {p0, v4, v3}, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->getEaseOutScaleAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v0
.end method

.method getSwitchAnimationView()Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    return-object p0
.end method

.method resume()V
    .locals 2

    .line 63
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "resume"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->setAlpha(F)V

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->setRadius(F)V

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->setHoleRadius(F)V

    .line 70
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/FacingTransitionAnimation;->mPrimaryShortcutList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_1
    return-void
.end method
