package com.sonymobile.imageprocessor.bypasscamera2;

public enum BypassCamera$VideoMode {
    NORMAL(0),
    STEADYSHOT(1),
    INTELLIGENTACTIVE(2),
    HDR(3),
    HDR_STEADYSHOT(4);

    private final int mModeCode;

    static /* synthetic */ int access$200(BypassCamera$VideoMode bypassCamera$VideoMode) {
        return bypassCamera$VideoMode.getModeCode();
    }

    BypassCamera$VideoMode(int i) {
        this.mModeCode = i;
    }

    private int getModeCode() {
        return this.mModeCode;
    }
}
