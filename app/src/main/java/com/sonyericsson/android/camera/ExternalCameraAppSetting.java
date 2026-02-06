package com.sonyericsson.android.camera;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.AutoReview;
import com.sonyericsson.android.camera.configuration.parameters.DestinationToSave;
import com.sonyericsson.android.camera.configuration.parameters.DistortionCorrection;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.FrontAngle;
import com.sonyericsson.android.camera.configuration.parameters.Geotag;
import com.sonyericsson.android.camera.configuration.parameters.GridLine;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSound;
import com.sonyericsson.android.camera.configuration.parameters.UserSettingValue;
import com.sonyericsson.android.camera.configuration.parameters.VolumeKey;
import java.util.Map;
import java.util.Map$Entry;

public enum ExternalCameraAppSetting {
    FLASH("FLASH_MODE", UserSettingKey.FLASH, ExternalCameraAppSetting$ShareSettingCategory.PHOTO, items().add("auto", Flash.AUTO).add("fill_flash", Flash.ON).add("flashlight", Flash.LED_ON).add("red_eye", Flash.RED_EYE).add("off", Flash.OFF)),
    FRONT_ANGLE("FRONT_ANGLE", UserSettingKey.FRONT_ANGLE, ExternalCameraAppSetting$ShareSettingCategory.COMMON, items().add("default", FrontAngle.DEFAULT).add("cropped", FrontAngle.CROPPED)),
    GRID_LINES("GRID_LINES", UserSettingKey.GRID_LINE, ExternalCameraAppSetting$ShareSettingCategory.COMMON, items().add(Boolean.FALSE, GridLine.OFF).add(Boolean.TRUE, GridLine.ON)),
    SOUND("SOUND", UserSettingKey.SHUTTER_SOUND, ExternalCameraAppSetting$ShareSettingCategory.COMMON, items().add(Boolean.FALSE, ShutterSound.OFF).add(Boolean.TRUE, ShutterSound.SOUND1)),
    SAVE_LOCATION("SAVE_LOCATION", UserSettingKey.GEO_TAG, ExternalCameraAppSetting$ShareSettingCategory.COMMON, items().add(Boolean.FALSE, Geotag.OFF).add(Boolean.TRUE, Geotag.ON)),
    DATA_STORAGE("DATA_STORAGE", UserSettingKey.DESTINATION_TO_SAVE, ExternalCameraAppSetting$ShareSettingCategory.COMMON, items().add("sdcard", DestinationToSave.SDCARD).add("internal", DestinationToSave.EMMC)),
    USE_VOLUME_KEY_AS("USE_VOLUME_KEY_AS", UserSettingKey.VOLUME_KEY, ExternalCameraAppSetting$ShareSettingCategory.COMMON, items().add("shutter", VolumeKey.HW_CAMERA_KEY).add("volume", VolumeKey.VOLUME).add("zoom", VolumeKey.ZOOM)),
    AUTO_PHOTO_PREVIEW("AUTO_PHOTO_PREVIEW", UserSettingKey.AUTO_REVIEW, ExternalCameraAppSetting$ShareSettingCategory.COMMON, items().add("off", AutoReview.OFF).add("on", AutoReview.ALWAYS).add("only_front_camera", AutoReview.FRONT_ONLY)),
    DISTORTION_CORRECTION_MODE("DISTORTION_CORRECTION_MODE", UserSettingKey.DISTORTION_CORRECTION, ExternalCameraAppSetting$ShareSettingCategory.COMMON, items().add(Boolean.FALSE, DistortionCorrection.OFF).add(Boolean.TRUE, DistortionCorrection.ON));

    private static final String INTENT_KEY_PREFIX = "com.sonyericsson.android.camera.extra.";
    public final String intentKey;
    public final UserSettingKey key;
    private final Map<Object, UserSettingValue> mIntentToUserSetting;
    private final ExternalCameraAppSetting$ShareSettingCategory mSettingCategory;

    ExternalCameraAppSetting(String str, UserSettingKey userSettingKey, ExternalCameraAppSetting$ShareSettingCategory externalCameraAppSetting$ShareSettingCategory, ExternalCameraAppSetting$ItemsBuilder externalCameraAppSetting$ItemsBuilder) {
        this.key = userSettingKey;
        this.intentKey = "com.sonyericsson.android.camera.extra." + str;
        this.mSettingCategory = externalCameraAppSetting$ShareSettingCategory;
        this.mIntentToUserSetting = externalCameraAppSetting$ItemsBuilder.entries;
    }

    public UserSettingValue toValue(Object obj) {
        return this.mIntentToUserSetting.get(obj);
    }

    public Object toIntentValue(UserSettingValue userSettingValue) {
        for (Map$Entry<Object, UserSettingValue> map$Entry : this.mIntentToUserSetting.entrySet()) {
            if (map$Entry.getValue().equals(userSettingValue)) {
                return map$Entry.getKey();
            }
        }
        return null;
    }

    public boolean isShared(ExternalCameraAppSetting$ShareSettingCategory externalCameraAppSetting$ShareSettingCategory) {
        return this.mSettingCategory.isAccepted(externalCameraAppSetting$ShareSettingCategory);
    }

    private static ExternalCameraAppSetting$ItemsBuilder items() {
        return new ExternalCameraAppSetting$ItemsBuilder(null);
    }
}
