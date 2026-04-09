.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;
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

    .line 994
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 997
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object v0

    if-nez v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraActionSound;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;-><init>()V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1402(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraActionSound;)Lcom/sonyericsson/android/camera/device/CameraActionSound;

    .line 999
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->load(I)V

    .line 1000
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->load(I)V

    .line 1001
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->load(I)V

    :cond_0
    return-void
.end method
