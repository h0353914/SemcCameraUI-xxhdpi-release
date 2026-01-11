.class Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$1;
.super Ljava/lang/Object;
.source "CameraNotificationManager.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;


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

    .line 179
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$1;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetectResult(Ljava/lang/String;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$1;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->-$$Nest$fputmDetectResult(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$1;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->-$$Nest$mParseResult(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;)V

    .line 184
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$1;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->-$$Nest$mnotifyQrDetectResult(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V

    return-void
.end method
