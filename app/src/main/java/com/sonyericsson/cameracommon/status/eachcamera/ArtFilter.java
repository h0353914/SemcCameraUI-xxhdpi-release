package com.sonyericsson.cameracommon.status.eachcamera;

import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.EnumValue;

public class ArtFilter extends EnumValue<ArtFilter$Value> implements EachCameraStatusValue {
    public static final ArtFilter$Value DEFAULT_VALUE = ArtFilter$Value.OFF;
    public static final String KEY = "art_filter";
    private static final int REQUIRED_VERSION = 1;

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public String getKey() {
        return "art_filter";
    }

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public int minRequiredVersion() {
        return 1;
    }

    public ArtFilter(ArtFilter$Value artFilter$Value) {
        super(artFilter$Value);
    }
}
