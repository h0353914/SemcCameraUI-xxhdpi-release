package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;

public enum SmileCapture implements UserSettingValue {
    HIGH(-1, 2131690159, 2131231404, 70, 2131165647, true),
    MIDDLE(-1, 2131690161, 2131231406, 55, 2131165649, true),
    LOW(-1, 2131690160, 2131231405, 40, 2131165648, true),
    OFF(-1, 2131690115, -1, 999, -1, false);

    public static final String TAG = "SmileCapture";
    private static final int sParameterTextId = 2131690163;
    private final int mDimenId;
    private final int mIconId;
    private final boolean mIsSmileCaptureOn;
    private final int mNotificationIconId;
    private final int mScoreThreshold;
    private final int mTextId;
    private final String mValue;

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public void apply(UserSettingApplicable userSettingApplicable) {
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getKeyTextId() {
        return 2131690163;
    }

    SmileCapture(int i, int i2, int i3, int i4, int i5, boolean z) {
        this.mIconId = i;
        this.mTextId = i2;
        this.mNotificationIconId = i3;
        this.mScoreThreshold = i4;
        this.mDimenId = i5;
        this.mIsSmileCaptureOn = z;
        if (z) {
            this.mValue = "on";
        } else {
            this.mValue = "off";
        }
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public UserSettingKey getKey() {
        return UserSettingKey.SMILE_CAPTURE;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getIconId() {
        return this.mIconId;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getTextId() {
        return this.mTextId;
    }

    public int getNotificationIconId() {
        return this.mNotificationIconId;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public String getValue() {
        return this.mValue;
    }

    public static SmileCapture[] getOptions(CapturingMode capturingMode) {
        if (PlatformCapability.getCameraCapability(capturingMode.getCameraId()).SMILE_DETECTION.get().booleanValue()) {
            return values();
        }
        return new SmileCapture[0];
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public String getName() {
        return getClass().getName();
    }

    public int getIntValue() {
        return this.mScoreThreshold;
    }

    public int getDimenId() {
        return this.mDimenId;
    }

    public boolean isSmileCaptureOn() {
        return this.mIsSmileCaptureOn;
    }
}
