package com.sonyericsson.android.camera;

import android.view.MotionEvent;
import com.sonymobile.sidetouchgesturedetector.SideTouchUtils;

/* JADX INFO: loaded from: classes.dex */
public enum SideTouchEventDetector$SideTouchArea {
    UNKNOWN,
    TOP,
    BOTTOM,
    LEFT,
    RIGHT;

    static /* synthetic */ SideTouchEventDetector$SideTouchArea access$000(MotionEvent motionEvent, int i) {
        return fromMotionEvent(motionEvent, i);
    }

    static /* synthetic */ SideTouchEventDetector$SideTouchArea access$400(int i) {
        return fromCode(i);
    }

    private static SideTouchEventDetector$SideTouchArea fromMotionEvent(MotionEvent motionEvent, int i) {
        return fromCode(SideTouchUtils.getLogicalScreenSide(motionEvent, i));
    }

    private static SideTouchEventDetector$SideTouchArea fromCode(int i) {
        if (i == 4) {
            return TOP;
        }
        if (i == 8) {
            return BOTTOM;
        }
        switch (i) {
            case 1:
                return LEFT;
            case 2:
                return RIGHT;
            default:
                return UNKNOWN;
        }
    }
}
