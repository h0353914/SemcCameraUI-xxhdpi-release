.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$OnDisconnectedTask$1;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$OnDisconnectedTask;->doCameraDeviceAccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$OnDisconnectedTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$OnDisconnectedTask;)V
    .locals 0

    .line 5306
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$OnDisconnectedTask$1;->this$2:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$OnDisconnectedTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 5309
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$OnDisconnectedTask$1;->this$2:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$OnDisconnectedTask;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$OnDisconnectedTask;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    return-void
.end method
