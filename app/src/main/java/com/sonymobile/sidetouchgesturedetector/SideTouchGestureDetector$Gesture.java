package com.sonymobile.sidetouchgesturedetector;

import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
class SideTouchGestureDetector$Gesture {
    final SideTouchGestureDetector$Gesture$State doubleTapDownState;
    final SideTouchGestureDetector$Gesture$State downState;
    final SideTouchGestureDetector$Gesture$State initialState;
    final SideTouchGestureDetector$Gesture$State longPressState;
    private MotionEvent mDownEvent;
    private int mGestureId;
    private SideTouchGestureDetector$Gesture$State mState;
    final SideTouchGestureDetector$Gesture$State scrollState;
    final /* synthetic */ SideTouchGestureDetector this$0;
    final SideTouchGestureDetector$Gesture$State upState;

    private SideTouchGestureDetector$Gesture(SideTouchGestureDetector sideTouchGestureDetector) {
        this.this$0 = sideTouchGestureDetector;
        this.initialState = new SideTouchGestureDetector$Gesture$Initial(this, null);
        this.downState = new SideTouchGestureDetector$Gesture$Down(this, null);
        this.upState = new SideTouchGestureDetector$Gesture$Up(this, null);
        this.longPressState = new SideTouchGestureDetector$Gesture$LongPress(this, null);
        this.scrollState = new SideTouchGestureDetector$Gesture$Scroll(this, null);
        this.doubleTapDownState = new SideTouchGestureDetector$Gesture$DoubleTapDown(this, null);
        this.mGestureId = -1;
        this.mState = this.initialState;
    }

    /* synthetic */ SideTouchGestureDetector$Gesture(SideTouchGestureDetector sideTouchGestureDetector, SideTouchGestureDetector$1 sideTouchGestureDetector$1) {
        this(sideTouchGestureDetector);
    }

    static /* synthetic */ void access$1300(SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture, SideTouchGestureDetector$Gesture$State sideTouchGestureDetector$Gesture$State, MotionEvent motionEvent) {
        sideTouchGestureDetector$Gesture.setState(sideTouchGestureDetector$Gesture$State, motionEvent);
    }

    static /* synthetic */ int access$1500(SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture) {
        return sideTouchGestureDetector$Gesture.mGestureId;
    }

    static /* synthetic */ int access$1502(SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture, int i) {
        sideTouchGestureDetector$Gesture.mGestureId = i;
        return i;
    }

    static /* synthetic */ MotionEvent access$1800(SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture) {
        return sideTouchGestureDetector$Gesture.mDownEvent;
    }

    static /* synthetic */ MotionEvent access$1802(SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture, MotionEvent motionEvent) {
        sideTouchGestureDetector$Gesture.mDownEvent = motionEvent;
        return motionEvent;
    }

    static /* synthetic */ void access$2200(SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture, int i, long j) {
        sideTouchGestureDetector$Gesture.sendMessageDelayed(i, j);
    }

    static /* synthetic */ void access$2500(SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture, int i, long j) {
        sideTouchGestureDetector$Gesture.sendMessageAtTime(i, j);
    }

    static /* synthetic */ void access$2700(SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture, int i) {
        sideTouchGestureDetector$Gesture.removeMessages(i);
    }

    static /* synthetic */ void access$2800(SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture) {
        sideTouchGestureDetector$Gesture.moveToWaitingList();
    }

    static /* synthetic */ void access$2900(SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture) {
        sideTouchGestureDetector$Gesture.removeFromWaitingList();
    }

    boolean onDownEvent(MotionEvent motionEvent) {
        return this.mState.processDown(motionEvent);
    }

    void onMoveEvent(MotionEvent motionEvent) {
        this.mState.processMove(motionEvent);
    }

    boolean onUpEvent(MotionEvent motionEvent) {
        return this.mState.processUp(motionEvent);
    }

    void onHandleMessage(int i) {
        this.mState.processMessage(i);
    }

    void cancel() {
        this.mState.cancel();
    }

    private void setState(SideTouchGestureDetector$Gesture$State sideTouchGestureDetector$Gesture$State, MotionEvent motionEvent) {
        if (this.mState != sideTouchGestureDetector$Gesture$State) {
            this.mState.exit();
            this.mState = sideTouchGestureDetector$Gesture$State;
            sideTouchGestureDetector$Gesture$State.enter(motionEvent);
        }
    }

    private void moveToWaitingList() {
        SideTouchGestureDetector.access$1000(this.this$0, this);
    }

    private void removeFromWaitingList() {
        SideTouchGestureDetector.access$1100(this.this$0, this);
    }

    private void sendMessageDelayed(int i, long j) {
        removeMessages(i);
        SideTouchGestureDetector.access$1200(this.this$0).sendMessageDelayed(SideTouchGestureDetector.access$1200(this.this$0).obtainMessage(i, this), j);
    }

    private void sendMessageAtTime(int i, long j) {
        removeMessages(i);
        SideTouchGestureDetector.access$1200(this.this$0).sendMessageAtTime(SideTouchGestureDetector.access$1200(this.this$0).obtainMessage(i, this), j);
    }

    private void removeMessages(int i) {
        SideTouchGestureDetector.access$1200(this.this$0).removeMessages(i, this);
    }
}
