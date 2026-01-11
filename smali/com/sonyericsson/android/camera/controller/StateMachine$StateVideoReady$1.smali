.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->handleOnLazyInitializationTaskRun([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;)V
    .locals 0

    .line 4728
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4731
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method
