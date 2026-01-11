.class interface abstract Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;
.super Ljava/lang/Object;
.source "BypassCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/BypassCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "BypassCameraControllerCallback"
.end annotation


# virtual methods
.method public abstract onCameraClosed()V
.end method

.method public abstract onPrepareBurstDone(Z)V
.end method

.method public abstract onShutterDone(IIZ)V
.end method

.method public abstract onSnapshotDone(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
.end method

.method public abstract onSnapshotReadyDone(Ljava/util/concurrent/ExecutorService;ZZZLcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;I)V
.end method
