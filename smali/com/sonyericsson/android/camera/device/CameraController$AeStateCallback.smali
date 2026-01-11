.class final Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;
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
    name = "AeStateCallback"
.end annotation


# instance fields
.field private mAeLock:Z

.field private final mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 419
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;->mAeLock:Z

    return-void
.end method


# virtual methods
.method public OnStateChanged()V
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmAeStateChecker(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AeStateChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/AeStateChecker;->isAeStateConverged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;->mAeLock:Z

    if-eqz v0, :cond_1

    .line 427
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraController"

    const-string v1, "AE converged, do AE/AWB locked"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$msetAeAndAwbLock(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    const/4 v0, 0x0

    .line 429
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;->mAeLock:Z

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmAeStateChecker(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AeStateChecker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/AeStateChecker;->setStateListener(Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;)V

    .line 437
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmAeDoneLatch(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 438
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmAeDoneLatch(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmUiThreadHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
