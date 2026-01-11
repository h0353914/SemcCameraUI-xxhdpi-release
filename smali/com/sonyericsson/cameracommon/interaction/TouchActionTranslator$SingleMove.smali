.class Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;
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
    name = "SingleMove"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)V

    return-void
.end method


# virtual methods
.method public handleMotionEvent(Landroid/view/MotionEvent;)V
    .locals 6

    .line 352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v4, 0x5

    if-eq v0, v4, :cond_0

    return-void

    .line 365
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_1

    return-void

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$fgetmClientListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    move-result-object v0

    new-instance v4, Landroid/graphics/Point;

    .line 369
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v4, v5, v2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    .line 370
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v2, v5, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 368
    invoke-interface {v0, v4, v2}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onDoubleTouched(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 371
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown-IA;)V

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$mchangeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

    return-void

    .line 360
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$fgetmClientListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onSingleCanceled()V

    .line 361
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle-IA;)V

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$mchangeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

    return-void

    .line 354
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$fgetmClientListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    move-result-object v0

    new-instance v3, Landroid/graphics/Point;

    .line 355
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v3, v4, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 354
    invoke-interface {v0, v3}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onSingleReleased(Landroid/graphics/Point;)V

    .line 356
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle-IA;)V

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$mchangeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

    return-void
.end method

.method public handleSingleTouchMoveEvent(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$fgetmClientListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onSingleMoved(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-void
.end method

.method public handleSingleTouchStopEvent(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$fgetmClientListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onSingleStopped(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 386
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    new-instance p2, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleStop;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleStop;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleStop-IA;)V

    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$mchangeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

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
