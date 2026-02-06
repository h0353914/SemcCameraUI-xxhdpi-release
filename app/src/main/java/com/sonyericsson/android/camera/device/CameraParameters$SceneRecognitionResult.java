package com.sonyericsson.android.camera.device;

public class CameraParameters$SceneRecognitionResult {
    public CameraParameters$DeviceStabilityCondition deviceStabilityCondition;
    public boolean isMacroRange;
    public CameraParameterConverter$SceneMode sceneMode;

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        sb.append(this.sceneMode);
        sb.append(',');
        sb.append(this.deviceStabilityCondition);
        sb.append(',');
        sb.append(this.isMacroRange);
        sb.append(']');
        return sb.toString();
    }
}
