package com.sonyericsson.android.camera.view.baselayout;

import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
public interface ViewFinderGestureDetector$OnViewFinderGestureDetectorListener {
    void onDown(MotionEvent motionEvent);

    void onDragging(MotionEvent motionEvent, MotionEvent motionEvent2);

    void onFinishDragging(MotionEvent motionEvent, MotionEvent motionEvent2, ViewFinderGestureDetector$FinishReason viewFinderGestureDetector$FinishReason);

    void onStartDragging(MotionEvent motionEvent, MotionEvent motionEvent2);
}
