.class Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/ImageRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamingImageRetriever"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .locals 0

    .line 2197
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .locals 0

    .line 2197
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;)V

    return-void
.end method


# virtual methods
.method public registerPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V
    .locals 2

    .line 2208
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object p0

    new-instance v0, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;-><init>(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;ZLandroid/os/Handler;)V

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->access$6000(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;)V

    return-void
.end method

.method public requestOneShotPreviewCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)V
    .locals 1

    .line 2214
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->access$6200(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2215
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->access$6000(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;)V

    :cond_0
    return-void
.end method
