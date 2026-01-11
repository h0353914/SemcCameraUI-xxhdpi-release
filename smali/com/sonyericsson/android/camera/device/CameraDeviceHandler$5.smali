.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$5;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseCameraActionSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    .line 1470
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$5;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1473
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$5;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$5;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->release()V

    .line 1475
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$5;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fputmCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraActionSound;)V

    :cond_0
    return-void
.end method
