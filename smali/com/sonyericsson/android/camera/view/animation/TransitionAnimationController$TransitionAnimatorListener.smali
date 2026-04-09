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

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$1;)V
    .locals 0

    .line 258
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;-><init>(Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .line 312
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransitionAnimatorListener.onAnimationCancel source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mType:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mDegree:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mFrom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mFrom:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mTarget:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 285
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransitionAnimatorListener.onAnimationEnd source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mType:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mDegree:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mFrom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mFrom:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mTarget:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 290
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mCallback:Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;

    if-eqz p1, :cond_1

    .line 291
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mCallback:Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;->onAnimationFinished()V

    .line 293
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->this$0:Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->access$100(Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 300
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->this$0:Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->access$100(Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;)Ljava/util/concurrent/BlockingQueue;

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

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->access$202(Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    goto :goto_0

    .line 306
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->this$0:Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->access$100(Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;)Ljava/util/concurrent/BlockingQueue;

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
    .locals 3

    .line 271
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransitionAnimatorListener.onAnimationStart source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mType:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mDegree:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mFrom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mFrom:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mTarget:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimatorListener;->mRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method
