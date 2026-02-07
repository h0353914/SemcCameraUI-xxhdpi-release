package com.sonyericsson.android.camera.view.baselayout.settingshortcut;

import android.view.View$OnClickListener;
import android.widget.ImageView;
import com.sonyericsson.android.camera.view.modeselector.Mode;

/* JADX INFO: loaded from: classes.dex */
class MruButtonContainer$MruButton {
    private ImageView mButton;
    private View$OnClickListener mClickListener = new MruButtonContainer$MruButton$1(this);
    protected Mode mMode;
    final /* synthetic */ MruButtonContainer this$0;

    MruButtonContainer$MruButton(MruButtonContainer mruButtonContainer) {
        this.this$0 = mruButtonContainer;
        this.mButton = (ImageView) mruButtonContainer.findViewById(2131296473);
        this.mButton.setOnClickListener(this.mClickListener);
    }

    void setClickable(boolean z) {
        this.mButton.setClickable(z);
    }

    void setMode(Mode mode) {
        this.mMode = mode;
        if (mode == null) {
            this.this$0.setAvailability(false);
        } else {
            mode.loadSmallIcon(this.mButton);
            this.this$0.setAvailability(mode.isAvailable());
        }
    }

    Mode getMode() {
        return this.mMode;
    }
}
