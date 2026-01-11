.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 3788
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 3791
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoke AfterSwitchAnimationTask"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3792
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmPreviewCover(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3793
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmAnimationController(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->SWITCH_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v3, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->FINISH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 3797
    invoke-static {v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetCapturingMode(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetCapturingMode(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    new-instance v2, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26$1;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;)V

    .line 3793
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController;->requestAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;)Z

    return-void
.end method
