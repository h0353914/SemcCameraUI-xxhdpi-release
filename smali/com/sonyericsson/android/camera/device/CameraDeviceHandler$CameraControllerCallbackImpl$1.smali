.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$1;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;->onDeviceError(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;

.field final synthetic val$error:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5185
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$1;->val$error:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 5188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5189
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$1;->val$error:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onDeviceError(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    :cond_0
    return-void
.end method
