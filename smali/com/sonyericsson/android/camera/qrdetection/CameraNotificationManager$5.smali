.class Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$5;
.super Ljava/lang/Object;
.source "CameraNotificationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;
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

    .line 301
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$5;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$5;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->-$$Nest$fgetmQrCodeScanner(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;->start()V

    return-void
.end method
