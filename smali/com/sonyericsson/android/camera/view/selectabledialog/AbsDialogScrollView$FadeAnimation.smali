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

    .line 319
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a000f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;->mDuration:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;)V

    return-void
.end method


# virtual methods
.method public close(IILandroid/animation/Animator$AnimatorListener;)V
    .locals 5

    .line 343
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v0, 0x2

    .line 344
    new-array v1, v0, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    .line 346
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getBackgroundLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    new-array v3, v0, [F

    fill-array-data v3, :array_0

    .line 345
    const-string v4, "alpha"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    .line 348
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getBackgroundLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    int-to-float p2, p2

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr p2, v4

    new-array v0, v0, [F

    const/4 v4, 0x0

    aput v4, v0, v3

    const/4 v3, 0x1

    aput p2, v0, v3

    .line 347
    const-string/jumbo p2, "translationY"

    invoke-static {v2, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, v1, v3

    .line 344
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 350
    iget p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;->mDuration:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 351
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->-$$Nest$fgetmInterporater(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p3, :cond_0

    .line 353
    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 355
    :cond_0
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public open(IILandroid/animation/Animator$AnimatorListener;)V
    .locals 5

    .line 326
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v0, 0x2

    .line 327
    new-array v1, v0, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    .line 329
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getBackgroundLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    new-array v3, v0, [F

    fill-array-data v3, :array_0

    .line 328
    const-string v4, "alpha"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    .line 331
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getBackgroundLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    int-to-float p2, p2

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr p2, v4

    new-array v0, v0, [F

    aput p2, v0, v3

    const/4 p2, 0x1

    const/4 v3, 0x0

    aput v3, v0, p2

    .line 330
    const-string/jumbo v3, "translationY"

    invoke-static {v2, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v1, p2

    .line 327
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 333
    iget p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;->mDuration:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 334
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->-$$Nest$fgetmInterporater(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p3, :cond_0

    .line 336
    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 338
    :cond_0
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
