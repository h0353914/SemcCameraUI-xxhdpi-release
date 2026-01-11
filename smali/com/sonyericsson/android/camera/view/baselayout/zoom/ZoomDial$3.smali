.class Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$3;
.super Ljava/lang/Object;
.source "ZoomDial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$3;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$3;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmIsZooming(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$3;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmIsRecording(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 228
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$3;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$mhideWithAnimation(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V

    return-void
.end method
