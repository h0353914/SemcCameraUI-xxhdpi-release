.class Lcom/sonyericsson/android/camera/controller/StateMachine$5$2;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$5;->onRecordError(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$5;)V
    .locals 0

    .line 7872
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$2;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 7876
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$2;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$14600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7877
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$2;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1000(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7878
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$2;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->COULD_NOT_START_RECORDING:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    .line 7879
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$2;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$2;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 7880
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$2;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseVideo()V

    return-void

    .line 7884
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$2;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_RECORDING_ERROR:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 7885
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$2;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseVideo()V

    return-void
.end method
