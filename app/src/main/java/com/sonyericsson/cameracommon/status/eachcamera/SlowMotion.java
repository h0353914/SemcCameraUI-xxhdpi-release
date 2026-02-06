package com.sonyericsson.cameracommon.status.eachcamera;

import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.EnumValue;

public class SlowMotion extends EnumValue<SlowMotion$Value> implements EachCameraStatusValue {
    public static final SlowMotion$Value DEFAULT_VALUE = SlowMotion$Value.OFF;
    public static final String KEY = "slow_motion";
    private static int REQUIRED_PROVIDER_VERSION = 11;

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public String getKey() {
        return "slow_motion";
    }

    public SlowMotion(SlowMotion$Value slowMotion$Value) {
        super(slowMotion$Value);
    }

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public int minRequiredVersion() {
        return REQUIRED_PROVIDER_VERSION;
    }
}
