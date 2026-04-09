.class Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$1;
.super Ljava/lang/Object;
.source "Zoombar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 90
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;)Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$ZoombarDisplayChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 91
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;)Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$ZoombarDisplayChangedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$ZoombarDisplayChangedListener;->onZoombarHidden()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;)Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$ZoombarDisplayChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 98
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;)Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$ZoombarDisplayChangedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$ZoombarDisplayChangedListener;->onZoombarHidden()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
