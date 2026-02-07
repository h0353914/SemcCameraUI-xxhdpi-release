package com.sonyericsson.android.camera.view.baselayout.settingshortcut;

import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
class MruButtonContainer$MruButton$1 implements View$OnClickListener {
    final /* synthetic */ MruButtonContainer$MruButton this$1;

    MruButtonContainer$MruButton$1(MruButtonContainer$MruButton mruButtonContainer$MruButton) {
        this.this$1 = mruButtonContainer$MruButton;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        if (this.this$1.mMode == null || MruButtonContainer.access$300(this.this$1.this$0) == null) {
            return;
        }
        MruButtonContainer.access$300(this.this$1.this$0).onModeSelected(this.this$1.mMode, true);
    }
}
