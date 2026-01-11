.class Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon$1;
.super Ljava/lang/Object;
.source "SideTouchUiIcon.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->detach(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;

.field final synthetic val$from:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 539
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon$1;->this$0:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon$1;->val$from:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHiddenZoom()V
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon$1;->this$0:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon$1;->val$from:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->access$001(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onHiddenZoomBar()V
    .locals 0

    return-void
.end method

.method public onShowSimpleView()V
    .locals 0

    return-void
.end method

.method public onShowZoom(Z)V
    .locals 0

    return-void
.end method

.method public onShowZoomBar()V
    .locals 0

    return-void
.end method

.method public onValueClick(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
