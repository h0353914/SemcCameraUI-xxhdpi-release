.class Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;

.field final synthetic val$isBurst:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2251
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;

    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$1;->val$isBurst:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2254
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mShutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    if-eqz v0, :cond_0

    .line 2256
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mShutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$1;->val$isBurst:Z

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;->onShutter(Z)V

    :cond_0
    return-void
.end method
