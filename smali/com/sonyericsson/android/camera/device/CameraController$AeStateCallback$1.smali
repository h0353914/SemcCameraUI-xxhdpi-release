.class Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;->OnStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureResultCheckerLock(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmAfStateChecker(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AfStateChecker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/AfStateChecker;->isFocusLocked()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$monAutoFocus(Lcom/sonyericsson/android/camera/device/CameraController;Z)V

    .line 447
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmStateCheckerSet(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmAeStateChecker(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AeStateChecker;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 448
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
