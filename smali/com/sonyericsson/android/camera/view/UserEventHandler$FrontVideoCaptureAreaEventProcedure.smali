.class Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;
.super Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaEventProcedure;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrontVideoCaptureAreaEventProcedure"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .locals 1

    .line 1498
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaEventProcedure-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 2

    .line 1513
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmAngleActionHandler(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->isJumpZooming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1514
    const-string p0, "Not handled due to isJumpZooming."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 1517
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmAngleActionHandler(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$mstopZooming(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1521
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$misTouchCaptureEnabled(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1522
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public doTouchUp(Landroid/graphics/Point;)V
    .locals 1

    .line 1502
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isAutoReviewShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1503
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hideAutoReview()V

    return-void

    .line 1506
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$misTouchCaptureEnabled(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1507
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$mselectDefaultVideoAction(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
