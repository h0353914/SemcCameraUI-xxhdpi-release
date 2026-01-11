.class Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;
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
    name = "DoubleDown"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)V

    return-void
.end method


# virtual methods
.method public handleMotionEvent(Landroid/view/MotionEvent;)V
    .locals 7

    .line 456
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    const/4 v4, 0x0

    if-eq v0, v1, :cond_5

    const/4 v5, 0x5

    if-eq v0, v5, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    return-void

    .line 479
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_1

    return-void

    .line 482
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-nez v0, :cond_2

    move v2, v3

    .line 489
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$fgetmClientListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    move-result-object v1

    new-instance v3, Landroid/graphics/Point;

    .line 490
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {v3, v5, v0}, Landroid/graphics/Point;-><init>(II)V

    new-instance v0, Landroid/graphics/Point;

    .line 491
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v0, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 489
    invoke-interface {v1, v3, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onSingleReleasedInDouble(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 494
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$mgetSingleTouchMoveAndStopDetector(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    move-result-object v0

    .line 495
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 494
    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->updateCurrentAndLastPosition(II)V

    .line 497
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {v0, p0, v4}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove-IA;)V

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$mchangeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

    return-void

    .line 473
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-lt p1, v1, :cond_4

    .line 474
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$OverTriple;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {v0, p0, v4}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$OverTriple;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$OverTriple-IA;)V

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$mchangeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

    :cond_4
    return-void

    .line 468
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$fgetmClientListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onDoubleCanceled()V

    .line 469
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {v0, p0, v4}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle-IA;)V

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$mchangeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

    return-void

    .line 458
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-eq v0, v1, :cond_7

    return-void

    .line 461
    :cond_7
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 462
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v1, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 463
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$fgetmClientListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onDoubleMoved(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 464
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    new-instance v2, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleMove;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {v2, p0, v0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleMove;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-static {p1, v2}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$mchangeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

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

    return-void
.end method

.method public handleTouchScaleEvent(FFF)V
    .locals 0

    return-void
.end method
