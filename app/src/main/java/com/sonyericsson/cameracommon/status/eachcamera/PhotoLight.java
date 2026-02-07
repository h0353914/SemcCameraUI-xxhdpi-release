package com.sonyericsson.cameracommon.status.eachcamera;

import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.EnumValue;

/* JADX INFO: loaded from: classes.dex */
public class PhotoLight extends EnumValue<PhotoLight$Value> implements EachCameraStatusValue {
    public static final PhotoLight$Value DEFAULT_VALUE = PhotoLight$Value.OFF;
    public static final String KEY = "photo_light";
    private static int REQUIRED_PROVIDER_VERSION = 1;

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public String getKey() {
        return "photo_light";
    }

    public PhotoLight(PhotoLight$Value photoLight$Value) {
        super(photoLight$Value);
    }

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public int minRequiredVersion() {
        return REQUIRED_PROVIDER_VERSION;
    }
}
