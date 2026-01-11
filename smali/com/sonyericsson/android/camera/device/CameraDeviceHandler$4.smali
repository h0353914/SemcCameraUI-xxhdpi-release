.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$4;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->createCameraActionSound()V
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

    .line 1456
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$4;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1459
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$4;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$4;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraActionSound;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$4;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmApplicationContext(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraActionSound;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fputmCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraActionSound;)V

    .line 1461
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$4;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->SHUTTER_CLICK:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->load(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;)V

    .line 1462
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$4;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->START_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->load(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;)V

    .line 1463
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$4;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->STOP_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->load(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;)V

    :cond_0
    return-void
.end method
