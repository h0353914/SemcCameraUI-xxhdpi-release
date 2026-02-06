package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.UserSettingKey;

public enum Geotag implements UserSettingValue {
    ON(-1, 2131690116, true),
    OFF(-1, 2131690115, false);

    public static final String TAG = "Geotag";
    private static final int sParameterTextId = 2131689857;
    private final boolean mBooleanValue;
    private final int mIconId;
    private final int mTextId;

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getKeyTextId() {
        return 2131689857;
    }

    Geotag(int i, int i2, boolean z) {
        this.mIconId = i;
        this.mTextId = i2;
        this.mBooleanValue = z;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public void apply(UserSettingApplicable userSettingApplicable) {
        userSettingApplicable.set(this);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public UserSettingKey getKey() {
        return UserSettingKey.GEO_TAG;
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

    public boolean isGeotagOn() {
        return this.mBooleanValue;
    }

    public static Geotag[] getOptions() {
        return new Geotag[]{ON, OFF};
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public String getName() {
        return getClass().getName();
    }
}
