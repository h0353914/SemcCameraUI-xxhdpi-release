.class Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure;
.super Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoCaptureAreaEventProcedure;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuperSlowVideoCaptureAreaEventProcedure"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .locals 1

    .line 1575
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoCaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoCaptureAreaEventProcedure-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method


# virtual methods
.method public doTouchUp(Landroid/graphics/Point;)V
    .locals 1

    .line 1578
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmAngleActionHandler(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$misHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$misTouchCaptureEnabled(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1579
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isVideoRecording()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1580
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_TRIGGER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1582
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1585
    :cond_1
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoCaptureAreaEventProcedure;->doTouchUp(Landroid/graphics/Point;)V

    :goto_0
    return-void
.end method
