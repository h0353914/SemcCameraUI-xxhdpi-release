package com.sonyericsson.android.camera.view.overlaycontrol.imagequality;

import android.view.View;
import android.view.View$OnClickListener;
import com.sonyericsson.android.camera.view.setting.settingitem.SettingItem;

/* JADX INFO: loaded from: classes.dex */
class WbList$1 implements View$OnClickListener {
    final /* synthetic */ WbList this$0;
    final /* synthetic */ SettingItem val$item;

    WbList$1(WbList wbList, SettingItem settingItem) {
        this.this$0 = wbList;
        this.val$item = settingItem;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        if (this.this$0.getView().isShown()) {
            WbList.access$100(this.this$0, this.val$item);
        }
    }
}
