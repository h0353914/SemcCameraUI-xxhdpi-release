package com.sonymobile.sidetouchgesturedetector;

import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
class SideTouchGestureDetector$Gesture$LongPress extends SideTouchGestureDetector$Gesture$State {
    final /* synthetic */ SideTouchGestureDetector$Gesture this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private SideTouchGestureDetector$Gesture$LongPress(SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture) {
        super(sideTouchGestureDetector$Gesture, null);
        this.this$1 = sideTouchGestureDetector$Gesture;
    }

    /* synthetic */ SideTouchGestureDetector$Gesture$LongPress(SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture, SideTouchGestureDetector$1 sideTouchGestureDetector$1) {
        this(sideTouchGestureDetector$Gesture);
    }

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$Gesture$State
    void processMove(MotionEvent motionEvent) {
        int actionIndex = SideTouchGestureDetector$Gesture.access$1800(this.this$1).getActionIndex();
        int iFindPointerIndex = motionEvent.findPointerIndex(SideTouchGestureDetector$Gesture.access$1800(this.this$1).getPointerId(actionIndex));
        int x = (int) (motionEvent.getX(iFindPointerIndex) - SideTouchGestureDetector$Gesture.access$1800(this.this$1).getX(actionIndex));
        int y = (int) (motionEvent.getY(iFindPointerIndex) - SideTouchGestureDetector$Gesture.access$1800(this.this$1).getY(actionIndex));
        if ((x * x) + (y * y) > SideTouchGestureDetector.access$2600(this.this$1.this$0)) {
            SideTouchGestureDetector$Gesture.access$1300(this.this$1, this.this$1.scrollState, motionEvent);
        }
    }

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$Gesture$State
    boolean processUp(MotionEvent motionEvent) {
        if (SideTouchGestureDetector$Gesture.access$1800(this.this$1).getPointerId(SideTouchGestureDetector$Gesture.access$1800(this.this$1).getActionIndex()) != motionEvent.getPointerId(motionEvent.getActionIndex())) {
            return false;
        }
        SideTouchGestureDetector.access$1700(this.this$1.this$0).onUp(SideTouchGestureDetector$Gesture.access$1500(this.this$1), motionEvent);
        SideTouchGestureDetector$Gesture.access$1300(this.this$1, this.this$1.initialState, motionEvent);
        return true;
    }
}
