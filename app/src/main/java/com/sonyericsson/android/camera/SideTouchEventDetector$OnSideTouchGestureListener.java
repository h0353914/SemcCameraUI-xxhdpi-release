package com.sonyericsson.android.camera;

/* JADX INFO: loaded from: classes.dex */
public interface SideTouchEventDetector$OnSideTouchGestureListener {
    void onDoubleTap(SideTouchEventDetector$SideTouchEvent sideTouchEventDetector$SideTouchEvent, int i, int i2);

    void onGestureFinished();

    void onGestureStart();

    void onScroll(SideTouchEventDetector$SideTouchEvent sideTouchEventDetector$SideTouchEvent);

    void onScrollEnd();

    void onScrollStart(SideTouchEventDetector$SideTouchEvent sideTouchEventDetector$SideTouchEvent);
}
