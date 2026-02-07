package com.sonyericsson.cameracommon.focusview;

import com.sonyericsson.android.camera.device.CameraParameters$FaceDetectionResult;

/* JADX INFO: loaded from: classes.dex */
class FocusRectangles$ObjectTrackingInLockedState extends FocusRectangles$ObjectTrackingState {
    final /* synthetic */ FocusRectangles this$0;

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleClearAllFocusExceptFace() {
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleClearObjectTracking() {
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$ObjectTrackingState, com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnFaceDetected(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult) {
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$ObjectTrackingState, com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnObjectRemoved() {
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$ObjectTrackingState, com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleStartFaceDetection() {
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$ObjectTrackingState
    protected boolean isAFLocking() {
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FocusRectangles$ObjectTrackingInLockedState(FocusRectangles focusRectangles) {
        super(focusRectangles, null);
        this.this$0 = focusRectangles;
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$ObjectTrackingState, com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnAutoFocusDone(boolean z) {
        if (z) {
            super.handleOnAutoFocusDone(z);
        }
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$ObjectTrackingState, com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnObjectLost() {
        FocusRectangles.access$800(this.this$0, new FocusRectangles$ObjectLostInLockedState(this.this$0));
    }
}
