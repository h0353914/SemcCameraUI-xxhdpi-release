package com.sonyericsson.cameracommon.interaction;

import android.graphics.Point;

public interface TouchMoveAndStopDetector$TouchStopDetectorListener {
    void onSingleTouchMoveDetected(Point point, Point point2, Point point3);

    void onSingleTouchStopDetected(Point point, Point point2, Point point3);
}
