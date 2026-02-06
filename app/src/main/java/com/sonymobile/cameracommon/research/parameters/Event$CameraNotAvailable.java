package com.sonymobile.cameracommon.research.parameters;

public enum Event$CameraNotAvailable implements Event$Action {
    FAILED_TO_OPEN,
    OTHER;

    public static Event$CameraNotAvailable getType(boolean z) {
        return z ? FAILED_TO_OPEN : OTHER;
    }
}
