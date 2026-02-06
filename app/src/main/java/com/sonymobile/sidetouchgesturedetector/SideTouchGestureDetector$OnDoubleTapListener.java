package com.sonymobile.sidetouchgesturedetector;

import android.view.MotionEvent;

public interface SideTouchGestureDetector$OnDoubleTapListener {
    void onDoubleTap(int i, MotionEvent motionEvent);

    void onDoubleTapForLearning(DoubleTapInfo doubleTapInfo);

    void onSingleTapConfirmed(int i, MotionEvent motionEvent);
}
