.class Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionRewinding;
.super Lcom/sonyericsson/android/camera/controller/GestureShutter$State;
.source "GestureShutter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/GestureShutter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateRecognitionRewinding"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;)V
    .locals 2

    .line 621
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionRewinding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 622
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;ZZ)V

    return-void
.end method


# virtual methods
.method entry()V
    .locals 1

    .line 627
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->countUpHandSignLostNum()V

    .line 628
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionRewinding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$fgetmWindowHost(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;->getGestureShutterView()Lcom/sonyericsson/android/camera/view/GestureShutterView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/GestureShutterView;->startRewind()V

    return-void
.end method

.method handleDetectResult(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface;)V
    .locals 3

    .line 638
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionRewinding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$fgetmIsEnabled(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 642
    :cond_0
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface;->getStatus()Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;->PALM:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionRewinding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$fgetmHandSignsDetector(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionRewinding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface;->getArea()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionRewinding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$fgetmHandSignsDetector(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object v1

    .line 645
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;->getDetectWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionRewinding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$fgetmHandSignsDetector(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;->getDetectHeight()I

    move-result v2

    .line 644
    invoke-static {v0, p1, v1, v2}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$mtranslateFromDetectToPreview(Lcom/sonyericsson/android/camera/controller/GestureShutter;Landroid/graphics/Rect;II)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 647
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionRewinding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionProceeding;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionRewinding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionProceeding;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;Landroid/graphics/RectF;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$mchangeState(Lcom/sonyericsson/android/camera/controller/GestureShutter;Lcom/sonyericsson/android/camera/controller/GestureShutter$State;)V

    :cond_1
    return-void
.end method

.method handleRewindFinished()V
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionRewinding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionRewinding;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$mchangeState(Lcom/sonyericsson/android/camera/controller/GestureShutter;Lcom/sonyericsson/android/camera/controller/GestureShutter$State;)V

    return-void
.end method
