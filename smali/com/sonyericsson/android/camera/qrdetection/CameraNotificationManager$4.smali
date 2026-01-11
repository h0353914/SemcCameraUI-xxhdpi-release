.class Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$4;
.super Ljava/lang/Object;
.source "CameraNotificationManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->notifyQrDetectResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$4;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 245
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$4;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->-$$Nest$fgetmQrCodeScanner(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;->readyToNotify()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 246
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$4;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->-$$Nest$mhandleResult(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V

    :cond_0
    return-void
.end method
