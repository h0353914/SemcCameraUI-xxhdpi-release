.class Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;
.super Ljava/lang/Object;
.source "TransitionAnimationController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransitionAnimatorListener"
.end annotation


# instance fields
.field private final mCallback:Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;

.field private final mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->this$0:Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    .line 266
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mCallback:Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;-><init>(Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 312
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "TransitionAnimatorListener.onAnimationCancel source:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mType:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", type:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mDegree:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mFrom:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mFrom:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mTarget:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 285
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "TransitionAnimatorListener.onAnimationEnd source:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mType:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", type:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mDegree:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mFrom:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mFrom:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mTarget:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 290
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mCallback:Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;

    if-eqz p1, :cond_1

    .line 291
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;->onAnimationFinished()V

    .line 293
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->this$0:Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->-$$Nest$fgetmQueue(Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 300
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->this$0:Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->-$$Nest$fgetmQueue(Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 301
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mDegree:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    sget-object v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->FINISH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mDegree:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    sget-object v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->CANCEL:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    if-ne p1, v0, :cond_4

    .line 303
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->this$0:Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->-$$Nest$fputmLastRequest(Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)V

    goto :goto_0

    .line 306
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->this$0:Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->-$$Nest$fgetmQueue(Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 271
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "TransitionAnimatorListener.onAnimationStart source:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mType:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", type:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mDegree:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mFrom:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mFrom:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mTarget:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method
