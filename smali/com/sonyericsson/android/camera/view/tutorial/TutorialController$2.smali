.class Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$2;
.super Ljava/lang/Object;
.source "TutorialController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getSlideInAnimator(J)Landroid/animation/ObjectAnimator;
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

    .line 635
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$2;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

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

    .line 646
    const-string p1, "open()  : Tutorial is opened."

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->-$$Nest$smtrace(Ljava/lang/String;)V

    .line 649
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$2;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->-$$Nest$mupdateUiOrientation(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 638
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$2;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->-$$Nest$fgetmContainer(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 639
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$2;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->-$$Nest$fgetmContainer(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;->setVisibility(I)V

    .line 641
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$2;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->-$$Nest$msetNavigationBarThemeLight(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Z)V

    return-void
.end method
