.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask$1;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;)V
    .locals 0

    .line 1417
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 0

    .line 1420
    const-string p0, "CloseBypassCameraTimeoutTask"

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void
.end method
