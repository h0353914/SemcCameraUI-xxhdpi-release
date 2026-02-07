package com.sonyericsson.android.camera.controller.selftimerfeedback;

/* JADX INFO: loaded from: classes.dex */
class SelfTimerFeedback$2 implements Runnable {
    final /* synthetic */ SelfTimerFeedback this$0;

    SelfTimerFeedback$2(SelfTimerFeedback selfTimerFeedback) {
        this.this$0 = selfTimerFeedback;
    }

    @Override // java.lang.Runnable
    public void run() {
        SelfTimerFeedback.access$700(this.this$0).turnOff();
    }
}
