package com.sonyericsson.cameracommon.focusview;

import android.graphics.Point;
import com.sonyericsson.android.camera.device.CameraParameters$FaceDetectionResult;
import com.sonyericsson.cameracommon.utility.FaceDetectUtil;

class FocusRectangles$FaceReflectChecker {
    private static final long WAIT_FOR_FACE_REFLECTED_TIME_MILLIS = 500;
    private FocusRectangles$FaceReflectedCallback mCallback;
    private Point mFaceAreaTriggerPoint;
    private Runnable mTimeoutTask;
    final /* synthetic */ FocusRectangles this$0;

    private FocusRectangles$FaceReflectChecker(FocusRectangles focusRectangles) {
        this.this$0 = focusRectangles;
        this.mFaceAreaTriggerPoint = new Point(-1, -1);
        this.mTimeoutTask = new FocusRectangles$FaceReflectChecker$1(this);
    }

    /* synthetic */ FocusRectangles$FaceReflectChecker(FocusRectangles focusRectangles, FocusRectangles$1 focusRectangles$1) {
        this(focusRectangles);
    }

    static /* synthetic */ void access$3600(FocusRectangles$FaceReflectChecker focusRectangles$FaceReflectChecker) {
        focusRectangles$FaceReflectChecker.notifyFaceReflected();
    }

    public void requestToWaitForFaceReflected(Point point) {
        if (FocusRectangles.access$3300(this.this$0)) {
            this.mFaceAreaTriggerPoint = point;
            FocusRectangles.access$3700(this.this$0).removeCallbacks(this.mTimeoutTask);
            FocusRectangles.access$3700(this.this$0).postDelayed(this.mTimeoutTask, 500L);
        }
    }

    public void check(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult) {
        if (FaceDetectUtil.isValidFaceDetectionResult(cameraParameters$FaceDetectionResult)) {
            if (cameraParameters$FaceDetectionResult.extFaceList.get(cameraParameters$FaceDetectionResult.indexOfSelectedFace).rect.contains(this.mFaceAreaTriggerPoint.x, this.mFaceAreaTriggerPoint.y)) {
                notifyFaceReflected();
                return;
            }
            return;
        }
        notifyFaceReflected();
    }

    private void notifyFaceReflected() {
        this.mFaceAreaTriggerPoint.x = -1;
        this.mFaceAreaTriggerPoint.y = -1;
        if (this.mCallback != null) {
            this.mCallback.onFaceReflected();
            setFaceReflectCb(null);
        }
        FocusRectangles.access$3700(this.this$0).removeCallbacks(this.mTimeoutTask);
    }

    public boolean isWaitingForFaceReflected() {
        return this.mFaceAreaTriggerPoint.x >= 0 && this.mFaceAreaTriggerPoint.y >= 0;
    }

    public boolean isWaitingForCapturing() {
        return this.mCallback != null;
    }

    public void setFaceReflectCb(FocusRectangles$FaceReflectedCallback focusRectangles$FaceReflectedCallback) {
        this.mCallback = focusRectangles$FaceReflectedCallback;
    }
}
