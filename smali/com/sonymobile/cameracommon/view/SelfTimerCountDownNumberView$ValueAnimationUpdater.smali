.class Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;
.super Ljava/lang/Object;
.source "SelfTimerCountDownNumberView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueAnimationUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;)V
    .locals 0

    .line 228
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 231
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-static {p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->access$200(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-static {p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->access$200(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 232
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-static {p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->access$200(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 233
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageAlpha(I)V

    .line 234
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->invalidate()V

    :cond_0
    return-void
.end method
