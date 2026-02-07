package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
public enum VideoCodec implements UserSettingValue {
    H264(-1, 2131690209),
    H265(-1, 2131690210);

    private static final String TAG = "VideoCodec";
    private static final int sParameterTextId = 2131690228;
    private final int mIconId;
    private final int mTextId;

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getKeyTextId() {
        return 2131690228;
    }

    VideoCodec(int i, int i2) {
        this.mIconId = i;
        this.mTextId = i2;
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

    public static VideoCodec[] getOptions(CapturingMode capturingMode) {
        if (VideoCodec$1.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()] == 1) {
            if (CamLog.VERBOSE) {
                CamLog.d("getOptions : H264, H265");
            }
            return new VideoCodec[]{H264, H265};
        }
        return new VideoCodec[0];
    }

    public static VideoCodec getDefaultValue() {
        return H264;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public void apply(UserSettingApplicable userSettingApplicable) {
        userSettingApplicable.set(this);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public UserSettingKey getKey() {
        return UserSettingKey.VIDEO_CODEC;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public String getName() {
        return getClass().getName();
    }
}
