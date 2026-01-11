.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$10;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 2673
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$10;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 2676
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$10;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmZoomUiProxy(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->-$$Nest$fgetmZoomDial(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$10;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmZoomUiProxy(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->-$$Nest$fgetmZoomDial(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getCurrentStep()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->zoom(I)I

    .line 2677
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$10;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmZoomUiProxy(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->showFullZoomUi()V

    const/4 p0, 0x1

    return p0
.end method
