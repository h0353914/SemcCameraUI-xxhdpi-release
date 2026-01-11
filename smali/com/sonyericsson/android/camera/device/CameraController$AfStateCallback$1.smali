.class Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->OnStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 399
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->-$$Nest$fgetmShouldTriggerAE(Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->-$$Nest$fgetmAeLock(Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->-$$Nest$fgetmAeLock(Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;)Z

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->-$$Nest$fgetmCameraSessionId(Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mstartAutoExposure(Lcom/sonyericsson/android/camera/device/CameraController;ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    goto :goto_1

    .line 400
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmAfStateChecker(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AfStateChecker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/AfStateChecker;->isFocusLocked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$monAutoFocus(Lcom/sonyericsson/android/camera/device/CameraController;Z)V

    .line 405
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureResultCheckerLock(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 406
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmStateCheckerSet(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmAfStateChecker(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AfStateChecker;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 407
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
