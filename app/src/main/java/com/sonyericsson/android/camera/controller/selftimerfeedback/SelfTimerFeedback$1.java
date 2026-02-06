package com.sonyericsson.android.camera.controller.selftimerfeedback;

import com.sonyericsson.android.camera.util.CamLog;

class SelfTimerFeedback$1 implements SelfTimerFeedback$PeriodicEvent$TickEvent {
    final /* synthetic */ SelfTimerFeedback this$0;

    SelfTimerFeedback$1(SelfTimerFeedback selfTimerFeedback) {
        this.this$0 = selfTimerFeedback;
    }

    @Override // com.sonyericsson.android.camera.controller.selftimerfeedback.SelfTimerFeedback$PeriodicEvent$TickEvent
    public void onTick(long j) {
        long jAccess$000 = ((long) SelfTimerFeedback.access$000(this.this$0)) - j;
        int length = 0;
        if (CamLog.VERBOSE) {
            CamLog.d("remain time: " + jAccess$000);
        }
        if (jAccess$000 % 1000 == 0 && jAccess$000 >= 4000 && j > 0) {
            SelfTimerFeedback.access$100(this.this$0).onSoundTypeChange(jAccess$000);
        }
        if (jAccess$000 <= 0) {
            SelfTimerFeedback.access$100(this.this$0).onCountDownFinished();
            return;
        }
        while (length < SelfTimerFeedback.access$200().length && jAccess$000 > SelfTimerFeedback.access$200()[length]) {
            length++;
        }
        if (length >= SelfTimerFeedback.access$200().length) {
            length = SelfTimerFeedback.access$200().length - 1;
        }
        if (SelfTimerFeedback.access$300(this.this$0)) {
            if (length != 0) {
                if ((jAccess$000 - ((long) SelfTimerFeedback.access$200()[length])) % ((long) SelfTimerFeedback.access$500()[length]) == 0) {
                    SelfTimerFeedback.access$600(this.this$0);
                }
            } else {
                if (SelfTimerFeedback.access$400(this.this$0)) {
                    return;
                }
                SelfTimerFeedback.access$100(this.this$0).onBlinkFinished();
                SelfTimerFeedback.access$402(this.this$0, true);
            }
        }
    }
}
