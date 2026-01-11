.class Lcom/sonyericsson/android/camera/controller/StateMachine$6$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$6;->notifyResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$6;

.field final synthetic val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$6;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 599
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$6$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$6;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$6$1;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 602
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$6$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$6;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$6;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcalculateRemainStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 603
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$6$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$6;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$6;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_STORE_COMPLETED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$6$1;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method
