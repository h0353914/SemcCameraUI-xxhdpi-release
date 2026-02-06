package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public enum Metering implements UserSettingValue {
    FACE(-1, 2131689999, "face"),
    MULTI(-1, 2131689947, "multi"),
    CENTER(-1, 2131689998, "center-weighted"),
    SPOT(-1, 2131690000, "spot"),
    AVERAGE(-1, 2131689997, "frame-average"),
    TOUCH(-1, 2131690002, "face");

    public static final String TAG = "Metering";
    private static final int sParameterTextId = 2131690003;
    private final int mIconId;
    private final int mTextId;
    private final String mValue;

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getKeyTextId() {
        return 2131690003;
    }

    Metering(int i, int i2, String str) {
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
        return UserSettingKey.METERING;
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

    public static Metering[] getOptions(CapturingMode capturingMode) {
        ArrayList arrayList = new ArrayList();
        List<String> list = PlatformCapability.getCameraCapability(capturingMode.getCameraId()).METERING.get();
        if (!list.isEmpty()) {
            if (capturingMode == CapturingMode.SCENE_RECOGNITION || capturingMode == CapturingMode.FRONT_PHOTO || capturingMode == CapturingMode.SUPERIOR_FRONT || capturingMode == CapturingMode.FRONT_VIDEO || capturingMode == CapturingMode.SLOW_MOTION || capturingMode == CapturingMode.VIDEO) {
                arrayList.add(getDefaultValue(capturingMode));
            } else {
                for (Metering metering : values()) {
                    if (isParameterSupported(metering, list)) {
                        arrayList.add(metering);
                    }
                }
            }
        }
        return (Metering[]) arrayList.toArray(new Metering[0]);
    }

    private static boolean isParameterSupported(Metering metering, List<String> list) {
        if (metering == TOUCH) {
            return false;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (metering.getValue().equals(it.next())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public String getName() {
        return getClass().getName();
    }

    public static Metering getDefaultValue(CapturingMode capturingMode) {
        if (PlatformCapability.getCameraCapability(capturingMode.getCameraId()).METERING.get().contains(FACE.mValue)) {
            return FACE;
        }
        return CENTER;
    }
}
