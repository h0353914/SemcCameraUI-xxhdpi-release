.class Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$3;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->onImageAvailable(Landroid/media/ImageReader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

.field final synthetic val$imgFormat:I

.field final synthetic val$qrCodeByteBuffer:Ljava/nio/ByteBuffer;

.field final synthetic val$qrCodeRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

.field final synthetic val$size:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5326
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$3;->this$0:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$3;->val$qrCodeRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$3;->val$qrCodeByteBuffer:Ljava/nio/ByteBuffer;

    iput p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$3;->val$imgFormat:I

    iput-object p5, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$3;->val$size:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 5329
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$3;->val$qrCodeRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz v0, :cond_0

    .line 5330
    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->callback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$3;->val$qrCodeByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$3;->val$imgFormat:I

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$3;->val$size:Landroid/graphics/Rect;

    invoke-interface {v0, v1, v2, p0}, Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;->onRetrieved(Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
