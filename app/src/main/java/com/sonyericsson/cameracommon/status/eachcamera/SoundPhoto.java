package com.sonyericsson.cameracommon.status.eachcamera;

import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.EnumValue;

public class SoundPhoto extends EnumValue<SoundPhoto$Value> implements EachCameraStatusValue {
    public static final SoundPhoto$Value DEFAULT_VALUE = SoundPhoto$Value.OFF;
    public static final String KEY = "sound_photo";
    private static final int REQUIRED_VERSION = 10;

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public String getKey() {
        return "sound_photo";
    }

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public int minRequiredVersion() {
        return 10;
    }

    public SoundPhoto(SoundPhoto$Value soundPhoto$Value) {
        super(soundPhoto$Value);
    }
}
