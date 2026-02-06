package com.sonymobile.sidetouchgesturedetector;

import android.view.MotionEvent;

class SideTouchGestureDetector$Gesture$Scroll extends SideTouchGestureDetector$Gesture$State {
    private float mLastX;
    private float mLastY;
    final /* synthetic */ SideTouchGestureDetector$Gesture this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private SideTouchGestureDetector$Gesture$Scroll(SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture) {
        super(sideTouchGestureDetector$Gesture, null);
        this.this$1 = sideTouchGestureDetector$Gesture;
    }

    /* synthetic */ SideTouchGestureDetector$Gesture$Scroll(SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture, SideTouchGestureDetector$1 sideTouchGestureDetector$1) {
        this(sideTouchGestureDetector$Gesture);
    }

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$Gesture$State
    void enter(MotionEvent motionEvent) {
        int actionIndex = SideTouchGestureDetector$Gesture.access$1800(this.this$1).getActionIndex();
        float x = SideTouchGestureDetector$Gesture.access$1800(this.this$1).getX(actionIndex);
        float y = SideTouchGestureDetector$Gesture.access$1800(this.this$1).getY(actionIndex);
        int iFindPointerIndex = motionEvent.findPointerIndex(SideTouchGestureDetector$Gesture.access$1800(this.this$1).getPointerId(actionIndex));
        this.mLastX = motionEvent.getX(iFindPointerIndex);
        this.mLastY = motionEvent.getY(iFindPointerIndex);
        SideTouchGestureDetector.access$1700(this.this$1.this$0).onScroll(SideTouchGestureDetector$Gesture.access$1500(this.this$1), SideTouchGestureDetector$Gesture.access$1800(this.this$1), motionEvent, x - this.mLastX, y - this.mLastY);
    }

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$Gesture$State
    void processMove(MotionEvent motionEvent) {
        int iFindPointerIndex = motionEvent.findPointerIndex(SideTouchGestureDetector$Gesture.access$1800(this.this$1).getPointerId(SideTouchGestureDetector$Gesture.access$1800(this.this$1).getActionIndex()));
        SideTouchGestureDetector.access$1700(this.this$1.this$0).onScroll(SideTouchGestureDetector$Gesture.access$1500(this.this$1), SideTouchGestureDetector$Gesture.access$1800(this.this$1), motionEvent, this.mLastX - motionEvent.getX(iFindPointerIndex), this.mLastY - motionEvent.getY(iFindPointerIndex));
        this.mLastX = motionEvent.getX(iFindPointerIndex);
        this.mLastY = motionEvent.getY(iFindPointerIndex);
    }

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$Gesture$State
    boolean processUp(MotionEvent motionEvent) {
        int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
        if (SideTouchGestureDetector$Gesture.access$1800(this.this$1).getPointerId(SideTouchGestureDetector$Gesture.access$1800(this.this$1).getActionIndex()) != pointerId) {
            return false;
        }
        SideTouchGestureDetector.access$3600(this.this$1.this$0).computeCurrentVelocity(1000, SideTouchGestureDetector.access$3500(this.this$1.this$0));
        float xVelocity = SideTouchGestureDetector.access$3600(this.this$1.this$0).getXVelocity(pointerId);
        float yVelocity = SideTouchGestureDetector.access$3600(this.this$1.this$0).getYVelocity(pointerId);
        if (Math.abs(xVelocity) > SideTouchGestureDetector.access$3700(this.this$1.this$0) || Math.abs(yVelocity) > SideTouchGestureDetector.access$3700(this.this$1.this$0)) {
            SideTouchGestureDetector.access$1700(this.this$1.this$0).onFling(SideTouchGestureDetector$Gesture.access$1500(this.this$1), SideTouchGestureDetector$Gesture.access$1800(this.this$1), motionEvent, xVelocity, yVelocity);
        }
        SideTouchGestureDetector.access$1700(this.this$1.this$0).onUp(SideTouchGestureDetector$Gesture.access$1500(this.this$1), motionEvent);
        SideTouchGestureDetector$Gesture.access$1300(this.this$1, this.this$1.initialState, motionEvent);
        return true;
    }
}
