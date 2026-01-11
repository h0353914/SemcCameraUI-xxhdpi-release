.class Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$2;
.super Ljava/lang/Object;
.source "ZoomDial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;)V
    .locals 0

    .line 1470
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$2;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1473
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$2;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$2;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmDialbarArea(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$2;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmWideTextLayout(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1476
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$2;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$mhandleWideButtonClick(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    :cond_1
    :goto_0
    return-void
.end method
