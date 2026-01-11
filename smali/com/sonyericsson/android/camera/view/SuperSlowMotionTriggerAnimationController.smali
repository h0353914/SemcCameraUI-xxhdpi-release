.class public Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;
.super Ljava/lang/Object;
.source "SuperSlowMotionTriggerAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$OnAnimationEndListener;
    }
.end annotation


# instance fields
.field private mAlphaAnimation:Landroid/view/animation/Animation;

.field private mBackground:Landroid/view/View;

.field private mLineLandscape:Landroid/view/View;

.field private mLinePortrait:Landroid/view/View;

.field private mListener:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$OnAnimationEndListener;

.field private mPreviewContainer:Landroid/widget/FrameLayout;

.field private mRoot:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBackground(Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mBackground:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLineLandscape(Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mLineLandscape:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLinePortrait(Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mLinePortrait:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;)Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$OnAnimationEndListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mListener:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$OnAnimationEndListener;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createLineAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;
    .locals 20

    .line 129
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v0, v1, :cond_1

    if-nez p2, :cond_0

    .line 132
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/16 v18, 0x2

    const/high16 v19, 0x3f800000    # 1.0f

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x2

    const/16 v17, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 146
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    goto :goto_0

    .line 152
    :cond_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/high16 v16, 0x3f800000    # 1.0f

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    :goto_0
    const-wide/16 v1, 0x12c

    .line 160
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x0

    .line 161
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const v1, 0x7f0b0001

    move-object/from16 v2, p1

    .line 162
    invoke-virtual {v0, v2, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    return-object v0
.end method


# virtual methods
.method public prepareViews()V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mRoot:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mPreviewContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0c00b3

    .line 67
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mRoot:Landroid/view/View;

    const v2, 0x7f090060

    .line 68
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mBackground:Landroid/view/View;

    .line 69
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mRoot:Landroid/view/View;

    const v2, 0x7f09010c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mLineLandscape:Landroid/view/View;

    .line 70
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mRoot:Landroid/view/View;

    const v2, 0x7f09010d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mLinePortrait:Landroid/view/View;

    const v1, 0x7f010024

    .line 72
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mAlphaAnimation:Landroid/view/animation/Animation;

    .line 74
    new-instance v1, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$1;-><init>(Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setup(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mPreviewContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method public start(Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$OnAnimationEndListener;Z)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mRoot:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mBackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mListener:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$OnAnimationEndListener;

    if-eqz p2, :cond_1

    .line 110
    sget-object p1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->LANDSCAPE:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    goto :goto_0

    .line 111
    :cond_1
    sget-object p1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    .line 112
    :goto_0
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    const/16 v2, 0x8

    if-ne v0, p1, :cond_2

    .line 114
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mLineLandscape:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mLinePortrait:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->createLineAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object p1

    .line 117
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mLineLandscape:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 119
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mLineLandscape:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mLinePortrait:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->createLineAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object p1

    .line 122
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mLinePortrait:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 124
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mBackground:Landroid/view/View;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
