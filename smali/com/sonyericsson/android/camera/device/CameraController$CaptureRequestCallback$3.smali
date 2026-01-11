.class Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$3;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->checkCaptureDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;

.field final synthetic val$bytes:[B


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2353
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$3;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$3;->val$bytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2356
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$3;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mPictureCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    if-eqz v0, :cond_0

    .line 2357
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$3;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mPictureCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$3;->val$bytes:[B

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;->onPictureTaken([B)V

    :cond_0
    return-void
.end method
