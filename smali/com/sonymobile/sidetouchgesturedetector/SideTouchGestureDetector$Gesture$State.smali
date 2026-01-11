.class Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;
.super Ljava/lang/Object;
.source "SideTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "State"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;


# direct methods
.method private constructor <init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$1;)V
    .locals 0

    .line 468
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;-><init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)V

    return-void
.end method


# virtual methods
.method final cancel()V
    .locals 2

    .line 490
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->initialState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1300(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;Landroid/view/MotionEvent;)V

    return-void
.end method

.method enter(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method exit()V
    .locals 0

    return-void
.end method

.method processDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method processMessage(I)V
    .locals 0

    return-void
.end method

.method processMove(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method processUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
