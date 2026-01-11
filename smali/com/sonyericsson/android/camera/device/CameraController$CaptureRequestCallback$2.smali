.class Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$2;
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


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;)V
    .locals 0

    .line 2262
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2265
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mPictureCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    if-eqz v0, :cond_0

    .line 2266
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mPictureCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;->onPictureTaken([B)V

    :cond_0
    return-void
.end method
