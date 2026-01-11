.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26$1;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;)V
    .locals 0

    .line 3798
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .locals 2

    .line 3801
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mresetAnimationProperty(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    .line 3802
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$msetIsSwitchingAnimationProgress(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    .line 3803
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mshouldShowFrontAngleSwitchButton(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$msetFrontAngleSwitchButtonVisibility(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    .line 3804
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mcanShowZoomSwitchButton(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result p0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$msetZoomSwitchButtonVisibility(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    return-void
.end method
