package com.sonyericsson.android.camera.recorder.utility;

/* JADX INFO: loaded from: classes.dex */
class ReferenceClock$NotifyTickEvent implements Runnable {
    public final long requestElapsedTime;
    final /* synthetic */ ReferenceClock this$0;

    public ReferenceClock$NotifyTickEvent(ReferenceClock referenceClock, long j) {
        this.this$0 = referenceClock;
        this.requestElapsedTime = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        ReferenceClock.access$100(this.this$0).onTick(this.requestElapsedTime);
    }
}
