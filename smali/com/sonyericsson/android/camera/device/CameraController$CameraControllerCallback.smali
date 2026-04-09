.class interface abstract Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "CameraControllerCallback"
.end annotation


# virtual methods
.method public abstract onCropRegionReady()V
.end method

.method public abstract onDeviceError(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V
.end method

.method public abstract onFaceDetected(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V
.end method

.method public abstract onFusionResultChanged(Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;)V
.end method

.method public abstract onOpenCameraRequested(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract onPreviewFrameUpdated(Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;)V
.end method

.method public abstract onReflected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract onSceneModeChanged(Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;)V
.end method

.method public abstract onSessionDisconnected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method
