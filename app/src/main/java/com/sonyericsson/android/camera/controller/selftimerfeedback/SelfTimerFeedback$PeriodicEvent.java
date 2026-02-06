package com.sonyericsson.android.camera.controller.selftimerfeedback;

import android.os.Handler;
import android.os.SystemClock;

class SelfTimerFeedback$PeriodicEvent {
    private final SelfTimerFeedback$PeriodicEvent$TickEvent mCallback;
    private long mCounter;
    private final int mDuration;
    private final Handler mHandler;
    private final long mInterval;
    private long mStartTime;
    private final Runnable mTickEvent = new SelfTimerFeedback$PeriodicEvent$1(this);

    static /* synthetic */ SelfTimerFeedback$PeriodicEvent$TickEvent access$1000(SelfTimerFeedback$PeriodicEvent selfTimerFeedback$PeriodicEvent) {
        return selfTimerFeedback$PeriodicEvent.mCallback;
    }

    static /* synthetic */ int access$1100(SelfTimerFeedback$PeriodicEvent selfTimerFeedback$PeriodicEvent) {
        return selfTimerFeedback$PeriodicEvent.mDuration;
    }

    static /* synthetic */ void access$1200(SelfTimerFeedback$PeriodicEvent selfTimerFeedback$PeriodicEvent) {
        selfTimerFeedback$PeriodicEvent.scheduleNextTick();
    }

    static /* synthetic */ long access$800(SelfTimerFeedback$PeriodicEvent selfTimerFeedback$PeriodicEvent) {
        return selfTimerFeedback$PeriodicEvent.mCounter;
    }

    static /* synthetic */ long access$804(SelfTimerFeedback$PeriodicEvent selfTimerFeedback$PeriodicEvent) {
        long j = selfTimerFeedback$PeriodicEvent.mCounter + 1;
        selfTimerFeedback$PeriodicEvent.mCounter = j;
        return j;
    }

    static /* synthetic */ long access$900(SelfTimerFeedback$PeriodicEvent selfTimerFeedback$PeriodicEvent) {
        return selfTimerFeedback$PeriodicEvent.mInterval;
    }

    public SelfTimerFeedback$PeriodicEvent(Handler handler, SelfTimerFeedback$PeriodicEvent$TickEvent selfTimerFeedback$PeriodicEvent$TickEvent, long j, int i) {
        this.mHandler = handler;
        this.mCallback = selfTimerFeedback$PeriodicEvent$TickEvent;
        this.mInterval = j;
        this.mDuration = i;
    }

    public void start(long j) {
        this.mStartTime = SystemClock.uptimeMillis() + j;
        this.mCounter = 0L;
        scheduleNextTick();
    }

    public void stop() {
        this.mHandler.removeCallbacks(this.mTickEvent);
    }

    private void scheduleNextTick() {
        this.mHandler.postAtTime(this.mTickEvent, this.mStartTime + (this.mCounter * this.mInterval));
    }
}
