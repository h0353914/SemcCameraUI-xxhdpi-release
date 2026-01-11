.class Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$1;
.super Ljava/lang/Object;
.source "SuperSlowMotionTriggerAnimationController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->prepareViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$1;->this$0:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 83
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$1;->this$0:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->-$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;)Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$OnAnimationEndListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$1;->this$0:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->-$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;)Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$OnAnimationEndListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$OnAnimationEndListener;->onAnimationEnd()V

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$1;->this$0:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->-$$Nest$fgetmBackground(Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$1;->this$0:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->-$$Nest$fgetmLineLandscape(Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$1;->this$0:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->-$$Nest$fgetmLinePortrait(Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
