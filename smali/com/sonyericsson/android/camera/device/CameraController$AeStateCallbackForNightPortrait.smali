.class final Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallbackForNightPortrait;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AeStateCallbackForNightPortrait"
.end annotation


# instance fields
.field private mAePrecaptureCallback:Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallback;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallback;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallbackForNightPortrait;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallbackForNightPortrait;->mAePrecaptureCallback:Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallback;

    return-void
.end method


# virtual methods
.method public OnStateChanged()V
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallbackForNightPortrait;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmAeStateChecker(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AeStateChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/AeStateChecker;->isAeStateConverged()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallbackForNightPortrait;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmAeStateChecker(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AeStateChecker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/AeStateChecker;->setStateListener(Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;)V

    .line 473
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallbackForNightPortrait;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureResultCheckerLock(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 474
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallbackForNightPortrait;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmStateCheckerSet(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallbackForNightPortrait;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmAeStateChecker(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AeStateChecker;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 475
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallbackForNightPortrait;->mAePrecaptureCallback:Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallback;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallback;->onAeConverged()V

    return-void

    :catchall_0
    move-exception p0

    .line 475
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
