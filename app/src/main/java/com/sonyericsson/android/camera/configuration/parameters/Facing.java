package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.device.CameraInfo$CameraId;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;

/* JADX INFO: loaded from: classes.dex */
public enum Facing implements UserSettingValue {
    BACK(2131231095, 2131689610, CameraInfo$CameraId.BACK),
    FRONT(2131231095, 2131689612, CameraInfo$CameraId.FRONT);

    public static final String TAG = "Facing";
    private static Facing[] sOptions = null;
    private static final int sParameterTextId = 2131689665;
    private final int mIconId;
    private final int mTextId;
    private final CameraInfo$CameraId mValue;

    public static final void preload() {
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getKeyTextId() {
        return 2131689665;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public String getValue() {
        return null;
    }

    Facing(int i, int i2, CameraInfo$CameraId cameraInfo$CameraId) {
        this.mIconId = i;
        this.mTextId = i2;
        this.mValue = cameraInfo$CameraId;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public void apply(UserSettingApplicable userSettingApplicable) {
        userSettingApplicable.set(this);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public UserSettingKey getKey() {
        return UserSettingKey.FACING;
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

    public CameraInfo$CameraId getCameraId() {
        return this.mValue;
    }

    public static Facing[] getOptions() {
        if (sOptions == null) {
            if (PlatformCapability.isFrontCameraSupported()) {
                sOptions = new Facing[]{BACK, FRONT};
            } else {
                sOptions = new Facing[]{BACK};
            }
        }
        return (Facing[]) sOptions.clone();
    }
}
