.class Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5$1;
.super Ljava/lang/Object;
.source "ZoomDial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;

.field final synthetic val$moveStep:F


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 403
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;

    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5$1;->val$moveStep:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 406
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->SLIDER_BAR:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setZoomTrigger(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomUiEventListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5$1;->val$moveStep:F

    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->-$$Nest$mcalcMovedRatio(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;F)F

    move-result p0

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomChanged(F)V

    return-void
.end method
