package com.sonyericsson.android.camera.controller.selftimerfeedback;

import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public class SelfTimerFeedback {
    private static final int SELF_TIMER_BLINK_DURATION = 100;
    private static final int SELF_TIMER_LIGHT_MIN_INTERVAL = 250;
    public static final String TAG = "SelfTimerFeedback";
    private final int mDuration;
    private final boolean mIsBlinkNeeded;
    private boolean mIsOnBlinkFinishedCalled;
    private final LedLight mLedLight;
    private final SelfTimerFeedback$SelfTimerFeedbackListener mListener;
    private final SelfTimerFeedback$PeriodicEvent mPeriodicEvent;
    private static final int[] SELF_TIMER_LEVEL_THRESHOLDS = {500, 2000, 4000, 10000};
    private static final int[] SELF_TIMER_INTERVALS = {-1, 250, 500, 1000};
    private final SelfTimerFeedback$PeriodicEvent$TickEvent mOnTickEvent = new SelfTimerFeedback$1(this);
    private final Runnable mLedOffTask = new SelfTimerFeedback$2(this);
    private final Handler mHandler = new Handler();

    static /* synthetic */ int access$000(SelfTimerFeedback selfTimerFeedback) {
        return selfTimerFeedback.mDuration;
    }

    static /* synthetic */ SelfTimerFeedback$SelfTimerFeedbackListener access$100(SelfTimerFeedback selfTimerFeedback) {
        return selfTimerFeedback.mListener;
    }

    static /* synthetic */ int[] access$200() {
        return SELF_TIMER_LEVEL_THRESHOLDS;
    }

    static /* synthetic */ boolean access$300(SelfTimerFeedback selfTimerFeedback) {
        return selfTimerFeedback.mIsBlinkNeeded;
    }

    static /* synthetic */ boolean access$400(SelfTimerFeedback selfTimerFeedback) {
        return selfTimerFeedback.mIsOnBlinkFinishedCalled;
    }

    static /* synthetic */ boolean access$402(SelfTimerFeedback selfTimerFeedback, boolean z) {
        selfTimerFeedback.mIsOnBlinkFinishedCalled = z;
        return z;
    }

    static /* synthetic */ int[] access$500() {
        return SELF_TIMER_INTERVALS;
    }

    static /* synthetic */ void access$600(SelfTimerFeedback selfTimerFeedback) {
        selfTimerFeedback.blink();
    }

    static /* synthetic */ LedLight access$700(SelfTimerFeedback selfTimerFeedback) {
        return selfTimerFeedback.mLedLight;
    }

    public SelfTimerFeedback(int i, LedLight ledLight, boolean z, SelfTimerFeedback$SelfTimerFeedbackListener selfTimerFeedback$SelfTimerFeedbackListener) {
        this.mDuration = i;
        this.mLedLight = ledLight;
        this.mIsBlinkNeeded = z;
        this.mListener = selfTimerFeedback$SelfTimerFeedbackListener;
        this.mPeriodicEvent = new SelfTimerFeedback$PeriodicEvent(this.mHandler, this.mOnTickEvent, 250L, this.mDuration);
    }

    public void start(int i) {
        this.mIsOnBlinkFinishedCalled = false;
        this.mPeriodicEvent.start(i);
    }

    public void stop() {
        this.mPeriodicEvent.stop();
        this.mHandler.removeCallbacks(this.mLedOffTask);
    }

    private void blink() {
        this.mLedLight.turnOn();
        this.mHandler.postDelayed(this.mLedOffTask, 100L);
    }
}
