package com.sonyericsson.android.camera.gestureshutter;

import android.graphics.Rect;

class HandSignsDetector$DetectResult implements HandSignsDetectorInterface$DetectResultInterface {
    public static final int AHS_STATUS_CLICKDOWN = 2097152;
    public static final int AHS_STATUS_CLICKUP = 4194304;
    public static final int AHS_STATUS_NONE = 0;
    public static final int AHS_STATUS_PALM = 16;
    private Rect mArea = new Rect();
    private HandSignsDetectorInterface$DetectResultInterface$HandStatus mStatus;

    HandSignsDetector$DetectResult() {
    }

    public void setAreaAndStatus(int i, int i2, int i3, int i4, int i5) {
        this.mArea.left = i;
        this.mArea.right = i3;
        this.mArea.top = i2;
        this.mArea.bottom = i4;
        this.mStatus = i5 == 16 ? HandSignsDetectorInterface$DetectResultInterface$HandStatus.PALM : HandSignsDetectorInterface$DetectResultInterface$HandStatus.NONE;
    }

    @Override // com.sonyericsson.android.camera.gestureshutter.HandSignsDetectorInterface$DetectResultInterface
    public Rect getArea() {
        return this.mArea;
    }

    @Override // com.sonyericsson.android.camera.gestureshutter.HandSignsDetectorInterface$DetectResultInterface
    public HandSignsDetectorInterface$DetectResultInterface$HandStatus getStatus() {
        return this.mStatus;
    }

    public String toString() {
        return getStatus() + " - " + getArea();
    }
}
