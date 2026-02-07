package com.sonymobile.sidetouchgesturedetector;

import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
public interface SideTouchGestureDetector$OnDoubleTapListener {
    void onDoubleTap(int i, MotionEvent motionEvent);

    void onDoubleTapForLearning(DoubleTapInfo doubleTapInfo);

    void onSingleTapConfirmed(int i, MotionEvent motionEvent);
}
