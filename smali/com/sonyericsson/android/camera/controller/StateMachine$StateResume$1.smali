.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;)V
    .locals 0

    .line 2974
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageReadyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;)V
    .locals 2

    .line 2978
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getCurrentStorage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 2979
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2978
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2984
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-eq p2, v0, :cond_1

    .line 2985
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmStorageStateListener(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/storage/Storage;->addStorageStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;)V

    .line 2988
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 2989
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume$1$1;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume$1;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
