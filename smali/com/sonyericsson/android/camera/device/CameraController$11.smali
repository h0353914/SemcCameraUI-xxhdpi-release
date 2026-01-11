.class Lcom/sonyericsson/android/camera/device/CameraController$11;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController;->skip2FramesInHDRMultiframeCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field skipNum:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .locals 0

    .line 1032
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$11;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    const/4 p1, 0x2

    .line 1033
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$11;->skipNum:I

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 1038
    iget p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$11;->skipNum:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$11;->skipNum:I

    if-nez p1, :cond_0

    .line 1039
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$11;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmStreamingImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$11;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewFrameReceiver(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object p2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$11;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p0

    .line 1041
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object p0

    .line 1039
    invoke-virtual {p1, p2, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1043
    :cond_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 1044
    const-string p0, "CameraController"

    const-string p1, "onCaptureCompleted() skip frame"

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method
