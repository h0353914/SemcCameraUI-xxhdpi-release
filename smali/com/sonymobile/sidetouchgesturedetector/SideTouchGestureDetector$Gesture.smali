.class Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;
.super Ljava/lang/Object;
.source "SideTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Gesture"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;,
        Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$LongPress;,
        Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;,
        Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;,
        Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;,
        Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Initial;,
        Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;
    }
.end annotation


# instance fields
.field final doubleTapDownState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

.field final downState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

.field final initialState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

.field final longPressState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

.field private mDownEvent:Landroid/view/MotionEvent;

.field private mGestureId:I

.field private mState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

.field final scrollState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

.field final synthetic this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

.field final upState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;


# direct methods
.method private constructor <init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)V
    .locals 2

    .line 405
    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    new-instance p1, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Initial;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Initial;-><init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$1;)V

    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->initialState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    .line 408
    new-instance v1, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Down;-><init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$1;)V

    iput-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->downState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    .line 409
    new-instance v1, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;-><init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$1;)V

    iput-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->upState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    .line 410
    new-instance v1, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$LongPress;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$LongPress;-><init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$1;)V

    iput-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->longPressState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    .line 411
    new-instance v1, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Scroll;-><init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$1;)V

    iput-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->scrollState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    .line 412
    new-instance v1, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$DoubleTapDown;-><init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$1;)V

    iput-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->doubleTapDownState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    const/4 v0, -0x1

    .line 414
    iput v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->mGestureId:I

    .line 416
    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->mState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$1;)V
    .locals 0

    .line 405
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;-><init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;Landroid/view/MotionEvent;)V
    .locals 0

    .line 405
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->setState(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)I
    .locals 0

    .line 405
    iget p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->mGestureId:I

    return p0
.end method

.method static synthetic access$1502(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;I)I
    .locals 0

    .line 405
    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->mGestureId:I

    return p1
.end method

.method static synthetic access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->mDownEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->mDownEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;IJ)V
    .locals 0

    .line 405
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->sendMessageDelayed(IJ)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;IJ)V
    .locals 0

    .line 405
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->sendMessageAtTime(IJ)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;I)V
    .locals 0

    .line 405
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)V
    .locals 0

    .line 405
    invoke-direct {p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->moveToWaitingList()V

    return-void
.end method

.method static synthetic access$2900(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)V
    .locals 0

    .line 405
    invoke-direct {p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->removeFromWaitingList()V

    return-void
.end method

.method private moveToWaitingList()V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v0, p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$1000(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)V

    return-void
.end method

.method private removeFromWaitingList()V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v0, p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$1100(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)V

    return-void
.end method

.method private removeMessages(I)V
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$1200(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method private sendMessageAtTime(IJ)V
    .locals 2

    .line 460
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->removeMessages(I)V

    .line 461
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$1200(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$1200(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method private sendMessageDelayed(IJ)V
    .locals 2

    .line 455
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->removeMessages(I)V

    .line 456
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$1200(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$1200(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setState(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;Landroid/view/MotionEvent;)V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->mState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    if-eq v0, p1, :cond_0

    .line 440
    invoke-virtual {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;->exit()V

    .line 441
    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->mState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    .line 442
    invoke-virtual {p1, p2}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;->enter(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 0

    .line 435
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->mState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    invoke-virtual {p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;->cancel()V

    return-void
.end method

.method onDownEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->mState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    invoke-virtual {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;->processDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method onHandleMessage(I)V
    .locals 0

    .line 431
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->mState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    invoke-virtual {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;->processMessage(I)V

    return-void
.end method

.method onMoveEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 423
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->mState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    invoke-virtual {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;->processMove(Landroid/view/MotionEvent;)V

    return-void
.end method

.method onUpEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->mState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    invoke-virtual {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;->processUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
