.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->requestModeSelectorAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3594
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;->val$request:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .locals 5

    .line 3597
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;->val$request:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mFrom:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;->val$request:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mneedChangeCameraId(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3598
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setIsCameraSwitching(Z)V

    .line 3599
    new-instance v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->FINISH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;->val$request:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mFrom:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;->val$request:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v4, v4, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 3604
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19$1;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19$1;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3613
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;->val$request:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mFrom:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3614
    new-instance v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->FINISH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;->val$request:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mFrom:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;->val$request:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v4, v4, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 3619
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19$2;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19$2;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3629
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_FINISH_TRANSITION_OPERATION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;->val$request:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method
