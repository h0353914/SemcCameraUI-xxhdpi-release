package com.sonymobile.sidetouchgesturedetector;

import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
class SideTouchGestureDetector$Gesture$Initial extends SideTouchGestureDetector$Gesture$State {
    final /* synthetic */ SideTouchGestureDetector$Gesture this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private SideTouchGestureDetector$Gesture$Initial(SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture) {
        super(sideTouchGestureDetector$Gesture, null);
        this.this$1 = sideTouchGestureDetector$Gesture;
    }

    /* synthetic */ SideTouchGestureDetector$Gesture$Initial(SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture, SideTouchGestureDetector$1 sideTouchGestureDetector$1) {
        this(sideTouchGestureDetector$Gesture);
    }

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$Gesture$State
    void enter(MotionEvent motionEvent) {
        if (SideTouchGestureDetector$Gesture.access$1500(this.this$1) != -1) {
            SideTouchGestureDetector.access$1600(this.this$1.this$0, SideTouchGestureDetector$Gesture.access$1500(this.this$1));
            SideTouchGestureDetector.access$1700(this.this$1.this$0).onGestureFinished(SideTouchGestureDetector$Gesture.access$1500(this.this$1));
            SideTouchGestureDetector$Gesture.access$1502(this.this$1, -1);
        }
        if (SideTouchGestureDetector$Gesture.access$1800(this.this$1) != null) {
            SideTouchGestureDetector$Gesture.access$1800(this.this$1).recycle();
            SideTouchGestureDetector$Gesture.access$1802(this.this$1, null);
        }
    }

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$Gesture$State
    void exit() {
        if (SideTouchGestureDetector$Gesture.access$1500(this.this$1) == -1) {
            SideTouchGestureDetector$Gesture.access$1502(this.this$1, SideTouchGestureDetector.access$1900(this.this$1.this$0));
        }
    }

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$Gesture$State
    boolean processDown(MotionEvent motionEvent) {
        SideTouchGestureDetector$Gesture.access$1300(this.this$1, this.this$1.downState, motionEvent);
        SideTouchGestureDetector.access$1700(this.this$1.this$0).onDown(SideTouchGestureDetector$Gesture.access$1500(this.this$1), motionEvent);
        return true;
    }
}
