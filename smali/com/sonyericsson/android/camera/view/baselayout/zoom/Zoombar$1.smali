.class Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$1;
.super Ljava/lang/Object;
.source "Zoombar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->-$$Nest$fgetmZoomDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->-$$Nest$fgetmZoomDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;->onHiddenZoom()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 113
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->-$$Nest$fgetmZoomDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 114
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->-$$Nest$fgetmZoomDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;->onHiddenZoom()V

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
