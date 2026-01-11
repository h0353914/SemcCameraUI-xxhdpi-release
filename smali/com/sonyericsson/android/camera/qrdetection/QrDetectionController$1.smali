.class Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$1;
.super Ljava/lang/Object;
.source "QrDetectionController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$1;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetectResult(Lcom/google/zxing/Result;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$1;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->-$$Nest$fputmIsPreviewing(Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;Z)V

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$1;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->-$$Nest$fgetmQrResultListener(Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$1;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->-$$Nest$mgetMassagedText(Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;->onDetectResult(Ljava/lang/String;)V

    return-void
.end method
