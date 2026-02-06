package com.sonyericsson.cameracommon.status.eachcamera;

import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.EnumValue;

public class FaceIdentification extends EnumValue<FaceIdentification$Value> implements EachCameraStatusValue {
    public static final FaceIdentification$Value DEFAULT_VALUE = FaceIdentification$Value.OFF;
    public static final String KEY = "face_identification";
    private static int REQUIRED_PROVIDER_VERSION = 1;

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public String getKey() {
        return "face_identification";
    }

    public FaceIdentification(FaceIdentification$Value faceIdentification$Value) {
        super(faceIdentification$Value);
    }

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public int minRequiredVersion() {
        return REQUIRED_PROVIDER_VERSION;
    }
}
