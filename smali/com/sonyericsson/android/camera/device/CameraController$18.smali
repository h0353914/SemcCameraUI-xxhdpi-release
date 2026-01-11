.class Lcom/sonyericsson/android/camera/device/CameraController$18;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController;->createVideoPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
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

    .line 2156
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$18;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$18;->val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2160
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$18;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmPrevPreviewSessionRequest(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)V

    .line 2161
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$18;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$18;->val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mcreatePreviewSession(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z

    return-void
.end method
