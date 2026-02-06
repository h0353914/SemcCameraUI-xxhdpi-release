package com.sonyericsson.android.camera.view;

abstract class UserEventHandler$EventDispatcher {
    private UserEventHandler mHandler;
    private boolean mIsRunning;

    protected void reset() {
    }

    private UserEventHandler$EventDispatcher() {
        this.mIsRunning = false;
    }

    /* synthetic */ UserEventHandler$EventDispatcher(UserEventHandler$1 userEventHandler$1) {
        this();
    }

    public void attach(UserEventHandler userEventHandler) {
        this.mHandler = userEventHandler;
    }

    public void start() {
        this.mIsRunning = true;
        reset();
    }

    public void stop() {
        this.mIsRunning = false;
        reset();
    }

    protected UserEventHandler getHandler() {
        return this.mHandler;
    }

    protected boolean isRunning() {
        return this.mIsRunning;
    }
}
