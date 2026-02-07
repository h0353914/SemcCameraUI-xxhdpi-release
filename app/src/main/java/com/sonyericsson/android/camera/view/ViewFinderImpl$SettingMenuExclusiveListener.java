package com.sonyericsson.android.camera.view;

import android.view.MotionEvent;
import android.view.View;
import com.sonyericsson.android.camera.view.setting.SettingDialogStack$ExclusiveViewListener;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$SettingMenuExclusiveListener implements SettingDialogStack$ExclusiveViewListener {
    final /* synthetic */ ViewFinderImpl this$0;

    private ViewFinderImpl$SettingMenuExclusiveListener(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    /* synthetic */ ViewFinderImpl$SettingMenuExclusiveListener(ViewFinderImpl viewFinderImpl, ViewFinderImpl$1 viewFinderImpl$1) {
        this(viewFinderImpl);
    }

    @Override // com.sonyericsson.android.camera.view.setting.SettingDialogStack$ExclusiveViewListener
    public boolean isExclusiveView(View view, MotionEvent motionEvent) {
        return ViewFinderImpl.access$3000(this.this$0, view, motionEvent);
    }
}
