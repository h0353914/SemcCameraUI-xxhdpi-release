package com.sonyericsson.android.camera;

import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
class AutoPowerOffTimer$AutoPowerOffTask extends TimerTask {
    final /* synthetic */ AutoPowerOffTimer this$0;

    private AutoPowerOffTimer$AutoPowerOffTask(AutoPowerOffTimer autoPowerOffTimer) {
        this.this$0 = autoPowerOffTimer;
    }

    /* synthetic */ AutoPowerOffTimer$AutoPowerOffTask(AutoPowerOffTimer autoPowerOffTimer, AutoPowerOffTimer$1 autoPowerOffTimer$1) {
        this(autoPowerOffTimer);
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        AutoPowerOffTimer.access$200(this.this$0).sendAutoPowerOffMessage();
    }
}
