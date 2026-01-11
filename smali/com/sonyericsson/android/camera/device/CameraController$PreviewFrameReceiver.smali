.class final Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PreviewFrameReceiver"
.end annotation


# instance fields
.field private mBlurCallbackTask:Ljava/lang/Runnable;

.field private mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

.field private mCallbackTask:Ljava/lang/Runnable;

.field private mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

.field private mDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

.field private mImageHeight:I

.field private mImageWidth:I

.field private mOutput:[B

.field private mQrCodeCallbackTask:Ljava/lang/Runnable;

.field private mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;


# direct methods
.method static bridge synthetic -$$Nest$mhasCallback(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->hasCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mregisterBlurCallback(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->registerBlurCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterCallback(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->registerCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterQrCodeCallback(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->registerQrCodeCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5135
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 5136
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 5137
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;-><init>()V

    return-void
.end method

.method private declared-synchronized hasCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z
    .locals 1

    monitor-enter p0

    .line 5148
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->callback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private registerBlurCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    .locals 1

    .line 5168
    monitor-enter p0

    .line 5169
    :try_start_0
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    if-nez p1, :cond_0

    .line 5170
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCallbackTask:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz p2, :cond_0

    .line 5172
    iget-object p2, p2, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    .line 5173
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCallbackTask:Ljava/lang/Runnable;

    .line 5175
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 5176
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private registerCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    .locals 1

    .line 5152
    monitor-enter p0

    .line 5153
    :try_start_0
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    if-nez p1, :cond_0

    .line 5154
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCallbackTask:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz p2, :cond_0

    .line 5156
    iget-object p2, p2, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    .line 5157
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCallbackTask:Ljava/lang/Runnable;

    .line 5159
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 5160
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private registerQrCodeCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    .locals 1

    .line 5187
    monitor-enter p0

    .line 5188
    :try_start_0
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    if-nez p1, :cond_0

    .line 5189
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCallbackTask:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz p2, :cond_0

    .line 5191
    iget-object p2, p2, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    .line 5192
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCallbackTask:Ljava/lang/Runnable;

    .line 5194
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 5195
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public declared-synchronized hasBlurCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z
    .locals 1

    monitor-enter p0

    .line 5164
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->callback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized hasQrCodeCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z
    .locals 1

    monitor-enter p0

    .line 5181
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->callback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 24

    move-object/from16 v7, p0

    const-string v0, "YUV_420_888 image is invalid. Width("

    const-string v1, "onImageAvailable size:"

    .line 5200
    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5202
    const-string v0, "onImageAvailable() image is null"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-void

    .line 5206
    :cond_0
    monitor-enter p0

    .line 5207
    :try_start_0
    iget-object v3, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-nez v3, :cond_1

    iget-object v3, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-nez v3, :cond_1

    iget-object v3, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-nez v3, :cond_1

    .line 5209
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 5210
    monitor-exit p0

    return-void

    .line 5212
    :cond_1
    iget-object v3, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v3, :cond_4

    .line 5213
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 5215
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/media/Image;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 5216
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v2}, Landroid/media/Image;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 5217
    :cond_2
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_3

    new-array v0, v9, [Ljava/lang/String;

    const-string v4, "CameraController"

    aput-object v4, v0, v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5218
    invoke-virtual {v2}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/media/Image;->getHeight()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " not match preview size:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5220
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " skip this frame"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 5217
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5222
    :cond_3
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 5223
    monitor-exit p0

    return-void

    .line 5229
    :cond_4
    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/media/Image;->getHeight()I

    move-result v3

    invoke-direct {v11, v10, v10, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5230
    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v1

    const/16 v3, 0x23

    if-ne v1, v3, :cond_12

    .line 5236
    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 5237
    array-length v3, v1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    goto/16 :goto_3

    .line 5243
    :cond_5
    invoke-virtual {v2}, Landroid/media/Image;->getWidth()I

    move-result v13

    .line 5244
    invoke-virtual {v2}, Landroid/media/Image;->getHeight()I

    move-result v14

    .line 5245
    rem-int/lit8 v3, v13, 0x2

    if-nez v3, :cond_10

    rem-int/lit8 v3, v14, 0x2

    if-eqz v3, :cond_6

    goto/16 :goto_2

    .line 5252
    :cond_6
    iget-object v0, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mOutput:[B

    if-eqz v0, :cond_7

    iget v0, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mImageWidth:I

    if-ne v0, v13, :cond_7

    iget v0, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mImageHeight:I

    if-eq v0, v14, :cond_8

    .line 5253
    :cond_7
    iput v13, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mImageWidth:I

    .line 5254
    iput v14, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mImageHeight:I

    mul-int v0, v13, v14

    mul-int/2addr v0, v4

    .line 5255
    div-int/2addr v0, v9

    new-array v0, v0, [B

    iput-object v0, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mOutput:[B

    .line 5258
    :cond_8
    aget-object v0, v1, v10

    .line 5259
    aget-object v3, v1, v8

    .line 5260
    aget-object v1, v1, v9

    .line 5263
    iget-object v12, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mOutput:[B

    .line 5265
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v16

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v17

    .line 5266
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v19

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v20

    .line 5267
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v22

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v23

    .line 5263
    invoke-static/range {v12 .. v23}, Lcom/sonyericsson/android/camera/device/ImageConverter;->convertFromYuv420_888ToNv21([BIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)V

    .line 5269
    iget-object v0, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mOutput:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 5270
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 5271
    iget-object v0, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 5272
    iget-object v0, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mOutput:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5273
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    :cond_9
    move-object v0, v1

    .line 5276
    :goto_0
    iget-object v3, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz v3, :cond_a

    .line 5277
    iget-object v3, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mOutput:[B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 5278
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-object v12, v3

    goto :goto_1

    :cond_a
    move-object v12, v1

    .line 5286
    :goto_1
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 5292
    iget-object v13, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    const/16 v14, 0x11

    if-eqz v13, :cond_c

    .line 5294
    iget-boolean v2, v13, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->isOneShot:Z

    if-eqz v2, :cond_b

    .line 5295
    iput-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 5297
    :cond_b
    new-instance v15, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$1;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v13

    move v5, v14

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;)V

    iput-object v15, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCallbackTask:Ljava/lang/Runnable;

    .line 5306
    iget-object v1, v13, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->handler:Landroid/os/Handler;

    iget-object v2, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5308
    :cond_c
    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz v1, :cond_d

    .line 5309
    const-string v1, "CameraController"

    const-string v2, "mBlurCaptureImageRequest"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/BlurLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5310
    iget-object v13, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 5311
    new-instance v15, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$2;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v13

    move-object v4, v0

    move v5, v14

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$2;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;)V

    iput-object v15, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCallbackTask:Ljava/lang/Runnable;

    .line 5319
    iget-object v0, v13, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->handler:Landroid/os/Handler;

    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5321
    :cond_d
    iget-object v0, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz v0, :cond_f

    .line 5322
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 5323
    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "CameraController"

    aput-object v1, v0, v10

    const-string v1, "mQrCodeCaptureImageRequest"

    aput-object v1, v0, v8

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5325
    :cond_e
    iget-object v0, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 5326
    new-instance v8, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$3;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v12

    move v5, v14

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$3;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;)V

    iput-object v8, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCallbackTask:Ljava/lang/Runnable;

    .line 5335
    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->handler:Landroid/os/Handler;

    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5337
    :cond_f
    monitor-exit p0

    return-void

    .line 5246
    :cond_10
    :goto_2
    new-array v1, v8, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") or/are Height("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") is/are invalid."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v10

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 5249
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 5250
    monitor-exit p0

    return-void

    .line 5238
    :cond_11
    :goto_3
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "YUV_420_888 image is invalid. Planes are invalid."

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 5239
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 5240
    monitor-exit p0

    return-void

    .line 5282
    :cond_12
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 5283
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 5337
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
