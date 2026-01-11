.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12$1;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->onRecordFinished(Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;)V
    .locals 0

    .line 5898
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 5901
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5902
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->getVideoSavingRequestBuilder()Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onRecordFinished(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V

    goto :goto_0

    .line 5903
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachineForSavingRequest(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5904
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachineForSavingRequest(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;

    .line 5905
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->getVideoSavingRequestBuilder()Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object p0

    .line 5904
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onRecordFinished(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V

    :cond_1
    :goto_0
    return-void
.end method
