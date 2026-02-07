package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.device.CameraInfo$CameraId;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public enum CapturingMode implements UserSettingValue {
    UNKNOWN(-1, -1, 0, CameraInfo$CameraId.BACK),
    SCENE_RECOGNITION(-1, 2131689683, 1, CameraInfo$CameraId.BACK),
    NORMAL(2131230881, 2131689677, 1, CameraInfo$CameraId.BACK),
    VIDEO(-1, 2131689677, 2, CameraInfo$CameraId.BACK),
    SUPERIOR_FRONT(-1, -1, 1, CameraInfo$CameraId.FRONT),
    FRONT_VIDEO(-1, -1, 2, CameraInfo$CameraId.FRONT),
    SLOW_MOTION(2131230884, 2131689600, 2, CameraInfo$CameraId.BACK),
    FRONT_PHOTO(-1, -1, 1, CameraInfo$CameraId.FRONT);

    public static final String TAG = "CapturingMode";
    private static final int sParameterTextId = 2131689630;
    private final CameraInfo$CameraId mCameraId;
    private final int mIconId;
    private final int mTextId;
    private final int mType;
    private static final CapturingMode[] sPhotoOptions = {SCENE_RECOGNITION, NORMAL};

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getKeyTextId() {
        return 2131689630;
    }

    CapturingMode(int i, int i2, int i3, CameraInfo$CameraId cameraInfo$CameraId) {
        this.mIconId = i;
        this.mTextId = i2;
        this.mType = i3;
        this.mCameraId = cameraInfo$CameraId;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public void apply(UserSettingApplicable userSettingApplicable) {
        userSettingApplicable.set(this);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public UserSettingKey getKey() {
        return UserSettingKey.CAPTURING_MODE;
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

    public int getType() {
        return this.mType;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public String getName() {
        return getClass().getName();
    }

    public CameraInfo$CameraId getCameraId() {
        return this.mCameraId;
    }

    public static List<CapturingMode> getValidOptions() {
        ArrayList arrayList = new ArrayList();
        if (!PlatformCapability.isSceneRecognitionSupported(CameraInfo$CameraId.BACK)) {
            CamLog.w("Back camera doesn't support Scene recognition.");
        }
        arrayList.add(SCENE_RECOGNITION);
        if (PlatformCapability.isFrontCameraSupported()) {
            if (!PlatformCapability.isSceneRecognitionSupported(CameraInfo$CameraId.FRONT)) {
                CamLog.w("Front camera doesn't support Scene recognition.");
            }
            arrayList.add(SUPERIOR_FRONT);
        }
        arrayList.add(VIDEO);
        if (PlatformCapability.isFrontCameraSupported()) {
            arrayList.add(FRONT_VIDEO);
        }
        arrayList.add(SLOW_MOTION);
        arrayList.add(NORMAL);
        if (PlatformCapability.isFrontCameraSupported()) {
            arrayList.add(FRONT_PHOTO);
        }
        return arrayList;
    }

    public boolean isMainPhoto() {
        return getType() == 1 && getCameraId() == CameraInfo$CameraId.BACK;
    }

    public boolean isFront() {
        return this.mCameraId == CameraInfo$CameraId.FRONT;
    }

    public boolean isSuperiorAuto() {
        return this == SCENE_RECOGNITION || this == SUPERIOR_FRONT;
    }

    public boolean isVideo() {
        return this.mType == 2;
    }

    public static CapturingMode convertFrom(String str, CapturingMode capturingMode) {
        try {
            return valueOf(str);
        } catch (IllegalArgumentException unused) {
            CamLog.w("Mode[" + str + "] is not supported.");
            return capturingMode;
        }
    }
}
