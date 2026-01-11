.class Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$1;
.super Ljava/lang/Object;
.source "ZoomLineView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 102
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->-$$Nest$fgetmIsGray(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 105
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 106
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->onClickedRect(FF)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_1

    .line 109
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->-$$Nest$fgetmCurrentZoomValue(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;)F

    move-result p2

    div-float p2, p1, p2

    .line 110
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;

    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getZoomFrameParameter(F)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->-$$Nest$fputzoomAssistDetail(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->-$$Nest$fgetzoomAssistDetail(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setChangedZoomAssistDetail(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->TAP_ZOOM_FRAME:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setZoomTrigger(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p2

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->-$$Nest$fgetzoomAssistDetail(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setZoomAssistDetail(ZLjava/lang/String;)V

    .line 114
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->-$$Nest$fgetupdateListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$UpdateListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$UpdateListener;->update(F)V

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
