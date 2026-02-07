package com.sonyericsson.cameracommon.focusview;

import android.graphics.Point;
import com.sonyericsson.android.camera.device.CameraParameters$FaceDetectionResult;
import com.sonyericsson.android.camera.device.CameraParameters$ObjectTrackingResult;

/* JADX INFO: loaded from: classes.dex */
interface FocusRectangles$State {
    void handleClearAllFocusExceptFace();

    void handleClearExceptTouchFocus();

    void handleClearObjectTracking();

    void handleOnAutoFocusCanceled();

    void handleOnAutoFocusDone(boolean z);

    void handleOnAutoFocusStarted();

    void handleOnFaceDetected(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult);

    void handleOnObjectLost();

    void handleOnObjectRemoved();

    void handleOnTrackedObjectStateUpdated(CameraParameters$ObjectTrackingResult cameraParameters$ObjectTrackingResult);

    void handleOnUiComponentOverlaid();

    void handleOnUiComponentRemoved();

    void handleSetFocusPosition(Point point, FocusRectangles$FocusSetType focusRectangles$FocusSetType);

    void handleStartAfLock();

    void handleStartFaceDetection();

    void handleStartObjectTracking();

    void handleStopAfLock();
}
