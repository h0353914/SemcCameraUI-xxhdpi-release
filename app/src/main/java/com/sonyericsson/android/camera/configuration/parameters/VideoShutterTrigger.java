package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.UserSettingKey;

/* JADX INFO: loaded from: classes.dex */
public enum VideoShutterTrigger implements UserSettingValue {
    SMILE_SHUTTER(2131690163, VideoSmileCapture.MIDDLE),
    OFF(2131690115, VideoSmileCapture.OFF);

    public static final String TAG = "VideoShutterTrigger";
    private static final int sParameterTextId = 2131690244;
    private final int mTextId;
    private VideoSmileCapture mVideoSmileCapture;

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getIconId() {
        return -1;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getKeyTextId() {
        return 2131690244;
    }

    VideoShutterTrigger(int i, VideoSmileCapture videoSmileCapture) {
        this.mVideoSmileCapture = videoSmileCapture;
        this.mTextId = i;
    }

    public static VideoShutterTrigger[] getOptions(CapturingMode capturingMode, boolean z) {
        if (z) {
            return new VideoShutterTrigger[]{OFF};
        }
        return values();
    }

    public static VideoShutterTrigger getDefaultValue(CapturingMode capturingMode, boolean z) {
        return getOptions(capturingMode, z)[0];
    }

    public VideoSmileCapture getVideoSmileCapture() {
        return this.mVideoSmileCapture;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public void apply(UserSettingApplicable userSettingApplicable) {
        userSettingApplicable.set(this);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public UserSettingKey getKey() {
        return UserSettingKey.VIDEO_SHUTTER_TRIGGER;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public String getName() {
        return getClass().getSimpleName();
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getTextId() {
        return this.mTextId;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public String getValue() {
        return toString();
    }
}
