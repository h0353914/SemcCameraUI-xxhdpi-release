package com.sonyericsson.android.camera.view.setting;

import com.sonyericsson.android.camera.view.setting.executor.SettingExecutorInterface;
import com.sonyericsson.android.camera.view.setting.settingitem.TypedSettingItem;

class SettingUi$CloseExecutor<T> implements SettingExecutorInterface<T> {
    private final SettingExecutorInterface<T> mExecutor;
    final /* synthetic */ SettingUi this$0;

    /* synthetic */ SettingUi$CloseExecutor(SettingUi settingUi, SettingExecutorInterface settingExecutorInterface, SettingUi$1 settingUi$1) {
        this(settingUi, settingExecutorInterface);
    }

    private SettingUi$CloseExecutor(SettingUi settingUi, SettingExecutorInterface<T> settingExecutorInterface) {
        this.this$0 = settingUi;
        this.mExecutor = settingExecutorInterface;
    }

    @Override // com.sonyericsson.android.camera.view.setting.executor.SettingExecutorInterface
    public void onExecute(TypedSettingItem<T> typedSettingItem) {
        this.mExecutor.onExecute(typedSettingItem);
        SettingUi.access$600(this.this$0).closeCurrentDialog();
    }
}
