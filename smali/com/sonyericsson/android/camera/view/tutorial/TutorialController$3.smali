.class Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$3;
.super Ljava/lang/Object;
.source "TutorialController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getFadeOutAnimator(J)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$3;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 687
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$3;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->-$$Nest$mrelease(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V

    .line 688
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$3;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->-$$Nest$mhide(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V

    .line 690
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$3;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->-$$Nest$fgetmStateListener(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialStateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 691
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$3;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->-$$Nest$fgetmStateListener(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialStateListener;->onClosed()V

    .line 695
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$3;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->-$$Nest$fgetmContainer(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;->setAlpha(F)V

    .line 696
    const-string p0, "close() : Tutorial is closed."

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->-$$Nest$smtrace(Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
