.class Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;
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

    .line 194
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 197
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 198
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mDialbarAreaHideEvent#run mIsDrugging:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmIsZooming(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HideStart:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmDialbarHideStart(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmIsZooming(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 204
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmDialbarHideStart(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmDelayZoomDialHideMillis(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$mhideZoomBarArea(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$mcircleSwitch(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->zoomEnd()V

    :cond_1
    return-void
.end method
