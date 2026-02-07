package com.sonyericsson.cameracommon.focusview;

import android.graphics.Point;
import android.view.View;
import android.widget.ImageView;
import com.sonyericsson.android.camera.device.CameraParameters$FaceDetectionResult;
import com.sonyericsson.android.camera.device.CameraParameters$ObjectTrackingResult;

/* JADX INFO: loaded from: classes.dex */
class FocusRectangles$DefaultFocusState implements FocusRectangles$State {
    final /* synthetic */ FocusRectangles this$0;

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnAutoFocusCanceled() {
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnObjectLost() {
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnObjectRemoved() {
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnTrackedObjectStateUpdated(CameraParameters$ObjectTrackingResult cameraParameters$ObjectTrackingResult) {
    }

    FocusRectangles$DefaultFocusState(FocusRectangles focusRectangles) {
        this.this$0 = focusRectangles;
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnAutoFocusStarted() {
        FocusRectangles.access$400(this.this$0, true);
        FocusRectangles.access$1000(this.this$0).setVisibility(0);
        View viewFindViewById = FocusRectangles.access$1000(this.this$0).findViewById(2131296347);
        if (viewFindViewById.getVisibility() != 0) {
            viewFindViewById.setVisibility(0);
        }
        FocusRectangles.access$300(this.this$0).startFocusAnimation(viewFindViewById, 2131230866);
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnAutoFocusDone(boolean z) {
        ImageView imageView = (ImageView) FocusRectangles.access$1000(this.this$0).findViewById(2131296347);
        if (z) {
            if (imageView.getVisibility() != 0) {
                imageView.setVisibility(0);
            }
            imageView.setBackgroundResource(2131230865);
            FocusRectangles.access$300(this.this$0).playAfFocusInAnimationSingle(imageView);
            return;
        }
        if (imageView.getVisibility() == 0) {
            imageView.setVisibility(4);
        }
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleSetFocusPosition(Point point, FocusRectangles$FocusSetType focusRectangles$FocusSetType) {
        FocusRectangles.access$600(this.this$0, point, focusRectangles$FocusSetType);
        FocusRectangles.access$800(this.this$0, new FocusRectangles$TouchFocusState(this.this$0, null));
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleStartFaceDetection() {
        this.this$0.clearSingleAutoFocus();
        this.this$0.clearObjectTracking();
        FocusRectangles.access$800(this.this$0, new FocusRectangles$FaceDetectionState(this.this$0, null));
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnFaceDetected(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult) {
        if (cameraParameters$FaceDetectionResult.extFaceList.size() == 0) {
            FocusRectangles.access$800(this.this$0, new FocusRectangles$DefaultFocusState(this.this$0));
        } else {
            FocusRectangles.access$100(this.this$0, cameraParameters$FaceDetectionResult, false);
            FocusRectangles.access$800(this.this$0, new FocusRectangles$FaceDetectionState(this.this$0, null));
        }
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleStartObjectTracking() {
        this.this$0.clearExceptTouchFocus();
        FocusRectangles.access$800(this.this$0, new FocusRectangles$ObjectTrackingState(this.this$0, null));
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleClearExceptTouchFocus() {
        this.this$0.clearSingleAutoFocus();
        this.this$0.clearObjectTracking();
        this.this$0.clearFaceDetection();
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleClearAllFocusExceptFace() {
        FocusRectangles.access$800(this.this$0, new FocusRectangles$DefaultFocusState(this.this$0));
        this.this$0.clearSingleAutoFocus();
        this.this$0.clearTouchFocus();
        this.this$0.clearObjectTracking();
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnUiComponentOverlaid() {
        FocusRectangles.access$1000(this.this$0).setVisibility(4);
        FocusRectangles.access$2100(this.this$0, false);
        FocusRectangles.access$2200(this.this$0);
        FocusRectangles.access$200(this.this$0).setVisibility(4);
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnUiComponentRemoved() {
        FocusRectangles.access$200(this.this$0).setVisibility(4);
        FocusRectangles.access$1000(this.this$0).setVisibility(4);
        FocusRectangles.access$1100(this.this$0);
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleClearObjectTracking() {
        FocusRectangles.access$2200(this.this$0);
        FocusRectangles.access$2300(this.this$0);
        FocusRectangles.access$2400(this.this$0, false);
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleStartAfLock() {
        FocusRectangles.access$800(this.this$0, new FocusRectangles$DefaultFocusInLockedState(this.this$0));
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleStopAfLock() {
        FocusRectangles.access$800(this.this$0, new FocusRectangles$DefaultFocusState(this.this$0));
    }
}
