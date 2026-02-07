package com.sonyericsson.cameracommon.status.eachcamera;

import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.EnumValue;

/* JADX INFO: loaded from: classes.dex */
public class Metadata extends EnumValue<Metadata$Value> implements EachCameraStatusValue {
    public static final Metadata$Value DEFAULT_VALUE = Metadata$Value.OFF;
    public static final String KEY = "metadata";
    private static int REQUIRED_PROVIDER_VERSION = 10;

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public String getKey() {
        return "metadata";
    }

    public Metadata(Metadata$Value metadata$Value) {
        super(metadata$Value);
    }

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public int minRequiredVersion() {
        return REQUIRED_PROVIDER_VERSION;
    }
}
