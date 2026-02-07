package com.sonyericsson.cameracommon.focusview;

import com.sonyericsson.android.camera.device.CameraParameters$FaceDetectionResult;

/* JADX INFO: loaded from: classes.dex */
class FocusRectangles$DefaultFocusInLockedState extends FocusRectangles$DefaultFocusState {
    final /* synthetic */ FocusRectangles this$0;

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnFaceDetected(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult) {
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleStartFaceDetection() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FocusRectangles$DefaultFocusInLockedState(FocusRectangles focusRectangles) {
        super(focusRectangles);
        this.this$0 = focusRectangles;
    }
}
