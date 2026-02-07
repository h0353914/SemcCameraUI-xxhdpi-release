package com.sonyericsson.android.camera.view.setting.executor;

import com.sonyericsson.android.camera.view.setting.settingitem.TypedSettingItem;

/* JADX INFO: loaded from: classes.dex */
public interface SettingExecutorInterface<T> {
    void onExecute(TypedSettingItem<T> typedSettingItem);
}
