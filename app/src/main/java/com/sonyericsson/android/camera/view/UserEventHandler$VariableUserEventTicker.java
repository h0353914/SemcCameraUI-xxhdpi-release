package com.sonyericsson.android.camera.view;

import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
class UserEventHandler$VariableUserEventTicker implements Runnable {
    private static final int INTERVAL_30_FPS = 33;
    private Handler mHandler;
    private int mInterval;
    private UserEventHandler$VariableUserEventTicker$OnEventTickedListener mOnTickingListener;

    private UserEventHandler$VariableUserEventTicker() {
    }

    /* synthetic */ UserEventHandler$VariableUserEventTicker(UserEventHandler$1 userEventHandler$1) {
        this();
    }

    void start(int i, UserEventHandler$VariableUserEventTicker$OnEventTickedListener userEventHandler$VariableUserEventTicker$OnEventTickedListener) {
        this.mInterval = i;
        this.mOnTickingListener = userEventHandler$VariableUserEventTicker$OnEventTickedListener;
        postSchedule(0L);
    }

    void stop() {
        this.mHandler.removeCallbacks(this);
        this.mOnTickingListener = null;
    }

    private void postSchedule(long j) {
        if (this.mOnTickingListener == null) {
            return;
        }
        if (this.mHandler == null) {
            this.mHandler = new Handler();
        }
        this.mHandler.removeCallbacks(this);
        this.mHandler.postDelayed(this, j);
    }

    @Override // java.lang.Runnable
    public void run() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.mOnTickingListener.onTicked(this);
        int iCurrentTimeMillis = this.mInterval - ((int) (System.currentTimeMillis() - jCurrentTimeMillis));
        postSchedule(iCurrentTimeMillis < 0 ? 0L : iCurrentTimeMillis);
    }
}
