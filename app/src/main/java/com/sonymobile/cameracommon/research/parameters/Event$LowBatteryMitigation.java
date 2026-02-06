package com.sonymobile.cameracommon.research.parameters;

public enum Event$LowBatteryMitigation implements Event$Action {
    FAIL_TO_START,
    FORCE_QUIT;

    public static Event$LowBatteryMitigation getType(boolean z) {
        return z ? FAIL_TO_START : FORCE_QUIT;
    }
}
