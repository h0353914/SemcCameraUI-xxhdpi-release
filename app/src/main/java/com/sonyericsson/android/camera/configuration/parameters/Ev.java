package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.util.capability.CameraCapabilityList;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public enum Ev implements UserSettingValue {
    M6_3(2131231032, 2131689882, -2.0f),
    M5_3(2131231032, 2131689881, -1.7f),
    M4_3(2131231032, 2131689880, -1.3f),
    M3_3(2131231032, 2131689879, -1.0f),
    M2_3(2131231032, 2131689878, -0.7f),
    M1_3(2131231032, 2131689877, -0.3f),
    ZERO(2131231031, 2131689889, 0.0f),
    P1_3(2131231032, 2131689883, 0.3f),
    P2_3(2131231032, 2131689884, 0.7f),
    P3_3(2131231032, 2131689885, 1.0f),
    P4_3(2131231032, 2131689886, 1.3f),
    P5_3(2131231032, 2131689887, 1.7f),
    P6_3(2131231032, 2131689888, 2.0f);

    public static final String TAG = "Ev";
    private static final int sParameterTextId = 2131689812;
    private final int mIconId;
    private int mIndex;
    private final int mTextId;
    private final float mValue;

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getKeyTextId() {
        return 2131689812;
    }

    Ev(int i, int i2, float f) {
        this.mIconId = i;
        this.mTextId = i2;
        this.mValue = f;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public void apply(UserSettingApplicable userSettingApplicable) {
        userSettingApplicable.set(this);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public UserSettingKey getKey() {
        return UserSettingKey.EV;
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
        return toString();
    }

    public int getIntValue() {
        return this.mIndex;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public String getName() {
        return getClass().getName();
    }

    public static Ev[] getOptions(CapturingMode capturingMode) {
        ArrayList arrayList = new ArrayList();
        CameraCapabilityList cameraCapability = PlatformCapability.getCameraCapability(capturingMode.getCameraId());
        int iIntValue = cameraCapability.EV_MAX.get().intValue();
        int iIntValue2 = cameraCapability.EV_MIN.get().intValue();
        if (iIntValue != 0 || iIntValue2 != 0) {
            float fFloatValue = cameraCapability.EV_STEP.get().floatValue();
            for (Ev ev : values()) {
                int i = iIntValue2;
                while (true) {
                    if (i > iIntValue) {
                        break;
                    }
                    if (((int) (((double) (i * fFloatValue * 10.0f)) + 0.5d)) == ((int) (((double) (ev.mValue * 10.0f)) + 0.5d))) {
                        ev.mIndex = i;
                        arrayList.add(ev);
                        break;
                    }
                    i++;
                }
            }
        }
        return (Ev[]) arrayList.toArray(new Ev[0]);
    }
}
