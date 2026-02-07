package com.sonyericsson.android.camera.recorder.utility;

/* JADX INFO: loaded from: classes.dex */
class ReferenceClock$TickEvent implements Runnable {
    public long requestElapsedTime;
    final /* synthetic */ ReferenceClock this$0;

    private ReferenceClock$TickEvent(ReferenceClock referenceClock) {
        this.this$0 = referenceClock;
        this.requestElapsedTime = 0L;
    }

    /* synthetic */ ReferenceClock$TickEvent(ReferenceClock referenceClock, ReferenceClock$1 referenceClock$1) {
        this(referenceClock);
    }

    @Override // java.lang.Runnable
    public void run() {
        ReferenceClock.access$100(this.this$0).onTick(this.requestElapsedTime);
        ReferenceClock.access$300(this.this$0, ReferenceClock.access$200(this.this$0));
    }
}
