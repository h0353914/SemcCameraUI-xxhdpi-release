package com.sonyericsson.android.camera;

import java.util.TimerTask;

class AutoPowerOffTimer$AutoPowerOffWarningTask extends TimerTask {
    final /* synthetic */ AutoPowerOffTimer this$0;

    private AutoPowerOffTimer$AutoPowerOffWarningTask(AutoPowerOffTimer autoPowerOffTimer) {
        this.this$0 = autoPowerOffTimer;
    }

    /* synthetic */ AutoPowerOffTimer$AutoPowerOffWarningTask(AutoPowerOffTimer autoPowerOffTimer, AutoPowerOffTimer$1 autoPowerOffTimer$1) {
        this(autoPowerOffTimer);
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        AutoPowerOffTimer.access$200(this.this$0).sendAutoPowerOffWarningMessage();
    }
}
