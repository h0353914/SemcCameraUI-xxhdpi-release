.class public interface abstract Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface;
.super Ljava/lang/Object;
.source "CameraDeviceHandler2Interface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraAutoFocusCallback;
    }
.end annotation


# virtual methods
.method public abstract autoFocus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraAutoFocusCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract cancelAutoFocus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract finishBokehPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract finishBurst(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract finishHDRCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract finishLowLightCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract finishNightPortraitCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract finishSlowMotionRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract finishWalkingPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract lock3A(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
.end method

.method public abstract prepareBokehPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract prepareBurst(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPictureTakenCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract prepareHDRCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract prepareLowLightCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract prepareNightPortraitCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract prepareWalkingPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract setSSTriggerTag(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZZ)V
.end method

.method public abstract setVideoDisplay(Landroid/media/MediaRecorder;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract setZoomKeyTag(Z)V
.end method

.method public abstract startAutoFocus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraAutoFocusCallback;ZZZLandroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
.end method

.method public abstract stopAutoFocus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract takeBurstPicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPictureTakenCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract takeHDRPicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract takeLowLightPicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract takeNightPortraitCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract takePicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract takeQuickPicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract takeWalkingPicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method

.method public abstract takeZslPicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end method
