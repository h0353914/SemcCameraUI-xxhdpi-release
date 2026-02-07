package com.sonymobile.imageprocessor.bypasscamera2;

/* JADX INFO: loaded from: classes.dex */
public enum BypassCamera$SuperSlowMode {
    SUPER_SLOW_MOTION(0),
    SUPER_SLOW_SHOT(1);

    private final int mModeCode;

    static /* synthetic */ int access$300(BypassCamera$SuperSlowMode bypassCamera$SuperSlowMode) {
        return bypassCamera$SuperSlowMode.getModeCode();
    }

    BypassCamera$SuperSlowMode(int i) {
        this.mModeCode = i;
    }

    private int getModeCode() {
        return this.mModeCode;
    }
}
