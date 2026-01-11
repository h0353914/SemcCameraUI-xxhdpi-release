.class Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable$1;
.super Ljava/lang/Object;
.source "QrDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable$1;->this$1:Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable$1;->this$1:Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->-$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable$1;->this$1:Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->-$$Nest$fgetmScanResult(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Lcom/google/zxing/Result;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;->onDetectResult(Lcom/google/zxing/Result;)V

    return-void
.end method
