package com.sonyericsson.android.camera.view.setting.dialogitem;

import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
class SettingButtonDetails$1 implements View$OnClickListener {
    final /* synthetic */ SettingButtonDetails this$0;

    SettingButtonDetails$1(SettingButtonDetails settingButtonDetails) {
        this.this$0 = settingButtonDetails;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        if (this.this$0.getView().isShown() && this.this$0.getItem().isSelectable()) {
            this.this$0.select(this.this$0.getItem());
        }
    }
}
