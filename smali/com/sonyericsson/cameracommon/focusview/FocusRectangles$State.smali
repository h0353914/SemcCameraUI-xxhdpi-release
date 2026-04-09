.class interface abstract Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;
.super Ljava/lang/Object;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "State"
.end annotation


# virtual methods
.method public abstract handleClearAllFocusExceptFace()V
.end method

.method public abstract handleClearExceptTouchFocus()V
.end method

.method public abstract handleClearObjectTracking()V
.end method

.method public abstract handleOnAutoFocusCanceled()V
.end method

.method public abstract handleOnAutoFocusDone(Z)V
.end method

.method public abstract handleOnAutoFocusStarted()V
.end method

.method public abstract handleOnFaceDetected(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V
.end method

.method public abstract handleOnObjectLost()V
.end method

.method public abstract handleOnObjectRemoved()V
.end method

.method public abstract handleOnTrackedObjectStateUpdated(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V
.end method

.method public abstract handleOnUiComponentOverlaid()V
.end method

.method public abstract handleOnUiComponentRemoved()V
.end method

.method public abstract handleSetFocusPosition(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
.end method

.method public abstract handleStartAfLock()V
.end method

.method public abstract handleStartFaceDetection()V
.end method

.method public abstract handleStartObjectTracking()V
.end method

.method public abstract handleStopAfLock()V
.end method
