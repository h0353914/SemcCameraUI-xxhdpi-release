.class Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;
.super Lcom/sonyericsson/android/camera/controller/GestureShutter$State;
.source "GestureShutter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/GestureShutter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateStandBy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;)V
    .locals 2

    .line 531
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 532
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;ZZ)V

    return-void
.end method


# virtual methods
.method entry()V
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$fgetmWindowHost(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;->hideGestureShutterView()V

    .line 538
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$fgetmHandSignsDetector(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$mcreateDetector(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$fputmHandSignsDetector(Lcom/sonyericsson/android/camera/controller/GestureShutter;Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;)V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$fgetmHandSignsDetector(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 543
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 544
    const-string v0, "Detection not started, start it now"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$fgetmHandSignsDetector(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$fgetmImageRetriever(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/device/ImageRetriever;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;->startDetect(Lcom/sonyericsson/android/camera/device/ImageRetriever;)V

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$fgetmLayoutOrientation(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-ne v0, v1, :cond_3

    .line 551
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$fgetmControllerHost(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;->getLayoutOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$fputmLayoutOrientation(Lcom/sonyericsson/android/camera/controller/GestureShutter;Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V

    .line 553
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$fgetmHandSignsDetector(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$fgetmLayoutOrientation(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;->setLayoutOrientation(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V

    return-void
.end method

.method handleDetectResult(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface;)V
    .locals 3

    .line 558
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface;->getStatus()Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;->PALM:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$fgetmHandSignsDetector(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$fgetmIsEnabled(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface;->getArea()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$fgetmHandSignsDetector(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object v1

    .line 561
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;->getDetectWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$fgetmHandSignsDetector(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;->getDetectHeight()I

    move-result v2

    .line 560
    invoke-static {v0, p1, v1, v2}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$mtranslateFromDetectToPreview(Lcom/sonyericsson/android/camera/controller/GestureShutter;Landroid/graphics/Rect;II)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 563
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionProceeding;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionProceeding;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;Landroid/graphics/RectF;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$mchangeState(Lcom/sonyericsson/android/camera/controller/GestureShutter;Lcom/sonyericsson/android/camera/controller/GestureShutter$State;)V

    :cond_0
    return-void
.end method
