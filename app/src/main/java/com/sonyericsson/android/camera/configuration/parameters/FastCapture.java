package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import java.util.ArrayList;

public enum FastCapture implements UserSettingValue {
    LAUNCH_AND_CAPTURE(-1, 2131689820, 1, true),
    LAUNCH_ONLY(-1, 2131689822, 1, true),
    OFF(-1, 2131690115, 0, false);

    public static final String TAG = "FastCapture";
    private static final int sParameterTextId = 2131689828;
    private final boolean mBooleanValue;
    private final int mIconId;
    private final int mTextId;
    private final int mType;
    private String mValue;

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getKeyTextId() {
        return 2131689828;
    }

    public int getParameterkeyTitleTextId() {
        return 2131689827;
    }

    FastCapture(int i, int i2, int i3, boolean z) {
        this.mIconId = i;
        this.mTextId = i2;
        this.mType = i3;
        this.mBooleanValue = z;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public void apply(UserSettingApplicable userSettingApplicable) {
        userSettingApplicable.set(this);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public UserSettingKey getKey() {
        return UserSettingKey.FAST_CAPTURE;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getIconId() {
        return this.mIconId;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getTextId() {
        return this.mTextId;
    }

    public int getCameraType() {
        return this.mType;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public String getValue() {
        return this.mValue;
    }

    public boolean getBooleanValue() {
        return this.mBooleanValue;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public String getName() {
        return getClass().getName();
    }

    public static FastCapture[] getOptions() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(LAUNCH_ONLY);
        arrayList.add(LAUNCH_AND_CAPTURE);
        arrayList.add(OFF);
        return (FastCapture[]) arrayList.toArray(new FastCapture[0]);
    }

    public static FastCapture getDefault() {
        return LAUNCH_ONLY;
    }
}
