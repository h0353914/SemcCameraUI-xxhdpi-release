package com.sonyericsson.cameracommon.focusview;

import com.sonyericsson.android.camera.device.CameraParameters$FaceDetectionResult;

/* JADX INFO: loaded from: classes.dex */
class FocusRectangles$TouchFocusInLockedState extends FocusRectangles$TouchFocusState {
    final /* synthetic */ FocusRectangles this$0;

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$TouchFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnFaceDetected(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult) {
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$TouchFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleStartFaceDetection() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FocusRectangles$TouchFocusInLockedState(FocusRectangles focusRectangles) {
        super(focusRectangles, null);
        this.this$0 = focusRectangles;
    }
}
