package com.sonyericsson.cameracommon.focusview;

import android.graphics.Point;
import android.widget.ImageView;
import com.sonyericsson.android.camera.device.CameraParameters$FaceDetectionResult;
import com.sonyericsson.android.camera.device.CameraParameters$ObjectTrackingResult;

class FocusRectangles$TouchFocusState extends FocusRectangles$DefaultFocusState {
    private boolean mIsAutoFocusStarted;
    final /* synthetic */ FocusRectangles this$0;

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnObjectRemoved() {
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnTrackedObjectStateUpdated(CameraParameters$ObjectTrackingResult cameraParameters$ObjectTrackingResult) {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private FocusRectangles$TouchFocusState(FocusRectangles focusRectangles) {
        super(focusRectangles);
        this.this$0 = focusRectangles;
        this.mIsAutoFocusStarted = false;
    }

    /* synthetic */ FocusRectangles$TouchFocusState(FocusRectangles focusRectangles, FocusRectangles$1 focusRectangles$1) {
        this(focusRectangles);
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnAutoFocusStarted() {
        this.mIsAutoFocusStarted = true;
        FocusRectangles.access$100(this.this$0, null, true);
        FocusRectangles.access$300(this.this$0).startFocusAnimation(FocusRectangles.access$200(this.this$0).findViewById(2131296347), this.this$0.getTouchAfFocusingIcon());
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnAutoFocusDone(boolean z) {
        this.mIsAutoFocusStarted = false;
        FocusRectangles.access$400(this.this$0, true);
        ImageView imageView = (ImageView) FocusRectangles.access$200(this.this$0).findViewById(2131296347);
        imageView.setVisibility(0);
        if (z) {
            imageView.setBackgroundResource(this.this$0.getTouchAfSuccessIcon());
            FocusRectangles.access$300(this.this$0).playAfFocusInAnimationTouch(imageView, this.this$0.getTouchAfSuccessIcon());
        } else {
            if (FocusRectangles.access$500(this.this$0)) {
                return;
            }
            FocusRectangles.access$300(this.this$0).playAfFadeOutAnimationTouch(imageView);
        }
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnAutoFocusCanceled() {
        this.mIsAutoFocusStarted = false;
        ((ImageView) FocusRectangles.access$200(this.this$0).findViewById(2131296347)).setVisibility(0);
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleSetFocusPosition(Point point, FocusRectangles$FocusSetType focusRectangles$FocusSetType) {
        this.mIsAutoFocusStarted = false;
        FocusRectangles.access$600(this.this$0, point, focusRectangles$FocusSetType);
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleStartFaceDetection() {
        this.this$0.clearSingleAutoFocus();
        this.this$0.clearObjectTracking();
        FocusRectangles.access$800(this.this$0, new FocusRectangles$FaceDetectionState(this.this$0, null));
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnFaceDetected(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult) {
        FocusRectangles focusRectangles = this.this$0;
        if (this.mIsAutoFocusStarted) {
            cameraParameters$FaceDetectionResult = null;
        }
        FocusRectangles.access$100(focusRectangles, cameraParameters$FaceDetectionResult, true);
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleStartObjectTracking() {
        this.this$0.clearExceptTouchFocus();
        FocusRectangles.access$800(this.this$0, new FocusRectangles$ObjectTrackingState(this.this$0, null));
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleClearExceptTouchFocus() {
        FocusRectangles.access$300(this.this$0).stopFocusAnimation((ImageView) FocusRectangles.access$200(this.this$0).findViewById(2131296347));
        super.handleClearExceptTouchFocus();
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnUiComponentRemoved() {
        FocusRectangles.access$200(this.this$0).setVisibility(0);
        FocusRectangles.access$1000(this.this$0).setVisibility(4);
        FocusRectangles.access$1100(this.this$0);
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleStartAfLock() {
        FocusRectangles.access$800(this.this$0, new FocusRectangles$TouchFocusInLockedState(this.this$0));
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleStopAfLock() {
        FocusRectangles.access$800(this.this$0, new FocusRectangles$TouchFocusState(this.this$0));
    }
}
