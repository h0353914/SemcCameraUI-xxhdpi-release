package com.sonyericsson.cameracommon.status.eachcamera;

public enum DeviceStatus$Value {
    POWER_ON("power_on"),
    POWER_OFF("power_off"),
    STILL_PREVIEW("still_preview"),
    VIDEO_PREVIEW("video_preview"),
    PICTURE_TAKING("picture_taking"),
    VIDEO_RECORDING("video_recording"),
    PICTURE_TAKING_DURING_VIDEO_RECORDING("picture_taking_during_video_recording");

    private final String mStringExpression;

    DeviceStatus$Value(String str) {
        this.mStringExpression = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.mStringExpression;
    }
}
