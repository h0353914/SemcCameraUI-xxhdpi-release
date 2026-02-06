package com.sonymobile.sidetouchgesturedetector;

import android.view.MotionEvent;

class SideTouchGestureDetector$Gesture$State {
    final /* synthetic */ SideTouchGestureDetector$Gesture this$1;

    void enter(MotionEvent motionEvent) {
    }

    void exit() {
    }

    boolean processDown(MotionEvent motionEvent) {
        return false;
    }

    void processMessage(int i) {
    }

    void processMove(MotionEvent motionEvent) {
    }

    boolean processUp(MotionEvent motionEvent) {
        return false;
    }

    private SideTouchGestureDetector$Gesture$State(SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture) {
        this.this$1 = sideTouchGestureDetector$Gesture;
    }

    /* synthetic */ SideTouchGestureDetector$Gesture$State(SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture, SideTouchGestureDetector$1 sideTouchGestureDetector$1) {
        this(sideTouchGestureDetector$Gesture);
    }

    final void cancel() {
        SideTouchGestureDetector$Gesture.access$1300(this.this$1, this.this$1.initialState, null);
    }
}
