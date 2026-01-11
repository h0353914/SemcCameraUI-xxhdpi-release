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

    .line 5720
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;)V

    return-void
.end method


# virtual methods
.method public registerBlurPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V
    .locals 3

    .line 5738
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewFrameReceiver(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;-><init>(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;ZLandroid/os/Handler;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->-$$Nest$mregisterBlurCallback(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V

    return-void
.end method

.method public registerPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V
    .locals 3

    .line 5731
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewFrameReceiver(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;-><init>(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;ZLandroid/os/Handler;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->-$$Nest$mregisterCallback(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V

    return-void
.end method

.method public registerQrCodePreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V
    .locals 3

    .line 5746
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewFrameReceiver(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;-><init>(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;ZLandroid/os/Handler;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->-$$Nest$mregisterQrCodeCallback(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V

    return-void
.end method

.method public requestOneShotPreviewCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterBlurPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)V
    .locals 1

    .line 5760
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewFrameReceiver(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->hasBlurCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5761
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewFrameReceiver(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->-$$Nest$mregisterBlurCallback(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V

    :cond_0
    return-void
.end method

.method public unregisterPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)V
    .locals 1

    .line 5753
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewFrameReceiver(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->-$$Nest$mhasCallback(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5754
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewFrameReceiver(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->-$$Nest$mregisterCallback(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V

    :cond_0
    return-void
.end method

.method public unregisterQrCodePreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)V
    .locals 1

    .line 5767
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewFrameReceiver(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->hasQrCodeCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5768
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewFrameReceiver(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->-$$Nest$mregisterQrCodeCallback(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V

    :cond_0
    return-void
.end method
