package com.sonyericsson.android.camera.view.overlaycontrol.imagequality;

import android.content.Context;
import android.widget.FrameLayout;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class SettingItemSlider$1 extends FrameLayout {
    final /* synthetic */ SettingItemSlider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SettingItemSlider$1(SettingItemSlider settingItemSlider, Context context) {
        super(context);
        this.this$0 = settingItemSlider;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (CamLog.VERBOSE) {
            CamLog.d(SettingItemSlider.access$100(this.this$0), "onLayout(): refresh");
        }
        this.this$0.refresh();
    }
}
