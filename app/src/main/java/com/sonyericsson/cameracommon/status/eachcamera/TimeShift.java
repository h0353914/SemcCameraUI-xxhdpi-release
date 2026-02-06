package com.sonyericsson.cameracommon.status.eachcamera;

import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.EnumValue;

public class TimeShift extends EnumValue<TimeShift$Value> implements EachCameraStatusValue {
    public static final TimeShift$Value DEFAULT_VALUE = TimeShift$Value.OFF;
    public static final String KEY = "time_shift";
    private static final int REQUIRED_VERSION = 1;

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public String getKey() {
        return "time_shift";
    }

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public int minRequiredVersion() {
        return 1;
    }

    public TimeShift(TimeShift$Value timeShift$Value) {
        super(timeShift$Value);
    }
}
