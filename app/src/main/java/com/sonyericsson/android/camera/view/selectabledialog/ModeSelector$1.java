package com.sonyericsson.android.camera.view.selectabledialog;

/* JADX INFO: loaded from: classes.dex */
class ModeSelector$1 implements Runnable {
    final /* synthetic */ ModeSelector this$0;

    ModeSelector$1(ModeSelector modeSelector) {
        this.this$0 = modeSelector;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.mSettingDialogStack.closeAllSettingDialogs();
    }
}
