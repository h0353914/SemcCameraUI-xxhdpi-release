.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;->onCountDownFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;)V
    .locals 0

    .line 4766
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1$1;->this$2:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 4769
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1$1;->this$2:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mstartAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4770
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1$1;->this$2:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1$1;->this$2:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone-IA;)V

    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
