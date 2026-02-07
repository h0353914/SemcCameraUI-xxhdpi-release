package com.sonyericsson.android.camera.view.overlaycontrol.imagequality;

/* JADX INFO: loaded from: classes.dex */
class SettingDialog$1 implements Runnable {
    final /* synthetic */ SettingDialog this$0;

    SettingDialog$1(SettingDialog settingDialog) {
        this.this$0 = settingDialog;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (SettingDialog.access$000(this.this$0) != null) {
            SettingDialog.access$000(this.this$0).removeView(this.this$0);
        }
    }
}
