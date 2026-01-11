.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$23;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->requestMostRecentlyUsedAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z
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

    .line 3735
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$23;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .locals 1

    .line 3739
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$23;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$misZoomDialAvailable(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3740
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$23;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmZoomUiProxy(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->setDialClickable(Z)V

    :cond_0
    return-void
.end method
