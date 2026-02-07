package com.sonymobile.sidetouchgesturedetector;

import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
public interface SideTouchGestureDetector$OnGestureListener {
    void onCancel(MotionEvent motionEvent);

    void onDown(int i, MotionEvent motionEvent);

    void onFling(int i, MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2);

    void onGestureFinished(int i);

    void onLongPress(int i, MotionEvent motionEvent);

    void onScroll(int i, MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2);

    void onUp(int i, MotionEvent motionEvent);
}
