.class Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady$3;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;->handleCaptureBurst([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;)V
    .locals 0

    .line 3976
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady$3;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 3979
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady$3;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mstartAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3980
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady$3;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady$3;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone-IA;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 3981
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady$3;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mshowCannotBurstInDarkCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    goto :goto_0

    .line 3983
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady$3;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURE_FINISH:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
