package com.sonyericsson.android.camera.view.baselayout;

public enum LayoutDependencyResolver$ScreenAspect {
    NOT_DEFINED(-1.0f),
    SIXTEEN_NINE(1.7777778f),
    EIGHTEEN_NINE(2.0f);

    private final float mScreenAspectRatio;

    LayoutDependencyResolver$ScreenAspect(float f) {
        this.mScreenAspectRatio = f;
    }

    public float getScreenAspectRatio() {
        return this.mScreenAspectRatio;
    }
}
