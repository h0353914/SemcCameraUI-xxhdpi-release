package com.sonyericsson.cameracommon.interaction;

import android.graphics.Point;
import android.graphics.PointF;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
class TouchActionTranslator$DoubleMove implements TouchActionTranslator$InteractionState {
    final /* synthetic */ TouchActionTranslator this$0;

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$InteractionState
    public void handleSingleTouchMoveEvent(Point point, Point point2, Point point3) {
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$InteractionState
    public void handleSingleTouchStopEvent(Point point, Point point2, Point point3) {
    }

    TouchActionTranslator$DoubleMove(TouchActionTranslator touchActionTranslator, Point point, Point point2) {
        this.this$0 = touchActionTranslator;
        TouchActionTranslator.access$1000(touchActionTranslator).startScaleAndRotateDetection(new PointF(point), new PointF(point2));
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$InteractionState
    public void handleMotionEvent(MotionEvent motionEvent) {
        switch (motionEvent.getActionMasked()) {
            case 2:
                if (motionEvent.getPointerCount() == 2) {
                    TouchActionTranslator.access$1000(this.this$0).updateCurrentPosition(new PointF(motionEvent.getX(0), motionEvent.getY(0)), new PointF(motionEvent.getX(1), motionEvent.getY(1)));
                    TouchActionTranslator.access$200(this.this$0).onDoubleMoved(new Point((int) motionEvent.getX(0), (int) motionEvent.getY(0)), new Point((int) motionEvent.getX(1), (int) motionEvent.getY(1)));
                    break;
                }
                break;
            case 3:
                TouchActionTranslator.access$200(this.this$0).onDoubleCanceled();
                TouchActionTranslator.access$400(this.this$0, new TouchActionTranslator$Idle(this.this$0, null));
                break;
            case 5:
                TouchActionTranslator.access$1000(this.this$0).stopScaleAndRotateDetection();
                TouchActionTranslator.access$400(this.this$0, new TouchActionTranslator$OverTriple(this.this$0, null));
                break;
            case 6:
                TouchActionTranslator.access$1000(this.this$0).stopScaleAndRotateDetection();
                int actionIndex = motionEvent.getActionIndex();
                int i = actionIndex == 0 ? 1 : 0;
                TouchActionTranslator.access$200(this.this$0).onSingleReleasedInDouble(new Point((int) motionEvent.getX(actionIndex), (int) motionEvent.getY(actionIndex)), new Point((int) motionEvent.getX(i), (int) motionEvent.getY(i)));
                TouchActionTranslator.access$900(this.this$0).updateCurrentAndLastPosition((int) motionEvent.getX(i), (int) motionEvent.getY(i));
                TouchActionTranslator.access$400(this.this$0, new TouchActionTranslator$SingleMove(this.this$0, null));
                break;
        }
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$InteractionState
    public void handleTouchScaleEvent(float f, float f2, float f3) {
        TouchActionTranslator.access$200(this.this$0).onDoubleScaled(f, f2, f3);
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$InteractionState
    public void handleTouchRotateEvent(float f, float f2) {
        TouchActionTranslator.access$200(this.this$0).onDoubleRotated(f, f2);
    }
}
