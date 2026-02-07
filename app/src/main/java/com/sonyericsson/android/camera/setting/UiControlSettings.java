package com.sonyericsson.android.camera.setting;

import android.content.Context;
import com.sonyericsson.android.camera.configuration.UserSettingKey;

/* JADX INFO: loaded from: classes.dex */
public class UiControlSettings {
    private final SharedPreferencesAccessor mAccessor;

    UiControlSettings(Context context) {
        this.mAccessor = new SharedPreferencesAccessor(context, "com.sonyericsson.android.camera.shared_preferences_view");
    }

    public UserSettingKey getLastImageQualityControlTab(boolean z) {
        String string;
        if (z) {
            string = this.mAccessor.readString("KEY_LAST_IMAGE_QUALITY_CONTROL_TAB_FRONT", UserSettingKey.EV.toString());
        } else {
            string = this.mAccessor.readString("KEY_LAST_IMAGE_QUALITY_CONTROL_TAB_MAIN", UserSettingKey.EV.toString());
        }
        if (string.equals(UserSettingKey.EV.toString())) {
            return UserSettingKey.EV;
        }
        if (string.equals(UserSettingKey.WHITE_BALANCE.toString())) {
            return UserSettingKey.WHITE_BALANCE;
        }
        if (string.equals(UserSettingKey.ISO.toString())) {
            return UserSettingKey.ISO;
        }
        if (string.equals(UserSettingKey.SHUTTER_SPEED.toString())) {
            return UserSettingKey.SHUTTER_SPEED;
        }
        if (string.equals(UserSettingKey.FOCUS_RANGE.toString())) {
            return UserSettingKey.FOCUS_RANGE;
        }
        return UserSettingKey.EV;
    }

    public void setLastImageQualityControlTab(UserSettingKey userSettingKey, boolean z) {
        if (z) {
            this.mAccessor.writeString("KEY_LAST_IMAGE_QUALITY_CONTROL_TAB_FRONT", userSettingKey.toString(), false);
        } else {
            this.mAccessor.writeString("KEY_LAST_IMAGE_QUALITY_CONTROL_TAB_MAIN", userSettingKey.toString(), false);
        }
    }

    public void save() {
        this.mAccessor.apply();
    }

    public void clearUIControlSettings() {
        this.mAccessor.clearParameters(true);
    }
}
