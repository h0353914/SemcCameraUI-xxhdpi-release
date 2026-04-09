.class public Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;
.super Ljava/lang/Object;
.source "HintTextViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$Background;,
        Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;,
        Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;,
        Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$BlockingFiloContentQueue;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HintTextViewController"


# instance fields
.field private mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

.field private mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/sonyericsson/android/camera/view/hint/HintTextContent;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

.field private mHintTextBackground:Landroid/view/ViewGroup;

.field private mHintTextContainer:Landroid/widget/FrameLayout;

.field private mHintTextFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

.field private mListener:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$BlockingFiloContentQueue;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$BlockingFiloContentQueue;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    .line 65
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$1;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 148
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mListener:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;

    .line 149
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    .line 151
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->initHintTextBackground(Landroid/view/ViewGroup;)V

    .line 152
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->initHintTextView(Landroid/view/ViewGroup;)V

    const-string p1, "alpha"

    const/4 p2, 0x2

    .line 154
    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 155
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    const/4 p3, 0x1

    new-array p3, p3, [Landroid/animation/PropertyValuesHolder;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-static {p2, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 156
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextFadeOutAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$2;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$2;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mListener:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancelFromContentStack(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextFadeOutAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method private cancelFromContentStack(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z
    .locals 5
    .param p1    # Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 488
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 489
    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel: content = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 493
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    .line 494
    new-array p0, v2, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel: content is not queued, content = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return v1

    .line 499
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 503
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 505
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->hideInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 509
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 510
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->isSameContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 511
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    .line 512
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_4

    .line 513
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->showInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    goto :goto_0

    .line 515
    :cond_4
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->hideInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    :cond_5
    :goto_0
    return v2
.end method

.method private cancelTimeoutCount()V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->cancelCount()V

    const/4 v0, 0x0

    .line 539
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    :cond_0
    return-void
.end method

.method private hideInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .locals 1
    .param p1    # Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_1

    .line 469
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "hideInternal: content is null"

    .line 470
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 475
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancelTimeoutCount()V

    .line 476
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->detach(Lcom/sonyericsson/android/camera/view/hint/HintTextView;)V

    .line 478
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->isToast()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 480
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    const-string v0, "hideInternal: remove onetime content"

    .line 481
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 483
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private initHintTextBackground(Landroid/view/ViewGroup;)V
    .locals 2

    .line 646
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 648
    new-instance v1, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$Background;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$Background;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextBackground:Landroid/view/ViewGroup;

    .line 649
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextBackground:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 650
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextBackground:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 651
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextBackground:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 652
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextBackground:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 653
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextBackground:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    return-void
.end method

.method private initHintTextView(Landroid/view/ViewGroup;)V
    .locals 3

    const v0, 0x7f09009e

    .line 657
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 658
    invoke-virtual {p1}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContext:Landroid/content/Context;

    .line 660
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextContainer:Landroid/widget/FrameLayout;

    .line 661
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne p1, v0, :cond_0

    .line 662
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContext:Landroid/content/Context;

    .line 664
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070110

    .line 663
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    .line 662
    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 667
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->inflate(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    .line 668
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextContainer:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private isSameContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z
    .locals 0
    .param p1    # Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 620
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    return-object p0

    .line 601
    :cond_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "referTop: queue is empty"

    .line 602
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private showInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .locals 4
    .param p1    # Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_1

    .line 438
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "showInternal: content is null"

    .line 439
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 444
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancelTimeoutCount()V

    .line 445
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->attach(Lcom/sonyericsson/android/camera/view/hint/HintTextView;)V

    .line 447
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTimedOutDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    .line 449
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getFadeDuration()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 451
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->startFadeOut(JILcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    goto :goto_0

    .line 453
    :cond_2
    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->startTimeoutCount(JLcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private startFadeOut(JILcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    if-nez v0, :cond_0

    .line 531
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    .line 533
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->startFadeOut(JILcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    return-void
.end method

.method private startTimeoutCount(JLcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    if-nez v0, :cond_0

    .line 523
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    .line 525
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHandler:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->startTimeoutCount(JLcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 278
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 279
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    .line 280
    new-array p0, v1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel: content is empty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    .line 286
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    .line 287
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v4

    :cond_3
    if-nez v0, :cond_5

    .line 296
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_4

    .line 297
    new-array p0, v1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel: content is not queued, tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return v2

    .line 301
    :cond_5
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancelFromContentStack(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z

    move-result p0

    return p0
.end method

.method public clearAll()V
    .locals 1

    .line 189
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancelTimeoutCount()V

    .line 192
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->hideInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 198
    :cond_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "clear: removed all entry"

    .line 199
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public clearToastContent()V
    .locals 2

    .line 210
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->isToast()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancelFromContentStack(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z

    :cond_0
    return-void
.end method

.method public hide()Z
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    if-eqz v0, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->hideInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/4 p0, 0x1

    return p0

    .line 372
    :cond_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "hide: hint text was already hidden"

    .line 373
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isHintTextDisplayed(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 415
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 421
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v2
.end method

.method public isNoTimeOutHinTextDisplayed()Z
    .locals 4

    .line 402
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTimedOutDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public post(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z
    .locals 6
    .param p1    # Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 230
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 231
    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "post: content = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    .line 237
    new-array p0, v2, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post: content has been queued, content = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return v1

    .line 242
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v0

    .line 244
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object p1

    .line 247
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->isSameContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 249
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_3

    .line 250
    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "post: top is changed, old = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", new = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 250
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 255
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    .line 256
    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gtz v1, :cond_5

    if-eqz v0, :cond_4

    .line 259
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->hideInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 261
    :cond_4
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->showInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    :cond_5
    return v2
.end method

.method public setUiOrientation(Landroid/graphics/Rect;Landroid/content/Context;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;I)V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    if-nez v0, :cond_0

    return-void

    .line 393
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setUiOrientation(Landroid/graphics/Rect;Landroid/content/Context;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;I)V

    return-void
.end method

.method public show(Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;)Z
    .locals 3
    .param p1    # Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    .line 333
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_1

    .line 334
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "show: hint text was already shown"

    .line 335
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 340
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->referTop()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 342
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gtz v1, :cond_3

    .line 343
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    .line 344
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_4

    .line 345
    :cond_2
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->showInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    goto :goto_0

    .line 348
    :cond_3
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->hideInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 351
    :cond_4
    :goto_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentDisplayThreshold:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/4 p0, 0x1

    return p0
.end method

.method public showAll()Z
    .locals 1

    .line 315
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->LOW:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->show(Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;)Z

    move-result p0

    return p0
.end method

.method public updateHintTextContainer(II)V
    .locals 5

    .line 674
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextContainer:Landroid/widget/FrameLayout;

    .line 675
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 676
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 677
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 678
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 679
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x10

    .line 680
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 683
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 684
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContext:Landroid/content/Context;

    .line 685
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f070110

    .line 684
    invoke-static {v1, v2, v4}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v3, v1

    :cond_0
    if-ne p1, p2, :cond_1

    .line 691
    div-int/lit8 p2, p2, 0x3

    add-int/2addr v3, p2

    .line 693
    :cond_1
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 695
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
