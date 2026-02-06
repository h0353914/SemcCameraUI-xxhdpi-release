package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import java.util.List;

public enum FusionMode implements UserSettingValue {
    OFF(2131231102, 2131690115, "off"),
    ON(2131231097, 2131690116, "on"),
    AUTO(2131231097, 2131690114, "auto");

    private static final String TAG = "FusionMode";
    private final int mIconId;
    private final int mTextId;
    private final String mValue;

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getKeyTextId() {
        return -1;
    }

    FusionMode(int i, int i2, String str) {
        this.mIconId = i;
        this.mTextId = i2;
        this.mValue = str;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public void apply(UserSettingApplicable userSettingApplicable) {
        userSettingApplicable.set(this);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public UserSettingKey getKey() {
        return UserSettingKey.FUSION_MODE;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getIconId() {
        return this.mIconId;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getTextId() {
        return this.mTextId;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public String getValue() {
        return this.mValue;
    }

    public static FusionMode[] getOptions(CapturingMode capturingMode) {
        if (PlatformCapability.isHighSensitivityFusionSupported(capturingMode.getCameraId())) {
            List<String> list = PlatformCapability.getCameraCapability(capturingMode.getCameraId()).FUSION_MODE.get();
            switch (capturingMode) {
                case VIDEO:
                case SCENE_RECOGNITION:
                    if (list.contains("auto")) {
                        return new FusionMode[]{AUTO, OFF};
                    }
                    break;
                case NORMAL:
                    if (list.contains("on")) {
                        return new FusionMode[]{OFF, ON};
                    }
                    break;
            }
        }
        return new FusionMode[]{OFF};
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public String getName() {
        return getClass().getName();
    }

    public static FusionMode getDefaultValue(CapturingMode capturingMode) {
        if (PlatformCapability.isHighSensitivityFusionSupported(capturingMode.getCameraId())) {
            List<String> list = PlatformCapability.getCameraCapability(capturingMode.getCameraId()).FUSION_MODE.get();
            if (FusionMode$1.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()] == 2 && list.contains("auto")) {
                return AUTO;
            }
        }
        return OFF;
    }
}
