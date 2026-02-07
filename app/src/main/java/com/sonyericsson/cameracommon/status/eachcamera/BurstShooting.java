package com.sonyericsson.cameracommon.status.eachcamera;

import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.EnumValue;

/* JADX INFO: loaded from: classes.dex */
public class BurstShooting extends EnumValue<BurstShooting$Value> implements EachCameraStatusValue {
    public static final BurstShooting$Value DEFAULT_VALUE = BurstShooting$Value.OFF;
    public static final String KEY = "burst_shooting";
    private static int REQUIRED_PROVIDER_VERSION = 1;

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public String getKey() {
        return "burst_shooting";
    }

    public BurstShooting(BurstShooting$Value burstShooting$Value) {
        super(burstShooting$Value);
    }

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public int minRequiredVersion() {
        return REQUIRED_PROVIDER_VERSION;
    }
}
