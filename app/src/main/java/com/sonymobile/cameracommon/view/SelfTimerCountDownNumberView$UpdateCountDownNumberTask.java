package com.sonymobile.cameracommon.view;

/* JADX INFO: loaded from: classes.dex */
class SelfTimerCountDownNumberView$UpdateCountDownNumberTask implements Runnable {
    final /* synthetic */ SelfTimerCountDownNumberView this$0;

    private SelfTimerCountDownNumberView$UpdateCountDownNumberTask(SelfTimerCountDownNumberView selfTimerCountDownNumberView) {
        this.this$0 = selfTimerCountDownNumberView;
    }

    /* synthetic */ SelfTimerCountDownNumberView$UpdateCountDownNumberTask(SelfTimerCountDownNumberView selfTimerCountDownNumberView, SelfTimerCountDownNumberView$1 selfTimerCountDownNumberView$1) {
        this(selfTimerCountDownNumberView);
    }

    @Override // java.lang.Runnable
    public void run() {
        SelfTimerCountDownNumberView.access$410(this.this$0);
        SelfTimerCountDownNumberView.access$500(this.this$0);
        if (SelfTimerCountDownNumberView.access$400(this.this$0) > 1) {
            SelfTimerCountDownNumberView.access$600(this.this$0);
        }
    }
}
