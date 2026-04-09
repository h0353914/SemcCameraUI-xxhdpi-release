.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$18;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->requestSwitchAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

.field final synthetic val$request:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)V
    .locals 0

    .line 3349
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$18;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$18;->val$request:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .locals 5

    .line 3352
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$18;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_FINISH_TRANSITION_OPERATION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$18;->val$request:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 3355
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$18;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$4800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$18;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3356
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$18;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showSurface()V

    return-void
.end method
