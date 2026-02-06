package com.sonyericsson.cameracommon.status.eachcamera;

import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.EnumValue;

public class FaceDetection extends EnumValue<FaceDetection$Value> implements EachCameraStatusValue {
    public static final FaceDetection$Value DEFAULT_VALUE = FaceDetection$Value.OFF;
    public static final String KEY = "face_detection";
    private static int REQUIRED_PROVIDER_VERSION = 1;

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public String getKey() {
        return "face_detection";
    }

    public FaceDetection(FaceDetection$Value faceDetection$Value) {
        super(faceDetection$Value);
    }

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public int minRequiredVersion() {
        return REQUIRED_PROVIDER_VERSION;
    }
}
