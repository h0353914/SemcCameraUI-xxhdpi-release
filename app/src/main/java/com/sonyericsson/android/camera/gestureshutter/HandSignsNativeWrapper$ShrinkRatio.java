package com.sonyericsson.android.camera.gestureshutter;

public enum HandSignsNativeWrapper$ShrinkRatio {
    ONE(1),
    HALF(2),
    QUARTER(4),
    ONE_EIGHTH(8);

    public final int shrinkSize;

    HandSignsNativeWrapper$ShrinkRatio(int i) {
        this.shrinkSize = i;
    }
}
