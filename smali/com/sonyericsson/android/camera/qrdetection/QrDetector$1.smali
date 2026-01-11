.class Lcom/sonyericsson/android/camera/qrdetection/QrDetector$1;
.super Ljava/lang/Object;
.source "QrDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/qrdetection/QrDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$1;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$1;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->-$$Nest$fgetmIsStarted(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$1;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->-$$Nest$fgetmImageRetriever(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Lcom/sonyericsson/android/camera/device/ImageRetriever;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$1;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->-$$Nest$fgetmImageCallback(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$1;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->-$$Nest$fgetmWorker(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object p0

    .line 130
    invoke-interface {v0, v1, p0}, Lcom/sonyericsson/android/camera/device/ImageRetriever;->registerQrCodePreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V

    return-void
.end method
