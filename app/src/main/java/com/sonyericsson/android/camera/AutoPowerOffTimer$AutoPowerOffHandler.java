package com.sonyericsson.android.camera;

import android.os.Handler;
import android.os.Message;

class AutoPowerOffTimer$AutoPowerOffHandler extends Handler {
    private static final int MSG_AUTO_POWER_OFF = 2;
    private static final int MSG_AUTO_POWER_OFF_WARNING = 1;
    final /* synthetic */ AutoPowerOffTimer this$0;

    private AutoPowerOffTimer$AutoPowerOffHandler(AutoPowerOffTimer autoPowerOffTimer) {
        this.this$0 = autoPowerOffTimer;
    }

    /* synthetic */ AutoPowerOffTimer$AutoPowerOffHandler(AutoPowerOffTimer autoPowerOffTimer, AutoPowerOffTimer$1 autoPowerOffTimer$1) {
        this(autoPowerOffTimer);
    }

    public void sendAutoPowerOffWarningMessage() {
        sendEmptyMessage(1);
    }

    public void sendAutoPowerOffMessage() {
        sendEmptyMessage(2);
    }

    public void removeAllMessages() {
        removeMessages(1);
        removeMessages(2);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                AutoPowerOffTimer.access$400(this.this$0);
                AutoPowerOffTimer.access$600(this.this$0, AutoPowerOffTimer.access$500(this.this$0));
                AutoPowerOffTimer.access$700(this.this$0).onAutoPowerOffWarning();
                break;
            case 2:
                AutoPowerOffTimer.access$400(this.this$0);
                AutoPowerOffTimer.access$700(this.this$0).onAutoPowerOff(AutoPowerOffTimer.access$800(this.this$0));
                break;
        }
    }
}
