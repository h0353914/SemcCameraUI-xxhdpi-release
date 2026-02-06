package com.sonyericsson.android.camera.view.baselayout;

public enum ViewFinderGestureDetector$Direction {
    NONE(0),
    VERTICAL(1),
    HORIZONTAL(2);

    int flag;

    static /* synthetic */ boolean access$000(ViewFinderGestureDetector$Direction viewFinderGestureDetector$Direction, int i) {
        return viewFinderGestureDetector$Direction.isAccepted(i);
    }

    ViewFinderGestureDetector$Direction(int i) {
        this.flag = i;
    }

    private boolean isAccepted(int i) {
        return (i & this.flag) == this.flag;
    }
}
