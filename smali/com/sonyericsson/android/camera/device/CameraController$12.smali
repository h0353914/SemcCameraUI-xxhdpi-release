.class Lcom/sonyericsson/android/camera/device/CameraController$12;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController;->startTakePicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;

.field final synthetic val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field final synthetic val$jpeg:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

.field final synthetic val$shutter:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 1191
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->val$shutter:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->val$jpeg:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doCameraDeviceAccess()V
    .locals 11

    .line 1195
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->val$shutter:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->val$jpeg:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;)V

    .line 1198
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1202
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v2

    .line 1203
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1202
    invoke-virtual {v1, v0, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1205
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1207
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isSuperNightMode()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_2

    .line 1209
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureRequestHolder(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v3

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v5

    .line 1211
    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    new-array v4, v4, [Landroid/view/Surface;

    aput-object v5, v4, v9

    .line 1209
    invoke-virtual {v2, v3, v1, v4}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    .line 1214
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 1216
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 1219
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3, v2, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mcapture(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    .line 1220
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0, v9}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmReceivedResultCount4(Lcom/sonyericsson/android/camera/device/CameraController;I)V

    goto/16 :goto_3

    .line 1224
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmRecordingSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1225
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureRequestHolder(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v3

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v6

    .line 1227
    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmRecordingSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v8

    const/4 v10, 0x3

    new-array v10, v10, [Landroid/view/Surface;

    aput-object v6, v10, v9

    aput-object v7, v10, v4

    aput-object v8, v10, v2

    .line 1225
    invoke-virtual {v3, v5, v1, v10}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    goto :goto_2

    .line 1229
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureRequestHolder(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v3

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1230
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$misEnabledZsl(Lcom/sonyericsson/android/camera/device/CameraController;)Z

    move-result v7

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v6

    .line 1231
    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v8

    new-array v2, v2, [Landroid/view/Surface;

    aput-object v6, v2, v9

    aput-object v8, v2, v4

    const/4 v6, 0x0

    move-object v4, v5

    move v5, v1

    move-object v8, v2

    .line 1229
    invoke-virtual/range {v3 .. v8}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;ILjava/lang/Object;Z[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    .line 1235
    :goto_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3, v2, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mcapture(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    .line 1236
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    new-array v2, v9, [Z

    invoke-virtual {v0, p0, v9, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z[Z)V

    .line 1238
    :goto_3
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "### startTakePicture() X template:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraController"

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 1

    .line 1243
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
