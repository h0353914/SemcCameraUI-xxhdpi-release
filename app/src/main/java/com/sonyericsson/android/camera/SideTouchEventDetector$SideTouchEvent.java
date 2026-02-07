package com.sonyericsson.android.camera;

import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
public class SideTouchEventDetector$SideTouchEvent {
    public final SideTouchEventDetector$SideTouchArea area;
    public final int position;

    static /* synthetic */ SideTouchEventDetector$SideTouchEvent access$200(MotionEvent motionEvent, int i) {
        return make(motionEvent, i);
    }

    static /* synthetic */ SideTouchEventDetector$SideTouchEvent access$500(SideTouchEventDetector$SideTouchArea sideTouchEventDetector$SideTouchArea, int i, int i2) {
        return make(sideTouchEventDetector$SideTouchArea, i, i2);
    }

    private SideTouchEventDetector$SideTouchEvent(int i, SideTouchEventDetector$SideTouchArea sideTouchEventDetector$SideTouchArea) {
        this.position = i;
        this.area = sideTouchEventDetector$SideTouchArea;
    }

    private static SideTouchEventDetector$SideTouchEvent make(MotionEvent motionEvent, int i) {
        return make(SideTouchEventDetector$SideTouchArea.access$000(motionEvent, i), (int) motionEvent.getX(i), (int) motionEvent.getY(i));
    }

    private static SideTouchEventDetector$SideTouchEvent make(SideTouchEventDetector$SideTouchArea sideTouchEventDetector$SideTouchArea, int i, int i2) {
        switch (SideTouchEventDetector$1.$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea[sideTouchEventDetector$SideTouchArea.ordinal()]) {
            case 1:
            case 2:
                return new SideTouchEventDetector$SideTouchEvent(i, sideTouchEventDetector$SideTouchArea);
            case 3:
            case 4:
                return new SideTouchEventDetector$SideTouchEvent(i2, sideTouchEventDetector$SideTouchArea);
            default:
                return new SideTouchEventDetector$SideTouchEvent(0, sideTouchEventDetector$SideTouchArea);
        }
    }

    public String toString() {
        return "position:" + this.position + ", area:" + this.area.name();
    }
}
