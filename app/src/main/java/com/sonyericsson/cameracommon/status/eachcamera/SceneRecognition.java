package com.sonyericsson.cameracommon.status.eachcamera;

import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.EnumValue;

public class SceneRecognition extends EnumValue<SceneRecognition$Value> implements EachCameraStatusValue {
    public static final SceneRecognition$Value DEFAULT_VALUE = SceneRecognition$Value.OFF;
    public static final String KEY = "scene_recognition";
    private static int REQUIRED_PROVIDER_VERSION = 1;

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public String getKey() {
        return "scene_recognition";
    }

    public SceneRecognition(SceneRecognition$Value sceneRecognition$Value) {
        super(sceneRecognition$Value);
    }

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public int minRequiredVersion() {
        return REQUIRED_PROVIDER_VERSION;
    }
}
