package com.sonyericsson.cameracommon.utility;

import android.graphics.Rect;

enum ViewUtility$ScreenSize {
    WUXGA(1920, 1200),
    FULL_HD(1920, 1080),
    HD(1280, 720);

    private final int mHeight;
    private final int mWidth;

    ViewUtility$ScreenSize(int i, int i2) {
        this.mWidth = i;
        this.mHeight = i2;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public Rect getAsRect() {
        return new Rect(0, 0, this.mWidth, this.mHeight);
    }
}
