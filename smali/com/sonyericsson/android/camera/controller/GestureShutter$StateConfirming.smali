.class Lcom/sonyericsson/android/camera/controller/GestureShutter$StateConfirming;
.super Lcom/sonyericsson/android/camera/controller/GestureShutter$State;
.source "GestureShutter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/GestureShutter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateConfirming"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;)V
    .locals 2

    .line 631
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateConfirming;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 632
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;ZZ)V

    return-void
.end method


# virtual methods
.method entry()V
    .locals 0

    .line 638
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateConfirming;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$500(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;->getGestureShutterView()Lcom/sonyericsson/android/camera/view/GestureShutterView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/GestureShutterView;->startConfirming()V

    return-void
.end method

.method handleConfirmingFinished()V
    .locals 4

    .line 648
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateConfirming;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateConfirming;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;Z)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$400(Lcom/sonyericsson/android/camera/controller/GestureShutter;Lcom/sonyericsson/android/camera/controller/GestureShutter$State;)V

    .line 650
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateConfirming;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$1000(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateConfirming;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$700(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;->prepareGestureShutterCountDown()V

    .line 652
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateConfirming;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$700(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;->startGestureShutterCountDown()V

    :cond_0
    return-void
.end method
