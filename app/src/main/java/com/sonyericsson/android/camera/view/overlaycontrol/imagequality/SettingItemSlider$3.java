package com.sonyericsson.android.camera.view.overlaycontrol.imagequality;

import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
class SettingItemSlider$3 implements View$OnClickListener {
    final /* synthetic */ SettingItemSlider this$0;

    SettingItemSlider$3(SettingItemSlider settingItemSlider) {
        this.this$0 = settingItemSlider;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        boolean z = !view.isSelected();
        this.this$0.onAutoCheckedChanged(z);
        view.setSelected(z);
    }
}
