package com.sonyericsson.android.camera.device;

/* JADX INFO: loaded from: classes.dex */
public enum CameraParameters$DeviceStabilityCondition {
    AUTO(0),
    MOTION(1),
    STABLE(2),
    WALK(3);

    private final int mConditionValue;

    CameraParameters$DeviceStabilityCondition(int i) {
        this.mConditionValue = i;
    }

    private int getConditionValue() {
        return this.mConditionValue;
    }

    public static CameraParameters$DeviceStabilityCondition getCondition(int i) {
        CameraParameters$DeviceStabilityCondition[] cameraParameters$DeviceStabilityConditionArrValues = values();
        for (int i2 = 0; i2 < cameraParameters$DeviceStabilityConditionArrValues.length; i2++) {
            if (cameraParameters$DeviceStabilityConditionArrValues[i2].getConditionValue() == i) {
                return cameraParameters$DeviceStabilityConditionArrValues[i2];
            }
        }
        return null;
    }
}
