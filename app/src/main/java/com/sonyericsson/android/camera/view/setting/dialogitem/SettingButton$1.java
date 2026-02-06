package com.sonyericsson.android.camera.view.setting.dialogitem;

import android.view.View;
import android.view.View$OnClickListener;

class SettingButton$1 implements View$OnClickListener {
    final /* synthetic */ SettingButton this$0;

    SettingButton$1(SettingButton settingButton) {
        this.this$0 = settingButton;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        if (this.this$0.getView().isShown()) {
            switch (this.this$0.getItem().getSelectability()) {
                case SELECTABLE:
                    this.this$0.select(this.this$0.getItem());
                    break;
                case RESTRICTED:
                    this.this$0.select(this.this$0.getItem());
                    break;
            }
        }
    }
}
