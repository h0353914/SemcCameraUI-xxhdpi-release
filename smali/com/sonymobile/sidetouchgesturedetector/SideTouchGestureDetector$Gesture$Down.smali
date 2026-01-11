.class Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;
.super Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;
.source "SideTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Down"
.end annotation


# instance fields
.field private mDeferConfirmSingleTap:Z

.field final synthetic this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;


# direct methods
.method private constructor <init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)V
    .locals 1

    .line 524
    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;-><init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$1;)V
    .locals 0

    .line 524
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;-><init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)V

    return-void
.end method


# virtual methods
.method enter(Landroid/view/MotionEvent;)V
    .locals 4

    .line 530
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1802(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    const/4 v0, 0x0

    .line 531
    iput-boolean v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->mDeferConfirmSingleTap:Z

    .line 532
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v0, v0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$2000(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v1, v0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$2100(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x2

    invoke-static {v0, v3, v1, v2}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$2200(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;IJ)V

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v0, v0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$2300(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    .line 537
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$2400(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v1, p0

    const/4 p0, 0x1

    .line 536
    invoke-static {v0, p0, v1, v2}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$2500(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;IJ)V

    :cond_1
    return-void
.end method

.method processMessage(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 586
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object p1, p1, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$2000(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 587
    iput-boolean v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->mDeferConfirmSingleTap:Z

    goto :goto_0

    .line 582
    :cond_1
    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object p1, p1, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$1700(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1500(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;->onLongPress(ILandroid/view/MotionEvent;)V

    .line 583
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->longPressState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1300(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;Landroid/view/MotionEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method processMove(Landroid/view/MotionEvent;)V
    .locals 4

    .line 543
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 544
    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 545
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v3}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 546
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget-object v3, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v3}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    sub-float/2addr v1, v0

    float-to-int v0, v1

    mul-int/2addr v2, v2

    mul-int/2addr v0, v0

    add-int/2addr v2, v0

    .line 548
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v0, v0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$2600(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)I

    move-result v0

    if-le v2, v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$2700(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;I)V

    .line 551
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$2700(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;I)V

    .line 552
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->scrollState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    invoke-static {p0, v0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1300(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method processUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 558
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 559
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v0, v0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$1700(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1500(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;->onUp(ILandroid/view/MotionEvent;)V

    .line 563
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$2700(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;I)V

    .line 564
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v0, v0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$2000(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 565
    iget-boolean v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->mDeferConfirmSingleTap:Z

    if-nez v0, :cond_1

    .line 566
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->upState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    invoke-static {p0, v0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1300(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v0, v0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$2000(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;

    move-result-object v0

    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v2}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1500(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)I

    move-result v2

    invoke-interface {v0, v2, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(ILandroid/view/MotionEvent;)V

    .line 569
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$2700(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;I)V

    .line 570
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->initialState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    invoke-static {p0, v0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1300(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 573
    :cond_2
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->initialState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    invoke-static {p0, v0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1300(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;Landroid/view/MotionEvent;)V

    :goto_0
    return v1
.end method
