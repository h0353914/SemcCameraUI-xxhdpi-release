package com.sonymobile.sidetouchgesturedetector;

import android.view.MotionEvent;

class SideTouchGestureDetector$Gesture$DoubleTapDown extends SideTouchGestureDetector$Gesture$State {
    final /* synthetic */ SideTouchGestureDetector$Gesture this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private SideTouchGestureDetector$Gesture$DoubleTapDown(SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture) {
        super(sideTouchGestureDetector$Gesture, null);
        this.this$1 = sideTouchGestureDetector$Gesture;
    }

    /* synthetic */ SideTouchGestureDetector$Gesture$DoubleTapDown(SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture, SideTouchGestureDetector$1 sideTouchGestureDetector$1) {
        this(sideTouchGestureDetector$Gesture);
    }

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$Gesture$State
    void enter(MotionEvent motionEvent) {
        SideTouchGestureDetector$Gesture.access$1800(this.this$1).recycle();
        SideTouchGestureDetector$Gesture.access$1802(this.this$1, MotionEvent.obtain(motionEvent));
        if (SideTouchGestureDetector.access$2300(this.this$1.this$0)) {
            SideTouchGestureDetector$Gesture.access$2500(this.this$1, 1, motionEvent.getEventTime() + ((long) SideTouchGestureDetector.access$2400(this.this$1.this$0)));
        }
    }

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$Gesture$State
    void processMove(MotionEvent motionEvent) {
        int actionIndex = SideTouchGestureDetector$Gesture.access$1800(this.this$1).getActionIndex();
        int iFindPointerIndex = motionEvent.findPointerIndex(SideTouchGestureDetector$Gesture.access$1800(this.this$1).getPointerId(actionIndex));
        int x = (int) (motionEvent.getX(iFindPointerIndex) - SideTouchGestureDetector$Gesture.access$1800(this.this$1).getX(actionIndex));
        int y = (int) (motionEvent.getY(iFindPointerIndex) - SideTouchGestureDetector$Gesture.access$1800(this.this$1).getY(actionIndex));
        if ((x * x) + (y * y) > SideTouchGestureDetector.access$2600(this.this$1.this$0)) {
            SideTouchGestureDetector$Gesture.access$2700(this.this$1, 1);
            SideTouchGestureDetector$Gesture.access$1300(this.this$1, this.this$1.scrollState, motionEvent);
        }
    }

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$Gesture$State
    boolean processUp(MotionEvent motionEvent) {
        if (SideTouchGestureDetector$Gesture.access$1800(this.this$1).getPointerId(SideTouchGestureDetector$Gesture.access$1800(this.this$1).getActionIndex()) != motionEvent.getPointerId(motionEvent.getActionIndex())) {
            return false;
        }
        SideTouchGestureDetector.access$1700(this.this$1.this$0).onUp(SideTouchGestureDetector$Gesture.access$1500(this.this$1), motionEvent);
        SideTouchGestureDetector$Gesture.access$2700(this.this$1, 1);
        SideTouchGestureDetector$Gesture.access$1300(this.this$1, this.this$1.initialState, motionEvent);
        return true;
    }

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$Gesture$State
    void processMessage(int i) {
        if (i != 1) {
            return;
        }
        SideTouchGestureDetector.access$1700(this.this$1.this$0).onLongPress(SideTouchGestureDetector$Gesture.access$1500(this.this$1), SideTouchGestureDetector$Gesture.access$1800(this.this$1));
        SideTouchGestureDetector$Gesture.access$1300(this.this$1, this.this$1.longPressState, null);
    }
}
