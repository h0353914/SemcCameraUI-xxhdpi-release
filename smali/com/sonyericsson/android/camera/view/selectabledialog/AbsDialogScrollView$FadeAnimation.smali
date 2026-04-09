.class Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;
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
    name = "FadeAnimation"
.end annotation


# instance fields
.field private final mDuration:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;)V
    .locals 1

    .line 315
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    .line 318
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0010

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;->mDuration:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$1;)V
    .locals 0

    .line 315
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;)V

    return-void
.end method


# virtual methods
.method public close(IILandroid/animation/Animator$AnimatorListener;)V
    .locals 6

    .line 339
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v0, 0x2

    .line 340
    new-array v1, v0, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    .line 342
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getBackgroundLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    const-string v3, "alpha"

    new-array v4, v0, [F

    fill-array-data v4, :array_0

    .line 341
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    .line 344
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getBackgroundLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    const-string v4, "translationY"

    new-array v0, v0, [F

    const/4 v5, 0x0

    aput v5, v0, v3

    int-to-float p2, p2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr p2, v3

    const/4 v3, 0x1

    aput p2, v0, v3

    .line 343
    invoke-static {v2, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, v1, v3

    .line 340
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 346
    iget p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;->mDuration:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 347
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->access$200(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p3, :cond_0

    .line 349
    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 351
    :cond_0
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public open(IILandroid/animation/Animator$AnimatorListener;)V
    .locals 6

    .line 322
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v0, 0x2

    .line 323
    new-array v1, v0, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    .line 325
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getBackgroundLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    const-string v3, "alpha"

    new-array v4, v0, [F

    fill-array-data v4, :array_0

    .line 324
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    .line 327
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getBackgroundLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    const-string v4, "translationY"

    new-array v0, v0, [F

    int-to-float p2, p2

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr p2, v5

    aput p2, v0, v3

    const/4 p2, 0x1

    const/4 v3, 0x0

    aput v3, v0, p2

    .line 326
    invoke-static {v2, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v1, p2

    .line 323
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 329
    iget p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;->mDuration:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 330
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->access$200(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p3, :cond_0

    .line 332
    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 334
    :cond_0
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
