.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19$1;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;)V
    .locals 0

    .line 3380
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .locals 1

    .line 3383
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$4900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    .line 3384
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$19;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$4300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    return-void
.end method
