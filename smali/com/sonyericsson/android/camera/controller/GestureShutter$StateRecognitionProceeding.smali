.class Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionProceeding;
.super Lcom/sonyericsson/android/camera/controller/GestureShutter$State;
.source "GestureShutter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/GestureShutter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateRecognitionProceeding"
.end annotation


# instance fields
.field final mInitialFrame:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;Landroid/graphics/RectF;)V
    .locals 2

    .line 552
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionProceeding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 553
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;ZZ)V

    .line 554
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionProceeding;->mInitialFrame:Landroid/graphics/RectF;

    .line 555
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionProceeding;->mInitialFrame:Landroid/graphics/RectF;

    invoke-virtual {p0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method


# virtual methods
.method entry()V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionProceeding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$500(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;->showGestureShutterView()V

    .line 561
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionProceeding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$500(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;->getGestureShutterView()Lcom/sonyericsson/android/camera/view/GestureShutterView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionProceeding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$1400(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationStatusListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/GestureShutterView;->setListener(Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationStatusListener;)V

    .line 562
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionProceeding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$500(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;->getGestureShutterView()Lcom/sonyericsson/android/camera/view/GestureShutterView;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionProceeding;->mInitialFrame:Landroid/graphics/RectF;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/GestureShutterView;->startProceed(Landroid/graphics/RectF;)V

    return-void
.end method

.method handleDetectResult(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface;)V
    .locals 3

    .line 572
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionProceeding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$1000(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 576
    :cond_0
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface;->getStatus()Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;->PALM:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionProceeding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    .line 577
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$200(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionProceeding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface;->getArea()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionProceeding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    .line 579
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$200(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;->getDetectWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionProceeding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$200(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;->getDetectHeight()I

    move-result v2

    .line 578
    invoke-static {v0, p1, v1, v2}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$1300(Lcom/sonyericsson/android/camera/controller/GestureShutter;Landroid/graphics/Rect;II)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 581
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionProceeding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$500(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;->getGestureShutterView()Lcom/sonyericsson/android/camera/view/GestureShutterView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/GestureShutterView;->updateFrame(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 584
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionProceeding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionRewinding;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionProceeding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionRewinding;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;)V

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$400(Lcom/sonyericsson/android/camera/controller/GestureShutter;Lcom/sonyericsson/android/camera/controller/GestureShutter$State;)V

    :cond_2
    :goto_0
    return-void
.end method

.method handleProceedFinished()V
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionProceeding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateConfirming;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionProceeding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateConfirming;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$400(Lcom/sonyericsson/android/camera/controller/GestureShutter;Lcom/sonyericsson/android/camera/controller/GestureShutter$State;)V

    return-void
.end method
