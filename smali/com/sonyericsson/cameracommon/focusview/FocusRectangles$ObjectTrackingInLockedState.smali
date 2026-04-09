.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingInLockedState;
.super Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObjectTrackingInLockedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .locals 1

    .line 1064
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingInLockedState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V

    return-void
.end method


# virtual methods
.method public handleClearAllFocusExceptFace()V
    .locals 0

    return-void
.end method

.method public handleClearObjectTracking()V
    .locals 0

    return-void
.end method

.method public handleOnAutoFocusDone(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1071
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->handleOnAutoFocusDone(Z)V

    return-void
.end method

.method public handleOnFaceDetected(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V
    .locals 0

    return-void
.end method

.method public handleOnObjectLost()V
    .locals 2

    .line 1101
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingInLockedState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectLostInLockedState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingInLockedState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectLostInLockedState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleOnObjectRemoved()V
    .locals 0

    return-void
.end method

.method public handleStartFaceDetection()V
    .locals 0

    return-void
.end method

.method protected isAFLocking()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
