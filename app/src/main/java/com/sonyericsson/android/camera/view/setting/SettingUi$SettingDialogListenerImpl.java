package com.sonyericsson.android.camera.view.setting;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.view.setting.dialog.SettingDialogListener;

/* JADX INFO: loaded from: classes.dex */
class SettingUi$SettingDialogListenerImpl implements SettingDialogListener {
    final /* synthetic */ SettingUi this$0;

    @Override // com.sonyericsson.android.camera.view.setting.dialog.SettingDialogListener
    public void onOpenSettingDialog(Object obj) {
    }

    private SettingUi$SettingDialogListenerImpl(SettingUi settingUi) {
        this.this$0 = settingUi;
    }

    /* synthetic */ SettingUi$SettingDialogListenerImpl(SettingUi settingUi, SettingUi$1 settingUi$1) {
        this(settingUi);
    }

    @Override // com.sonyericsson.android.camera.view.setting.dialog.SettingDialogListener
    public void onCloseSettingDialog(Object obj) {
        if (obj == UserSettingKey.SETTING_MENU) {
            SettingUi.access$100(this.this$0);
        }
    }
}
