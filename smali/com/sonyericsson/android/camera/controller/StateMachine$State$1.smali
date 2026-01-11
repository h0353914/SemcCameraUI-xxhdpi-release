.class Lcom/sonyericsson/android/camera/controller/StateMachine$State$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnStoreCompleted([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$State;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$State;)V
    .locals 0

    .line 2301
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2304
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_STORE_COMPLETED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLastStoreDataResult(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    move-result-object v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLastStoreDataResult(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    move-result-object v3

    .line 2306
    invoke-static {p0, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->-$$Nest$misLastStoreDataResult(Lcom/sonyericsson/android/camera/controller/StateMachine$State;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 2304
    invoke-interface {v0, v1, p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method
