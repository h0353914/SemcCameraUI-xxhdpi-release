.class Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleMove;
.super Ljava/lang/Object;
.source "TouchActionTranslator.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleMove"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$fgetmDoubleTouchScaleAndRotateDetector(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    move-result-object p0

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, p2}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, p3}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->startScaleAndRotateDetection(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method


# virtual methods
.method public handleMotionEvent(Landroid/view/MotionEvent;)V
    .locals 7

    .line 536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    const/4 v4, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    return-void

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$fgetmDoubleTouchScaleAndRotateDetector(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->stopScaleAndRotateDetection()V

    .line 566
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 573
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$fgetmClientListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    move-result-object v1

    new-instance v3, Landroid/graphics/Point;

    .line 574
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {v3, v5, v0}, Landroid/graphics/Point;-><init>(II)V

    new-instance v0, Landroid/graphics/Point;

    .line 575
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v0, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 573
    invoke-interface {v1, v3, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onSingleReleasedInDouble(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 578
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$mgetSingleTouchMoveAndStopDetector(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    move-result-object v0

    .line 579
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 578
    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->updateCurrentAndLastPosition(II)V

    .line 581
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {v0, p0, v4}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove-IA;)V

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$mchangeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

    return-void

    .line 558
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$fgetmDoubleTouchScaleAndRotateDetector(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->stopScaleAndRotateDetection()V

    .line 559
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$OverTriple;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {v0, p0, v4}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$OverTriple;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$OverTriple-IA;)V

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$mchangeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

    return-void

    .line 552
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$fgetmClientListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onDoubleCanceled()V

    .line 553
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {v0, p0, v4}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle-IA;)V

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$mchangeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

    return-void

    .line 538
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-eq v0, v1, :cond_5

    return-void

    .line 542
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$fgetmDoubleTouchScaleAndRotateDetector(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    .line 543
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    .line 544
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 542
    invoke-virtual {v0, v1, v4}, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->updateCurrentPosition(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 546
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$fgetmClientListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    move-result-object p0

    new-instance v0, Landroid/graphics/Point;

    .line 547
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    .line 548
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v1, v3, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 546
    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onDoubleMoved(Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-void
.end method

.method public handleSingleTouchMoveEvent(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    return-void
.end method

.method public handleSingleTouchStopEvent(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    return-void
.end method

.method public handleTouchRotateEvent(FF)V
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$fgetmClientListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onDoubleRotated(FF)V

    return-void
.end method

.method public handleTouchScaleEvent(FFF)V
    .locals 0

    .line 601
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$fgetmClientListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onDoubleScaled(FFF)V

    return-void
.end method
