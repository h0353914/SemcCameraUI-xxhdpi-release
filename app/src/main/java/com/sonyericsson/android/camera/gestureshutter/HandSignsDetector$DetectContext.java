package com.sonyericsson.android.camera.gestureshutter;

class HandSignsDetector$DetectContext {
    private int mDetectHeight;
    private int mDetectWidth;
    private byte[] mFrame;
    private boolean mIsInitialized;
    private HandSignsNativeWrapper$ShrinkRatio mShrinkRatio;

    private HandSignsDetector$DetectContext() {
    }

    /* synthetic */ HandSignsDetector$DetectContext(HandSignsDetector$1 handSignsDetector$1) {
        this();
    }

    void initialize(int i, int i2) {
        int i3 = 0;
        do {
            if (i <= 640 && i2 <= 480) {
                break;
            }
            i /= 2;
            i2 /= 2;
            i3++;
        } while (i3 != HandSignsNativeWrapper$ShrinkRatio.values().length - 1);
        if (this.mDetectWidth != i || this.mDetectHeight != i2) {
            this.mDetectWidth = i;
            this.mDetectHeight = i2;
            this.mFrame = null;
        }
        if (this.mFrame == null) {
            this.mFrame = new byte[(int) (this.mDetectWidth * this.mDetectHeight * 1.5f)];
        }
        this.mShrinkRatio = HandSignsNativeWrapper$ShrinkRatio.values()[i3];
        this.mIsInitialized = true;
    }

    boolean isInitialized() {
        return this.mIsInitialized;
    }

    byte[] getFrame() {
        return this.mFrame;
    }

    int getDetectWidth() {
        return this.mDetectWidth;
    }

    int getDetectHeight() {
        return this.mDetectHeight;
    }

    HandSignsNativeWrapper$ShrinkRatio getShrinkRatio() {
        return this.mShrinkRatio;
    }

    void reset() {
        this.mShrinkRatio = null;
        this.mIsInitialized = false;
    }
}
