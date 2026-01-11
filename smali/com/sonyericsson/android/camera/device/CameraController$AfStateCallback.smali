.class final Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;
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
    name = "AfStateCallback"
.end annotation


# instance fields
.field private mAeLock:Z

.field private mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field private mShouldTriggerAE:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAeLock(Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->mAeLock:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraSessionId(Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShouldTriggerAE(Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->mShouldTriggerAE:Z

    return p0
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->mAeLock:Z

    .line 384
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 385
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->mShouldTriggerAE:Z

    return-void
.end method


# virtual methods
.method public OnStateChanged()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmAfStateChecker(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AfStateChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/AfStateChecker;->isStateInactive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureRequestHolder(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    const-string p0, "### For AF mode is not off, inactive state do nothing, return"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmAfStateChecker(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AfStateChecker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/AfStateChecker;->setStateListener(Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;)V

    .line 396
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmUiThreadHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
