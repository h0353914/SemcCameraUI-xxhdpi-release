package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.util.capability.CameraCapabilityList;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import java.util.ArrayList;
import java.util.List;

public enum ShutterSpeed implements UserSettingValue {
    AUTO(-1, 2131689894, "auto", -1),
    D1(-1, 2131689893, "shutter-prio", 1),
    D2(-1, 2131689892, "shutter-prio", 2),
    D4(-1, 2131689902, "shutter-prio", 4),
    D8(-1, 2131689905, "shutter-prio", 8),
    D15(-1, 2131689897, "shutter-prio", 15),
    D30(-1, 2131689900, "shutter-prio", 30),
    D60(-1, 2131689904, "shutter-prio", 60),
    D125(-1, 2131689896, "shutter-prio", 125),
    D250(-1, 2131689899, "shutter-prio", 250),
    D500(-1, 2131689903, "shutter-prio", 500),
    D1000(-1, 2131689895, "shutter-prio", 1000),
    D2000(-1, 2131689898, "shutter-prio", 2000),
    D4000(-1, 2131689901, "shutter-prio", 4000);

    private static final int INVALID_VALUE = -1;
    private static int mIndexOfDefault = 1;
    private final String mAeMode;
    private final int mIconId;
    private final int mTextId;
    private final int mValue;

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getKeyTextId() {
        return 0;
    }

    ShutterSpeed(int i, int i2, String str, int i3) {
        this.mIconId = i;
        this.mTextId = i2;
        this.mAeMode = str;
        this.mValue = i3;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public void apply(UserSettingApplicable userSettingApplicable) {
        userSettingApplicable.set(this);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getIconId() {
        return this.mIconId;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public UserSettingKey getKey() {
        return UserSettingKey.SHUTTER_SPEED;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public String getName() {
        return getClass().getName();
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getTextId() {
        return this.mTextId;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public String getValue() {
        return this.mAeMode;
    }

    public int getShutterSpeedValue() {
        return this.mValue;
    }

    public long getShutterSpeedInNanoMillis() {
        return 1000000000 / this.mValue;
    }

    public static int getIndexOfDefault() {
        return mIndexOfDefault;
    }

    public static ShutterSpeed[] getOptions(CapturingMode capturingMode) {
        ArrayList arrayList = new ArrayList();
        CameraCapabilityList cameraCapability = PlatformCapability.getCameraCapability(capturingMode.getCameraId());
        List<String> list = cameraCapability.AE.get();
        if (list.isEmpty()) {
            return (ShutterSpeed[]) arrayList.toArray(new ShutterSpeed[0]);
        }
        if (list.contains(AUTO.getValue())) {
            arrayList.add(AUTO);
            if (capturingMode == CapturingMode.SCENE_RECOGNITION || capturingMode == CapturingMode.SUPERIOR_FRONT || capturingMode == CapturingMode.FRONT_PHOTO || capturingMode.getType() == 2) {
                return (ShutterSpeed[]) arrayList.toArray(new ShutterSpeed[0]);
            }
        }
        if (!list.contains("shutter-prio")) {
            return (ShutterSpeed[]) arrayList.toArray(new ShutterSpeed[0]);
        }
        List<String> list2 = cameraCapability.SHUTTER_SPEED_VALUES.get();
        for (ShutterSpeed shutterSpeed : values()) {
            if (list2.contains(Long.toString(shutterSpeed.getShutterSpeedInNanoMillis()))) {
                arrayList.add(shutterSpeed);
                if (shutterSpeed.getShutterSpeedValue() <= D125.getShutterSpeedValue()) {
                    mIndexOfDefault = arrayList.size() - 1;
                }
            }
        }
        return (ShutterSpeed[]) arrayList.toArray(new ShutterSpeed[0]);
    }
}
