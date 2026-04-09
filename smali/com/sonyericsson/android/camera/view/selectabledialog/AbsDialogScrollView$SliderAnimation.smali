.class Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;
.super Ljava/lang/Object;
.source "AbsDialogScrollView.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$AnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliderAnimation"
.end annotation


# instance fields
.field private final mDuration:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;)V
    .locals 1

    .line 355
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    .line 358
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0010

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;->mDuration:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$1;)V
    .locals 0

    .line 355
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;)V

    return-void
.end method


# virtual methods
.method public close(IILandroid/animation/Animator$AnimatorListener;)V
    .locals 4

    .line 374
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    .line 375
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getBackgroundLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string v0, "translationY"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    int-to-float p2, p2

    const/4 v2, 0x1

    aput p2, v1, v2

    .line 374
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 377
    iget p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;->mDuration:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 378
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->access$200(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p3, :cond_0

    .line 381
    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 383
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public open(IILandroid/animation/Animator$AnimatorListener;)V
    .locals 3

    .line 362
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    .line 363
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getBackgroundLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string v0, "translationY"

    const/4 v1, 0x2

    new-array v1, v1, [F

    int-to-float p2, p2

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    const/4 v2, 0x0

    aput v2, v1, p2

    .line 362
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 364
    iget p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;->mDuration:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 365
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->access$200(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p3, :cond_0

    .line 367
    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 369
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
