package com.sonyericsson.android.camera.view.setting.dialogitem;

import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;

/* JADX INFO: loaded from: classes.dex */
final class SettingButton$SwitchOnCheckedChangeListener implements CompoundButton$OnCheckedChangeListener {
    final /* synthetic */ SettingButton this$0;

    private SettingButton$SwitchOnCheckedChangeListener(SettingButton settingButton) {
        this.this$0 = settingButton;
    }

    /* synthetic */ SettingButton$SwitchOnCheckedChangeListener(SettingButton settingButton, SettingButton$1 settingButton$1) {
        this(settingButton);
    }

    @Override // android.widget.CompoundButton$OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (this.this$0.getView().isShown()) {
            if (!this.this$0.getItem().isSelectable()) {
                SettingButton.access$100(this.this$0).mBackground.setChecked(false);
                return;
            }
            if (z) {
                this.this$0.select(SettingButton.access$200(this.this$0));
            } else {
                this.this$0.select(SettingButton.access$300(this.this$0));
            }
            SettingButton.access$400(this.this$0, z);
        }
    }
}
