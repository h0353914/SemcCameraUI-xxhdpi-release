package com.sonyericsson.cameracommon.focusview;

import android.graphics.Point;
import com.sonyericsson.android.camera.device.CameraParameters$FaceDetectionResult;
import com.sonyericsson.android.camera.device.CameraParameters$ObjectTrackingResult;

class FocusRectangles$ObjectTrackingState extends FocusRectangles$DefaultFocusState {
    final /* synthetic */ FocusRectangles this$0;

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleStartObjectTracking() {
    }

    protected boolean isAFLocking() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private FocusRectangles$ObjectTrackingState(FocusRectangles focusRectangles) {
        super(focusRectangles);
        this.this$0 = focusRectangles;
    }

    /* synthetic */ FocusRectangles$ObjectTrackingState(FocusRectangles focusRectangles, FocusRectangles$1 focusRectangles$1) {
        this(focusRectangles);
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnAutoFocusStarted() {
        FocusRectangles.access$400(this.this$0, true);
        FocusRectangles.access$300(this.this$0).startFocusAnimation(FocusRectangles.access$1200(this.this$0).findViewById(2131296528), this.this$0.getAfFocusingIcon());
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnAutoFocusDone(boolean z) {
        FocusRectangles.access$1200(this.this$0).setVisibility(0);
        if (z) {
            FocusRectangles.access$1200(this.this$0).changeRectangleResource(this.this$0.getSuccessIcon());
        } else {
            FocusRectangles.access$300(this.this$0).playAfFadeOutAnimationObject(FocusRectangles.access$1200(this.this$0));
        }
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleSetFocusPosition(Point point, FocusRectangles$FocusSetType focusRectangles$FocusSetType) {
        FocusRectangles.access$600(this.this$0, point, focusRectangles$FocusSetType);
        FocusRectangles.access$800(this.this$0, new FocusRectangles$TouchFocusState(this.this$0, null));
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleStartFaceDetection() {
        this.this$0.clearExceptTouchFocus();
        FocusRectangles.access$800(this.this$0, new FocusRectangles$FaceDetectionState(this.this$0, null));
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnFaceDetected(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult) {
        FocusRectangles.access$100(this.this$0, cameraParameters$FaceDetectionResult, true);
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnTrackedObjectStateUpdated(CameraParameters$ObjectTrackingResult cameraParameters$ObjectTrackingResult) {
        if (FocusRectangles.access$1400(this.this$0)) {
            if (FocusRectangles.access$1500(this.this$0) == FocusRectangles$ObJectTrackingFocusIconState.NOT_DISPLAY) {
                FocusRectangles.access$1600(this.this$0, cameraParameters$ObjectTrackingResult);
                return;
            } else {
                FocusRectangles.access$1700(this.this$0, cameraParameters$ObjectTrackingResult, isAFLocking());
                return;
            }
        }
        FocusRectangles.access$1800(this.this$0, cameraParameters$ObjectTrackingResult, isAFLocking());
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnObjectLost() {
        FocusRectangles.access$800(this.this$0, new FocusRectangles$ObjectLostState(this.this$0));
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnObjectRemoved() {
        FocusRectangles.access$800(this.this$0, new FocusRectangles$DefaultFocusState(this.this$0));
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleStartAfLock() {
        FocusRectangles.access$800(this.this$0, new FocusRectangles$ObjectTrackingInLockedState(this.this$0));
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleStopAfLock() {
        FocusRectangles.access$800(this.this$0, new FocusRectangles$ObjectTrackingState(this.this$0));
    }
}
