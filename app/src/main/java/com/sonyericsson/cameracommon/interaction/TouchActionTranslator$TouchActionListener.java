package com.sonyericsson.cameracommon.interaction;

import android.graphics.Point;
import android.view.MotionEvent;

public interface TouchActionTranslator$TouchActionListener {
    void onDoubleCanceled();

    void onDoubleMoved(Point point, Point point2);

    void onDoubleRotated(float f, float f2);

    void onDoubleScaled(float f, float f2, float f3);

    void onDoubleTouched(Point point, Point point2);

    void onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2);

    void onLongPress(MotionEvent motionEvent);

    void onOverTripleCanceled();

    void onShowPress(MotionEvent motionEvent);

    void onSingleCanceled();

    void onSingleMoved(Point point, Point point2, Point point3);

    void onSingleReleased(Point point);

    void onSingleReleasedInDouble(Point point, Point point2);

    void onSingleStopped(Point point, Point point2, Point point3);

    void onSingleTapUp(MotionEvent motionEvent);

    void onSingleTouched(Point point);
}
