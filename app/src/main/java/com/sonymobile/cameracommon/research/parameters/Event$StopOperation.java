package com.sonymobile.cameracommon.research.parameters;

public enum Event$StopOperation implements Event$Action {
    USER_STOP,
    THERMAL_STOP,
    LOWBATTERY_STOP,
    SIDE_SENSE_STOP;

    public static Event$StopOperation getType(boolean z, boolean z2) {
        if (z) {
            return THERMAL_STOP;
        }
        if (z2) {
            return LOWBATTERY_STOP;
        }
        return USER_STOP;
    }
}
