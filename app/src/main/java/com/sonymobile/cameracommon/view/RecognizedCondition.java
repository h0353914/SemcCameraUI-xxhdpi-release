package com.sonymobile.cameracommon.view;

import com.sonyericsson.android.camera.device.CameraParameters$DeviceStabilityCondition;

public class RecognizedCondition {
    private final CameraParameters$DeviceStabilityCondition mCondition;
    private final int mIconId;
    private final int mTextId;

    private RecognizedCondition(CameraParameters$DeviceStabilityCondition cameraParameters$DeviceStabilityCondition, int i, int i2) {
        this.mCondition = cameraParameters$DeviceStabilityCondition;
        this.mIconId = i;
        this.mTextId = i2;
    }

    public static RecognizedCondition create(CameraParameters$DeviceStabilityCondition cameraParameters$DeviceStabilityCondition) {
        if (cameraParameters$DeviceStabilityCondition == null) {
            return new RecognizedCondition(null, -1, -1);
        }
        switch (cameraParameters$DeviceStabilityCondition) {
            case AUTO:
                return new RecognizedCondition(cameraParameters$DeviceStabilityCondition, -1, -1);
            case MOTION:
                return new RecognizedCondition(cameraParameters$DeviceStabilityCondition, 2131230925, -1);
            case STABLE:
                return new RecognizedCondition(cameraParameters$DeviceStabilityCondition, 2131230926, -1);
            case WALK:
                return new RecognizedCondition(cameraParameters$DeviceStabilityCondition, 2131230927, -1);
            default:
                return new RecognizedCondition(cameraParameters$DeviceStabilityCondition, -1, -1);
        }
    }

    public CameraParameters$DeviceStabilityCondition getCondition() {
        return this.mCondition;
    }

    public int getIconId() {
        return this.mIconId;
    }

    public int getTextId() {
        return this.mTextId;
    }
}
