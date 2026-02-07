package com.sonyericsson.cameracommon.focusview;

import android.graphics.Point;
import com.sonyericsson.android.camera.device.CameraParameters$FaceDetectionResult;
import com.sonyericsson.android.camera.device.CameraParameters$ObjectTrackingResult;
import java.util.Iterator;
import java.util.Map$Entry;

/* JADX INFO: loaded from: classes.dex */
class FocusRectangles$FaceDetectionState extends FocusRectangles$DefaultFocusState {
    final /* synthetic */ FocusRectangles this$0;

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnObjectRemoved() {
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleStartFaceDetection() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private FocusRectangles$FaceDetectionState(FocusRectangles focusRectangles) {
        super(focusRectangles);
        this.this$0 = focusRectangles;
    }

    /* synthetic */ FocusRectangles$FaceDetectionState(FocusRectangles focusRectangles, FocusRectangles$1 focusRectangles$1) {
        this(focusRectangles);
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnAutoFocusStarted() {
        if (!isFaceRectAvailable()) {
            FocusRectangles.access$800(this.this$0, new FocusRectangles$DefaultFocusState(this.this$0));
            this.this$0.onAutoFocusStarted();
        } else {
            FocusRectangles.access$400(this.this$0, true);
        }
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnAutoFocusDone(boolean z) {
        if (!isFaceRectAvailable()) {
            super.handleOnAutoFocusDone(z);
            return;
        }
        if (FocusRectangles.access$1900(this.this$0) == null) {
            return;
        }
        Iterator it = FocusRectangles.access$2000(this.this$0).entrySet().iterator();
        while (it.hasNext()) {
            TaggedRectangle taggedRectangle = (TaggedRectangle) ((Map$Entry) it.next()).getValue();
            if (FocusRectangles.access$1900(this.this$0).equals(taggedRectangle.getUuid())) {
                taggedRectangle.changeRectangleResource(2131230869);
                if (!taggedRectangle.isShown()) {
                    taggedRectangle.setVisibility(0);
                }
            } else {
                taggedRectangle.setVisibility(4);
            }
        }
    }

    private boolean isFaceRectAvailable() {
        Iterator it = FocusRectangles.access$2000(this.this$0).values().iterator();
        while (it.hasNext()) {
            if (((TaggedRectangle) it.next()).getVisibility() == 0) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleSetFocusPosition(Point point, FocusRectangles$FocusSetType focusRectangles$FocusSetType) {
        if (focusRectangles$FocusSetType != FocusRectangles$FocusSetType.FIRST) {
            return;
        }
        FocusRectangles.access$600(this.this$0, point, focusRectangles$FocusSetType);
        FocusRectangles.access$800(this.this$0, new FocusRectangles$TouchFocusState(this.this$0, null));
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnFaceDetected(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult) {
        if (cameraParameters$FaceDetectionResult.extFaceList.size() == 0) {
            this.this$0.clearFaceDetection();
            FocusRectangles.access$800(this.this$0, new FocusRectangles$DefaultFocusState(this.this$0));
        } else {
            FocusRectangles.access$100(this.this$0, cameraParameters$FaceDetectionResult, false);
        }
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleStartObjectTracking() {
        this.this$0.clearSingleAutoFocus();
        this.this$0.clearTouchFocus();
        this.this$0.clearFaceDetection();
        FocusRectangles.access$800(this.this$0, new FocusRectangles$ObjectTrackingState(this.this$0, null));
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleOnTrackedObjectStateUpdated(CameraParameters$ObjectTrackingResult cameraParameters$ObjectTrackingResult) {
        FocusRectangles.access$1000(this.this$0).setVisibility(4);
        FocusRectangles.access$2100(this.this$0, true);
        FocusRectangles.access$1800(this.this$0, cameraParameters$ObjectTrackingResult, false);
        FocusRectangles.access$800(this.this$0, new FocusRectangles$ObjectTrackingState(this.this$0, null));
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleStartAfLock() {
        FocusRectangles.access$800(this.this$0, new FocusRectangles$FaceDetectionInLockedState(this.this$0));
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleStopAfLock() {
        FocusRectangles.access$800(this.this$0, FocusRectangles.access$1900(this.this$0) != null ? new FocusRectangles$FaceDetectionState(this.this$0) : new FocusRectangles$DefaultFocusState(this.this$0));
    }
}
