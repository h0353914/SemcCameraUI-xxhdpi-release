package com.sonyericsson.cameracommon.status.eachcamera;

import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.EnumValue;

public class OnlineRemote extends EnumValue<OnlineRemote$Value> implements EachCameraStatusValue {
    public static final OnlineRemote$Value DEFAULT_VALUE = OnlineRemote$Value.OFF;
    public static final String KEY = "online_remote";
    private static final int REQUIRED_VERSION = 10;

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public String getKey() {
        return "online_remote";
    }

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public int minRequiredVersion() {
        return 10;
    }

    public OnlineRemote(OnlineRemote$Value onlineRemote$Value) {
        super(onlineRemote$Value);
    }
}
