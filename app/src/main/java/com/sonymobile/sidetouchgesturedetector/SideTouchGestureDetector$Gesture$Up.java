package com.sonymobile.sidetouchgesturedetector;

import android.view.MotionEvent;

class SideTouchGestureDetector$Gesture$Up extends SideTouchGestureDetector$Gesture$State {
    private long mUpTime;
    final /* synthetic */ SideTouchGestureDetector$Gesture this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private SideTouchGestureDetector$Gesture$Up(SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture) {
        super(sideTouchGestureDetector$Gesture, null);
        this.this$1 = sideTouchGestureDetector$Gesture;
    }

    /* synthetic */ SideTouchGestureDetector$Gesture$Up(SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture, SideTouchGestureDetector$1 sideTouchGestureDetector$1) {
        this(sideTouchGestureDetector$Gesture);
    }

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$Gesture$State
    void enter(MotionEvent motionEvent) {
        this.mUpTime = motionEvent.getEventTime();
        SideTouchGestureDetector$Gesture.access$2800(this.this$1);
    }

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$Gesture$State
    void exit() {
        SideTouchGestureDetector$Gesture.access$2900(this.this$1);
    }

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$Gesture$State
    boolean processDown(MotionEvent motionEvent) {
        if (!isConsideredDoubleTap(motionEvent)) {
            return false;
        }
        SideTouchGestureDetector$Gesture.access$2700(this.this$1, 2);
        SideTouchGestureDetector$Gesture.access$1300(this.this$1, this.this$1.doubleTapDownState, motionEvent);
        SideTouchGestureDetector.access$2000(this.this$1.this$0).onDoubleTap(SideTouchGestureDetector$Gesture.access$1500(this.this$1), motionEvent);
        return true;
    }

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$Gesture$State
    void processMessage(int i) {
        if (i != 2) {
            return;
        }
        if (SideTouchGestureDetector.access$2000(this.this$1.this$0) != null) {
            SideTouchGestureDetector.access$2000(this.this$1.this$0).onSingleTapConfirmed(SideTouchGestureDetector$Gesture.access$1500(this.this$1), SideTouchGestureDetector$Gesture.access$1800(this.this$1));
        }
        SideTouchGestureDetector$Gesture.access$1300(this.this$1, this.this$1.initialState, null);
    }

    private boolean isConsideredDoubleTap(MotionEvent motionEvent) {
        long eventTime = motionEvent.getEventTime() - this.mUpTime;
        SideTouchGestureDetector.access$3300(this.this$1.this$0).isLearningMode(SideTouchGestureDetector.access$3200(this.this$1.this$0)).firstDown(SideTouchGestureDetector$Gesture.access$1800(this.this$1)).firstUpTime(this.mUpTime).secondDown(motionEvent).doubleTapMinTime(SideTouchGestureDetector.access$3100(this.this$1.this$0)).doubleTapTimeout(SideTouchGestureDetector.access$2100(this.this$1.this$0)).doubleTapTimeoutReal(SideTouchGestureDetector.access$3000(this.this$1.this$0));
        if (eventTime > SideTouchGestureDetector.access$2100(this.this$1.this$0) || eventTime < SideTouchGestureDetector.access$3100(this.this$1.this$0)) {
            SideTouchGestureDetector.access$2000(this.this$1.this$0).onDoubleTapForLearning(SideTouchGestureDetector.access$3300(this.this$1.this$0));
            return false;
        }
        int x = ((int) SideTouchGestureDetector$Gesture.access$1800(this.this$1).getX(SideTouchGestureDetector$Gesture.access$1800(this.this$1).getActionIndex())) - ((int) motionEvent.getX(motionEvent.getActionIndex()));
        int y = ((int) SideTouchGestureDetector$Gesture.access$1800(this.this$1).getY(SideTouchGestureDetector$Gesture.access$1800(this.this$1).getActionIndex())) - ((int) motionEvent.getY(motionEvent.getActionIndex()));
        int iAccess$3400 = SideTouchGestureDetector.access$3400(this.this$1.this$0);
        boolean z = (x * x) + (y * y) < iAccess$3400;
        SideTouchGestureDetector.access$3300(this.this$1.this$0).doubleTapSlopSquare(iAccess$3400);
        SideTouchGestureDetector.access$2000(this.this$1.this$0).onDoubleTapForLearning(SideTouchGestureDetector.access$3300(this.this$1.this$0));
        return z;
    }
}
