package com.sonyericsson.android.camera.view.setting.executor;

import com.sonyericsson.android.camera.view.setting.settingitem.TypedSettingItem;

public interface SettingExecutorInterface<T> {
    void onExecute(TypedSettingItem<T> typedSettingItem);
}
