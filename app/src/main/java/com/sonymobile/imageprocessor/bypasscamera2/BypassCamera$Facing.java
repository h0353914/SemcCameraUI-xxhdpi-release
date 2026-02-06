package com.sonymobile.imageprocessor.bypasscamera2;

public enum BypassCamera$Facing {
    BACK(0),
    FRONT(1);

    private final int mCameraId;

    static /* synthetic */ int access$000(BypassCamera$Facing bypassCamera$Facing) {
        return bypassCamera$Facing.getCameraId();
    }

    BypassCamera$Facing(int i) {
        this.mCameraId = i;
    }

    private int getCameraId() {
        return this.mCameraId;
    }
}
