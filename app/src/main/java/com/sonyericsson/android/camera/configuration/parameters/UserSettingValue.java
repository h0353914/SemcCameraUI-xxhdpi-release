package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.UserSettingKey;

public interface UserSettingValue {
    void apply(UserSettingApplicable userSettingApplicable);

    int getIconId();

    UserSettingKey getKey();

    int getKeyTextId();

    String getName();

    int getTextId();

    String getValue();
}
