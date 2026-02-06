package com.sonyericsson.android.camera.view.setting;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.view.setting.executor.SettingExecutorInterface;
import com.sonyericsson.android.camera.view.setting.settingitem.TypedSettingItem;

class SettingUi$2 implements SettingExecutorInterface<UserSettingKey> {
    final /* synthetic */ SettingUi this$0;
    final /* synthetic */ UserSettingKey val$key;

    SettingUi$2(SettingUi settingUi, UserSettingKey userSettingKey) {
        this.this$0 = settingUi;
        this.val$key = userSettingKey;
    }

    @Override // com.sonyericsson.android.camera.view.setting.executor.SettingExecutorInterface
    public void onExecute(TypedSettingItem<UserSettingKey> typedSettingItem) {
        SettingUi.access$400(this.this$0).showMessageDialog(this.val$key.getRestrictMessageDialogId(SettingUi.access$200(this.this$0)), new Object[0]);
    }
}
