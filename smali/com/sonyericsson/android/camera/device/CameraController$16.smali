.class Lcom/sonyericsson/android/camera/device/CameraController$16;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController;->postCreateVideoPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;

.field final synthetic val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2083
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$16;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$16;->val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2086
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$16;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$16;->val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mpostCreateVideoPreviewSession(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method
