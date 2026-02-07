package com.sonymobile.imageprocessor.bypasscamera2;

/* JADX INFO: loaded from: classes.dex */
public enum BypassCamera$PhotoMode {
    NORMAL(0);

    private final int mModeCode;

    static /* synthetic */ int access$100(BypassCamera$PhotoMode bypassCamera$PhotoMode) {
        return bypassCamera$PhotoMode.getModeCode();
    }

    BypassCamera$PhotoMode(int i) {
        this.mModeCode = i;
    }

    private int getModeCode() {
        return this.mModeCode;
    }
}
