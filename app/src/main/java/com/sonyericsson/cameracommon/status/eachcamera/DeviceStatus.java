package com.sonyericsson.cameracommon.status.eachcamera;

import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.EnumValue;

public class DeviceStatus extends EnumValue<DeviceStatus$Value> implements EachCameraStatusValue {
    public static final DeviceStatus$Value DEFAULT_VALUE = DeviceStatus$Value.POWER_OFF;
    public static final String KEY = "device_status";
    private static int REQUIRED_PROVIDER_VERSION = 1;

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public String getKey() {
        return "device_status";
    }

    public DeviceStatus(DeviceStatus$Value deviceStatus$Value) {
        super(deviceStatus$Value);
    }

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public int minRequiredVersion() {
        return REQUIRED_PROVIDER_VERSION;
    }
}
