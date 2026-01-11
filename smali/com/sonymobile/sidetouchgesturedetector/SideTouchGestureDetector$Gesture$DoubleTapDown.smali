.class Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;
.super Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;
.source "SideTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapDown"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;


# direct methods
.method private constructor <init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)V
    .locals 1

    .line 733
    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;-><init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$1;)V
    .locals 0

    .line 733
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;-><init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)V

    return-void
.end method


# virtual methods
.method enter(Landroid/view/MotionEvent;)V
    .locals 3

    .line 737
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 738
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1802(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 739
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v0, v0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$2300(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    .line 741
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$2400(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v1, p0

    const/4 p0, 0x1

    .line 740
    invoke-static {v0, p0, v1, v2}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$2500(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;IJ)V

    :cond_0
    return-void
.end method

.method processMessage(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 775
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object p1, p1, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$1700(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1500(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;->onLongPress(ILandroid/view/MotionEvent;)V

    .line 776
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->longPressState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1300(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;Landroid/view/MotionEvent;)V

    :goto_0
    return-void
.end method

.method processMove(Landroid/view/MotionEvent;)V
    .locals 4

    .line 747
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 748
    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 749
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v3}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 750
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget-object v3, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v3}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    sub-float/2addr v1, v0

    float-to-int v0, v1

    mul-int/2addr v2, v2

    mul-int/2addr v0, v0

    add-int/2addr v2, v0

    .line 752
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v0, v0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$2600(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)I

    move-result v0

    if-le v2, v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$2700(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;I)V

    .line 755
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->scrollState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    invoke-static {p0, v0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1300(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method processUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 761
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 762
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v0, v0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$1700(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1500(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;->onUp(ILandroid/view/MotionEvent;)V

    .line 766
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$2700(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;I)V

    .line 767
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->initialState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    invoke-static {p0, v0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1300(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;Landroid/view/MotionEvent;)V

    return v1
.end method
