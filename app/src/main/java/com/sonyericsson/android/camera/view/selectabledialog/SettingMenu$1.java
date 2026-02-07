package com.sonyericsson.android.camera.view.selectabledialog;

import com.sonyericsson.android.camera.CameraActivity;

/* JADX INFO: loaded from: classes.dex */
class SettingMenu$1 implements Runnable {
    final /* synthetic */ SettingMenu this$0;

    SettingMenu$1(SettingMenu settingMenu) {
        this.this$0 = settingMenu;
    }

    @Override // java.lang.Runnable
    public void run() {
        ((CameraActivity) this.this$0.mContext).findViewById(2131296371).callOnClick();
    }
}
