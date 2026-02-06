package com.sonyericsson.cameracommon.focusview;

import com.sonyericsson.android.camera.device.CameraParameters$ObjectTrackingResult;

class FocusRectangles$ObjectLostInLockedState extends FocusRectangles$ObjectTrackingInLockedState {
    final /* synthetic */ FocusRectangles this$0;

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$ObjectTrackingInLockedState, com.sonyericsson.cameracommon.focusview.FocusRectangles$ObjectTrackingState, com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnAutoFocusDone(boolean z) {
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$ObjectTrackingState, com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnTrackedObjectStateUpdated(CameraParameters$ObjectTrackingResult cameraParameters$ObjectTrackingResult) {
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$ObjectTrackingState, com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleStartAfLock() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FocusRectangles$ObjectLostInLockedState(FocusRectangles focusRectangles) {
        super(focusRectangles);
        this.this$0 = focusRectangles;
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$ObjectTrackingInLockedState, com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleClearAllFocusExceptFace() {
        FocusRectangles.access$800(this.this$0, new FocusRectangles$ObjectTrackingStoppedInLockedState(this.this$0));
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$ObjectTrackingState, com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleStopAfLock() {
        FocusRectangles.access$800(this.this$0, new FocusRectangles$ObjectLostState(this.this$0));
    }
}
