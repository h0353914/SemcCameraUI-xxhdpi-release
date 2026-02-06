package com.sonyericsson.cameracommon.focusview;

import com.sonyericsson.android.camera.device.CameraParameters$ObjectTrackingResult;

class FocusRectangles$ObjectLostState extends FocusRectangles$ObjectTrackingState {
    final /* synthetic */ FocusRectangles this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FocusRectangles$ObjectLostState(FocusRectangles focusRectangles) {
        super(focusRectangles, null);
        this.this$0 = focusRectangles;
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$ObjectTrackingState, com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleStartAfLock() {
        FocusRectangles.access$800(this.this$0, new FocusRectangles$ObjectLostInLockedState(this.this$0));
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$ObjectTrackingState, com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnTrackedObjectStateUpdated(CameraParameters$ObjectTrackingResult cameraParameters$ObjectTrackingResult) {
        FocusRectangles.access$800(this.this$0, new FocusRectangles$ObjectTrackingState(this.this$0, null));
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$ObjectTrackingState, com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleStopAfLock() {
        FocusRectangles.access$800(this.this$0, new FocusRectangles$ObjectLostState(this.this$0));
    }
}
