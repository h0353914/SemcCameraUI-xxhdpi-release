package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.UserSettingKey;

/* JADX INFO: loaded from: classes.dex */
public enum DistortionCorrection implements UserSettingValue {
    OFF(-1, 2131689931, "off"),
    ON(-1, 2131689932, "on");

    private static final int sParameterTextId = UserSettingKey.DISTORTION_CORRECTION.getTitleTextId();
    private final int mIconId;
    private final int mTextId;
    private final String mValue;

    DistortionCorrection(int i, int i2, String str) {
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
        return UserSettingKey.DISTORTION_CORRECTION;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public String getName() {
        return getClass().getName();
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getKeyTextId() {
        return sParameterTextId;
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

    public static DistortionCorrection[] getOptions() {
        return values();
    }
}
