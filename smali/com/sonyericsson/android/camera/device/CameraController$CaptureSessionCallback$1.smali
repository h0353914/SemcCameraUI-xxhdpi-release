.class Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;)V
    .locals 0

    .line 5461
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 5464
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->-$$Nest$fgetmSessionId(Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mdealLaunchAndCapture(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method
