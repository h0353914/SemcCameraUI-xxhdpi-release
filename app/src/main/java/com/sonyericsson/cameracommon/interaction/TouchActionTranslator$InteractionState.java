package com.sonyericsson.cameracommon.interaction;

import android.graphics.Point;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
interface TouchActionTranslator$InteractionState {
    void handleMotionEvent(MotionEvent motionEvent);

    void handleSingleTouchMoveEvent(Point point, Point point2, Point point3);

    void handleSingleTouchStopEvent(Point point, Point point2, Point point3);

    void handleTouchRotateEvent(float f, float f2);

    void handleTouchScaleEvent(float f, float f2, float f3);
}
