.class Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;
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
    name = "VideoThumbnailImageRetriever"
.end annotation


# instance fields
.field private final mImageReader:Landroid/media/ImageReader;

.field private final mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;)V
    .locals 0

    .line 5644
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5645
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 5646
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->mImageReader:Landroid/media/ImageReader;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;)V

    return-void
.end method


# virtual methods
.method public registerBlurPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public registerPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public registerQrCodePreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public requestOneShotPreviewCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V
    .locals 6

    .line 5652
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->mImageReader:Landroid/media/ImageReader;

    if-nez v0, :cond_0

    return-void

    .line 5656
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5659
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->canValidation()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5662
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureRequestHolder(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v1

    .line 5661
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->validate(Ljava/lang/String;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5666
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez v1, :cond_1

    .line 5669
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail to valid camera parameter. : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 5667
    :cond_1
    throw v0

    .line 5674
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewFrameReceiver(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2, p2}, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;-><init>(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;ZLandroid/os/Handler;)V

    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->-$$Nest$mregisterCallback(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V

    .line 5676
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->mImageReader:Landroid/media/ImageReader;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewFrameReceiver(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object p2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    .line 5678
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v0

    .line 5676
    invoke-virtual {p1, p2, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 5679
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p1

    new-instance p2, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureRequestHolder(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->mImageReader:Landroid/media/ImageReader;

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Landroid/media/ImageReader;Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask-IA;)V

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method public unregisterBlurPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)V
    .locals 0

    return-void
.end method

.method public unregisterPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)V
    .locals 0

    return-void
.end method

.method public unregisterQrCodePreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)V
    .locals 0

    return-void
.end method
