package com.sonyericsson.android.camera.view.baselayout.onscreenbutton;

import android.view.View;
import android.view.View$OnLongClickListener;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class OnScreenButton$LongClickListener implements View$OnLongClickListener {
    final /* synthetic */ OnScreenButton this$0;

    private OnScreenButton$LongClickListener(OnScreenButton onScreenButton) {
        this.this$0 = onScreenButton;
    }

    /* synthetic */ OnScreenButton$LongClickListener(OnScreenButton onScreenButton, OnScreenButton$1 onScreenButton$1) {
        this(onScreenButton);
    }

    @Override // android.view.View$OnLongClickListener
    public boolean onLongClick(View view) {
        if (CamLog.VERBOSE) {
            CamLog.d("onLongClick()");
        }
        if (OnScreenButton.access$000(this.this$0) == OnScreenButton.EMPTY_LISTENER) {
            return false;
        }
        OnScreenButton.access$000(this.this$0).onLongPress(this.this$0);
        return false;
    }
}
