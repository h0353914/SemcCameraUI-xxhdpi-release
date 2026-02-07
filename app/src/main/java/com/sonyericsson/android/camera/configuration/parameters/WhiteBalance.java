package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public enum WhiteBalance implements UserSettingValue {
    INCANDESCENT(2131231088, 2131690259, "incandescent", 2131231093),
    FLUORESCENT(2131231087, 2131690258, "fluorescent", 2131231092),
    DAYLIGHT(2131231086, 2131690257, "daylight", 2131231091),
    CLOUDY_DAYLIGHT(2131231085, 2131690256, "cloudy-daylight", 2131231090),
    AUTO(2131231082, 2131690255, "auto", 2131231089);

    public static final String TAG = "WhiteBalance";
    private static final int sParameterTextId = 2131690261;
    private final int mIconId;
    private final int mTabIconId;
    private final int mTextId;
    private final String mValue;

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getKeyTextId() {
        return 2131690261;
    }

    WhiteBalance(int i, int i2, String str, int i3) {
        this.mIconId = i;
        this.mTextId = i2;
        this.mValue = str;
        this.mTabIconId = i3;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public void apply(UserSettingApplicable userSettingApplicable) {
        userSettingApplicable.set(this);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public UserSettingKey getKey() {
        return UserSettingKey.WHITE_BALANCE;
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

    public static WhiteBalance[] getOptions(CapturingMode capturingMode) {
        ArrayList arrayList = new ArrayList();
        List<String> list = PlatformCapability.getCameraCapability(capturingMode.getCameraId()).WHITE_BALANCE.get();
        if (!list.isEmpty()) {
            if (capturingMode == CapturingMode.SCENE_RECOGNITION || capturingMode == CapturingMode.SUPERIOR_FRONT) {
                arrayList.add(AUTO);
            } else {
                for (WhiteBalance whiteBalance : values()) {
                    Iterator<String> it = list.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (whiteBalance.getValue().equals(it.next())) {
                                arrayList.add(whiteBalance);
                                break;
                            }
                        }
                    }
                }
            }
        }
        return (WhiteBalance[]) arrayList.toArray(new WhiteBalance[0]);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public String getName() {
        return getClass().getName();
    }

    public int getTabIconId() {
        return this.mTabIconId;
    }
}
