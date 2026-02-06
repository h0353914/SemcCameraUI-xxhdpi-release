package com.sonyericsson.android.camera.view.setting.executor;

import com.sonyericsson.android.camera.view.setting.settingitem.TypedSettingItem;

public interface SettingChangerInterface<T> {
    void changeValue(TypedSettingItem<T> typedSettingItem);
}
