.class Lcom/sonyericsson/android/camera/controller/StateMachine$1$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$1;->notifyResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$1;

.field final synthetic val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$1;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$1$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$1;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$1$1;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 452
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$1$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$1;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$1;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1600(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 453
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$1$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$1;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$1;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_STORE_COMPLETED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$1$1;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method
