package com.sonyericsson.android.camera.controller.selftimerfeedback;

/* JADX INFO: loaded from: classes.dex */
class SelfTimerFeedback$PeriodicEvent$1 implements Runnable {
    final /* synthetic */ SelfTimerFeedback$PeriodicEvent this$0;

    SelfTimerFeedback$PeriodicEvent$1(SelfTimerFeedback$PeriodicEvent selfTimerFeedback$PeriodicEvent) {
        this.this$0 = selfTimerFeedback$PeriodicEvent;
    }

    @Override // java.lang.Runnable
    public void run() {
        SelfTimerFeedback$PeriodicEvent.access$1000(this.this$0).onTick(SelfTimerFeedback$PeriodicEvent.access$800(this.this$0) * SelfTimerFeedback$PeriodicEvent.access$900(this.this$0));
        SelfTimerFeedback$PeriodicEvent.access$804(this.this$0);
        if (SelfTimerFeedback$PeriodicEvent.access$800(this.this$0) * SelfTimerFeedback$PeriodicEvent.access$900(this.this$0) <= SelfTimerFeedback$PeriodicEvent.access$1100(this.this$0)) {
            SelfTimerFeedback$PeriodicEvent.access$1200(this.this$0);
        }
    }
}
