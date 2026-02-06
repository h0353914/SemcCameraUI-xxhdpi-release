package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import java.util.ArrayList;
import java.util.List;

public enum Hdr implements UserSettingValue {
    HDR_ON(2131231054, 2131690116, "on-still-hdr"),
    HDR_AUTO(2131231054, 2131690116, "auto"),
    HDR_OFF(2131231053, 2131690115, "off");

    public static final String TAG = "Hdr";
    private static final int sParameterTextId = 2131689871;
    private final int mIconId;
    private final int mTextId;
    private final String mValue;

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getKeyTextId() {
        return 2131689871;
    }

    Hdr(int i, int i2, String str) {
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
        return UserSettingKey.HDR;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public String getName() {
        return getClass().getName();
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

    public static Hdr[] getOptions(CapturingMode capturingMode) {
        ArrayList arrayList = new ArrayList();
        List<String> list = PlatformCapability.getCameraCapability(capturingMode.getCameraId()).HDR.get();
        if (capturingMode == CapturingMode.SCENE_RECOGNITION || capturingMode == CapturingMode.SUPERIOR_FRONT) {
            if (list.contains(HDR_AUTO.getValue())) {
                arrayList.add(HDR_AUTO);
            }
        } else if (capturingMode.getType() == 1 && list.contains(HDR_ON.getValue())) {
            arrayList.add(HDR_ON);
            arrayList.add(HDR_OFF);
        }
        return (Hdr[]) arrayList.toArray(new Hdr[0]);
    }

    public static Hdr getDefault(CapturingMode capturingMode) {
        if (capturingMode == CapturingMode.SCENE_RECOGNITION || capturingMode == CapturingMode.SUPERIOR_FRONT) {
            return HDR_AUTO;
        }
        return HDR_OFF;
    }

    public static boolean isResolutionIndependentHdrSupported(List<String> list) {
        return list.contains("hdr");
    }
}
