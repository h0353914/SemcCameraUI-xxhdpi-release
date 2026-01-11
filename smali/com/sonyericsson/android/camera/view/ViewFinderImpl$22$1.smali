.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$22$1;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl$22;->onAnimationFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$22;

.field final synthetic val$nextRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$22;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3708
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$22$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$22;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$22$1;->val$nextRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3711
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke current:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$22$1;->val$nextRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mFrom:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 3712
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$22$1;->val$nextRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 3713
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 3711
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3714
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$22$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$22;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$22;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$22$1;->val$nextRequest:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mrequestAnimation(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    return-void
.end method
