package com.sonymobile.sidetouchgesturedetector;

import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
public class DoubleTapInfo {
    public int doubleTapMinTime;
    public int doubleTapSlopSquare;
    public int doubleTapTimeout;
    public int doubleTapTimeoutReal;
    public MotionEvent firstDown;
    public long firstDownTime;
    public float firstDownX;
    public float firstDownY;
    public long firstUpTime;
    public boolean isLearningMode;
    public MotionEvent secondDown;
    public long secondDownTime;
    public float secondDownX;
    public float secondDownY;

    public DoubleTapInfo$Status getStatus() {
        if (getDeltaTime() > getDoubleTapTimeout()) {
            return DoubleTapInfo$Status.SlowTap;
        }
        if (getDeltaTime() < this.doubleTapMinTime) {
            return DoubleTapInfo$Status.FastTap;
        }
        long deltaX = getDeltaX();
        long deltaY = getDeltaY();
        if (!((deltaX * deltaX) + (deltaY * deltaY) < ((long) this.doubleTapSlopSquare))) {
            return DoubleTapInfo$Status.FarPosition;
        }
        return DoubleTapInfo$Status.Success;
    }

    public long getDeltaTime() {
        return this.secondDownTime - this.firstUpTime;
    }

    public long getDeltaX() {
        return ((int) this.firstDownX) - ((int) this.secondDownX);
    }

    public long getDeltaY() {
        return ((int) this.firstDownY) - ((int) this.secondDownY);
    }

    public long getDoubleTapTimeout() {
        if (this.isLearningMode) {
            return this.doubleTapTimeoutReal;
        }
        return this.doubleTapTimeout;
    }

    DoubleTapInfo isLearningMode(boolean z) {
        this.isLearningMode = z;
        return this;
    }

    DoubleTapInfo firstDown(MotionEvent motionEvent) {
        this.firstDown = motionEvent;
        this.firstDownTime = motionEvent.getEventTime();
        this.firstDownX = motionEvent.getX(motionEvent.getActionIndex());
        this.firstDownY = motionEvent.getY(motionEvent.getActionIndex());
        return this;
    }

    DoubleTapInfo firstUpTime(long j) {
        this.firstUpTime = j;
        return this;
    }

    DoubleTapInfo secondDown(MotionEvent motionEvent) {
        this.secondDown = motionEvent;
        this.secondDownTime = motionEvent.getEventTime();
        this.secondDownX = motionEvent.getX(motionEvent.getActionIndex());
        this.secondDownY = motionEvent.getY(motionEvent.getActionIndex());
        return this;
    }

    DoubleTapInfo doubleTapMinTime(int i) {
        this.doubleTapMinTime = i;
        return this;
    }

    DoubleTapInfo doubleTapTimeout(int i) {
        this.doubleTapTimeout = i;
        return this;
    }

    DoubleTapInfo doubleTapTimeoutReal(int i) {
        this.doubleTapTimeoutReal = i;
        return this;
    }

    DoubleTapInfo doubleTapSlopSquare(int i) {
        this.doubleTapSlopSquare = i;
        return this;
    }
}
