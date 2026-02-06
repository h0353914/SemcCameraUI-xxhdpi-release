package com.sonyericsson.android.camera;

import android.view.MotionEvent;
import com.sonymobile.sidetouchgesturedetector.DoubleTapInfo;
import com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$OnDoubleTapListener;
import com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$OnGestureListener;
import com.sonymobile.sidetouchgesturedetector.SideTouchUtils;

class SideTouchEventDetector$CameraSideTouchGestureListener implements SideTouchGestureDetector$OnGestureListener, SideTouchGestureDetector$OnDoubleTapListener {
    private int mCurrentGestureId;
    private int mCurrentSide;
    private SideTouchEventDetector$State mCurrentState;
    final /* synthetic */ SideTouchEventDetector this$0;

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$OnGestureListener
    public void onCancel(MotionEvent motionEvent) {
    }

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$OnDoubleTapListener
    public void onDoubleTapForLearning(DoubleTapInfo doubleTapInfo) {
    }

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$OnGestureListener
    public void onDown(int i, MotionEvent motionEvent) {
    }

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$OnDoubleTapListener
    public void onSingleTapConfirmed(int i, MotionEvent motionEvent) {
    }

    private SideTouchEventDetector$CameraSideTouchGestureListener(SideTouchEventDetector sideTouchEventDetector) {
        this.this$0 = sideTouchEventDetector;
        this.mCurrentGestureId = -1;
        this.mCurrentSide = 0;
        this.mCurrentState = SideTouchEventDetector$State.IDLING;
    }

    /* synthetic */ SideTouchEventDetector$CameraSideTouchGestureListener(SideTouchEventDetector sideTouchEventDetector, SideTouchEventDetector$1 sideTouchEventDetector$1) {
        this(sideTouchEventDetector);
    }

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$OnGestureListener
    public void onUp(int i, MotionEvent motionEvent) {
        if (this.mCurrentGestureId == i && this.mCurrentState == SideTouchEventDetector$State.DOUBLE_TAPPING) {
            SideTouchEventDetector.access$300(this.this$0).onDoubleTap(SideTouchEventDetector$SideTouchEvent.access$200(motionEvent, motionEvent.getActionIndex()), (int) motionEvent.getX(), (int) motionEvent.getY());
            if (finishGestureTracking(i)) {
                this.mCurrentState = SideTouchEventDetector$State.IDLING;
            }
        }
    }

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$OnGestureListener
    public void onLongPress(int i, MotionEvent motionEvent) {
        if (this.mCurrentState == SideTouchEventDetector$State.DOUBLE_TAPPING && finishGestureTracking(i)) {
            this.mCurrentState = SideTouchEventDetector$State.IDLING;
        }
    }

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$OnDoubleTapListener
    public void onDoubleTap(int i, MotionEvent motionEvent) {
        if (this.mCurrentState == SideTouchEventDetector$State.IDLING && startGestureTracking(i, motionEvent)) {
            this.mCurrentState = SideTouchEventDetector$State.DOUBLE_TAPPING;
        }
    }

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$OnGestureListener
    public void onScroll(int i, MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        switch (SideTouchUtils.getLogicalScreenSide(motionEvent)) {
            case 1:
            case 2:
                int iFindPointerIndex = motionEvent2.findPointerIndex(motionEvent.getPointerId(motionEvent.getActionIndex()));
                switch (this.mCurrentState) {
                    case SCROLLING:
                        if (this.mCurrentGestureId == i) {
                            SideTouchEventDetector.access$300(this.this$0).onScroll(SideTouchEventDetector$SideTouchEvent.access$500(SideTouchEventDetector$SideTouchArea.access$400(this.mCurrentSide), (int) motionEvent2.getX(iFindPointerIndex), (int) motionEvent2.getY(iFindPointerIndex)));
                        }
                        break;
                    case DOUBLE_TAPPING:
                        if (finishGestureTracking(i)) {
                            this.mCurrentState = SideTouchEventDetector$State.IDLING;
                        }
                        break;
                }
                break;
        }
    }

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$OnGestureListener
    public void onFling(int i, MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (this.mCurrentState == SideTouchEventDetector$State.DOUBLE_TAPPING && finishGestureTracking(i)) {
            this.mCurrentState = SideTouchEventDetector$State.IDLING;
        }
    }

    @Override // com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector$OnGestureListener
    public void onGestureFinished(int i) {
        if (this.mCurrentState == SideTouchEventDetector$State.IDLING || !finishGestureTracking(i)) {
            return;
        }
        this.mCurrentState = SideTouchEventDetector$State.IDLING;
    }

    private boolean startGestureTracking(int i, MotionEvent motionEvent) {
        if (this.mCurrentGestureId != -1 || !SideTouchEventDetector.access$600(this.this$0, motionEvent)) {
            return false;
        }
        this.mCurrentGestureId = i;
        this.mCurrentSide = SideTouchUtils.getLogicalScreenSide(motionEvent);
        SideTouchEventDetector.access$300(this.this$0).onGestureStart();
        return true;
    }

    private boolean finishGestureTracking(int i) {
        if (this.mCurrentGestureId != i) {
            return false;
        }
        this.mCurrentGestureId = -1;
        this.mCurrentSide = 0;
        if (this.mCurrentState == SideTouchEventDetector$State.SCROLLING) {
            SideTouchEventDetector.access$300(this.this$0).onScrollEnd();
        }
        SideTouchEventDetector.access$300(this.this$0).onGestureFinished();
        return true;
    }
}
