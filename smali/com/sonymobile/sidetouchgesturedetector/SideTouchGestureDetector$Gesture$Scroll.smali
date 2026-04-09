.class Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;
.super Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;
.source "SideTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scroll"
.end annotation


# instance fields
.field private mLastX:F

.field private mLastY:F

.field final synthetic this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;


# direct methods
.method private constructor <init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)V
    .locals 1

    .line 659
    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;-><init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$1;)V
    .locals 0

    .line 659
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;-><init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)V

    return-void
.end method


# virtual methods
.method enter(Landroid/view/MotionEvent;)V
    .locals 9

    .line 665
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 666
    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 667
    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v2}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 668
    iget-object v3, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    .line 669
    invoke-static {v3}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 668
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 670
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->mLastX:F

    .line 671
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->mLastY:F

    .line 672
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v0, v0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$1700(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;

    move-result-object v3

    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1500(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)I

    move-result v4

    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v5

    iget v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->mLastX:F

    sub-float v7, v1, v0

    iget p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->mLastY:F

    sub-float v8, v2, p0

    move-object v6, p1

    invoke-interface/range {v3 .. v8}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;->onScroll(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method processMove(Landroid/view/MotionEvent;)V
    .locals 8

    .line 678
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    .line 679
    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 678
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 680
    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v1, v1, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$1700(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;

    move-result-object v2

    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1500(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)I

    move-result v3

    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v4

    iget v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->mLastX:F

    .line 681
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    sub-float v6, v1, v5

    iget v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->mLastY:F

    .line 682
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float v7, v1, v5

    move-object v5, p1

    .line 680
    invoke-interface/range {v2 .. v7}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;->onScroll(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 683
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->mLastX:F

    .line 684
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->mLastY:F

    return-void
.end method

.method processUp(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 689
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 690
    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v2}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 693
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v1, v1, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$3600(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Landroid/view/VelocityTracker;

    move-result-object v1

    const/16 v2, 0x3e8

    iget-object v3, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v3, v3, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v3}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$3500(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 694
    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v1, v1, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$3600(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Landroid/view/VelocityTracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v6

    .line 695
    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v1, v1, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$3600(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Landroid/view/VelocityTracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v7

    .line 696
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v1, v1, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$3700(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 697
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v1, v1, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$3700(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 698
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v0, v0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$1700(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;

    move-result-object v2

    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1500(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)I

    move-result v3

    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v4

    move-object v5, p1

    invoke-interface/range {v2 .. v7}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;->onFling(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 700
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v0, v0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$1700(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1500(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;->onUp(ILandroid/view/MotionEvent;)V

    .line 701
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->initialState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    invoke-static {v0, p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1300(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0
.end method
