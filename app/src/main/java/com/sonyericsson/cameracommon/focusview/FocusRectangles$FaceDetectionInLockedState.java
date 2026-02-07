package com.sonyericsson.cameracommon.focusview;

import com.sonyericsson.android.camera.device.CameraParameters$FaceDetectionResult;

/* JADX INFO: loaded from: classes.dex */
class FocusRectangles$FaceDetectionInLockedState extends FocusRectangles$FaceDetectionState {
    final /* synthetic */ FocusRectangles this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FocusRectangles$FaceDetectionInLockedState(FocusRectangles focusRectangles) {
        super(focusRectangles, null);
        this.this$0 = focusRectangles;
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$FaceDetectionState, com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnFaceDetected(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult) {
        if (cameraParameters$FaceDetectionResult.extFaceList.size() == 0) {
            FocusRectangles.access$1902(this.this$0, null);
        }
        if (FocusRectangles.access$1900(this.this$0) == null) {
            return;
        }
        FocusRectangles.access$2600(this.this$0, cameraParameters$FaceDetectionResult, false, FocusRectangles.access$2500(this.this$0, cameraParameters$FaceDetectionResult));
    }
}
