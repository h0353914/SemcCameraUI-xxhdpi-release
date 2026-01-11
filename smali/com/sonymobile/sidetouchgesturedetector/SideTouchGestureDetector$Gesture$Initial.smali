.class Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Initial;
.super Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;
.source "SideTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Initial"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;


# direct methods
.method private constructor <init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)V
    .locals 1

    .line 494
    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Initial;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;-><init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$1;)V
    .locals 0

    .line 494
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Initial;-><init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)V

    return-void
.end method


# virtual methods
.method enter(Landroid/view/MotionEvent;)V
    .locals 2

    .line 497
    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Initial;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1500(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 498
    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Initial;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object p1, p1, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Initial;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1500(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$1600(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;I)V

    .line 499
    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Initial;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object p1, p1, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$1700(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;

    move-result-object p1

    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Initial;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1500(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;->onGestureFinished(I)V

    .line 500
    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Initial;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {p1, v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1502(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;I)I

    .line 502
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Initial;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 503
    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Initial;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 504
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Initial;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1802(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    :cond_1
    return-void
.end method

.method exit()V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Initial;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1500(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 511
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Initial;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$1900(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1502(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;I)I

    :cond_0
    return-void
.end method

.method processDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Initial;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v1, v0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->downState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1300(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;Landroid/view/MotionEvent;)V

    .line 519
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Initial;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v0, v0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$1700(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Initial;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-static {p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1500(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;->onDown(ILandroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0
.end method
