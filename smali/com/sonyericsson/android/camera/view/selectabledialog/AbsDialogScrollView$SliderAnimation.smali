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

    .line 359
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a000f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;->mDuration:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;)V

    return-void
.end method


# virtual methods
.method public close(IILandroid/animation/Animator$AnimatorListener;)V
    .locals 3

    .line 378
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    .line 379
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getBackgroundLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    int-to-float p2, p2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 378
    const-string/jumbo p2, "translationY"

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 381
    iget p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;->mDuration:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 382
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->-$$Nest$fgetmInterporater(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p3, :cond_0

    .line 385
    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 387
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public open(IILandroid/animation/Animator$AnimatorListener;)V
    .locals 2

    .line 366
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    .line 367
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getBackgroundLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    int-to-float p2, p2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x0

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 366
    const-string/jumbo p2, "translationY"

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 368
    iget p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;->mDuration:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 369
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->-$$Nest$fgetmInterporater(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p3, :cond_0

    .line 371
    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 373
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
