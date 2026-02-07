package com.sonyericsson.cameracommon.interaction;

import android.graphics.Point;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
class TouchActionTranslator$DoubleDown implements TouchActionTranslator$InteractionState {
    final /* synthetic */ TouchActionTranslator this$0;

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$InteractionState
    public void handleSingleTouchMoveEvent(Point point, Point point2, Point point3) {
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$InteractionState
    public void handleSingleTouchStopEvent(Point point, Point point2, Point point3) {
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$InteractionState
    public void handleTouchRotateEvent(float f, float f2) {
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$InteractionState
    public void handleTouchScaleEvent(float f, float f2, float f3) {
    }

    private TouchActionTranslator$DoubleDown(TouchActionTranslator touchActionTranslator) {
        this.this$0 = touchActionTranslator;
    }

    /* synthetic */ TouchActionTranslator$DoubleDown(TouchActionTranslator touchActionTranslator, TouchActionTranslator$1 touchActionTranslator$1) {
        this(touchActionTranslator);
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$InteractionState
    public void handleMotionEvent(MotionEvent motionEvent) {
        switch (motionEvent.getActionMasked()) {
            case 2:
                if (motionEvent.getPointerCount() == 2) {
                    Point point = new Point((int) motionEvent.getX(0), (int) motionEvent.getY(0));
                    Point point2 = new Point((int) motionEvent.getX(1), (int) motionEvent.getY(1));
                    TouchActionTranslator.access$200(this.this$0).onDoubleMoved(point, point2);
                    TouchActionTranslator.access$400(this.this$0, new TouchActionTranslator$DoubleMove(this.this$0, point, point2));
                    break;
                }
                break;
            case 3:
                TouchActionTranslator.access$200(this.this$0).onDoubleCanceled();
                TouchActionTranslator.access$400(this.this$0, new TouchActionTranslator$Idle(this.this$0, null));
                break;
            case 5:
                if (motionEvent.getPointerCount() >= 3) {
                    TouchActionTranslator.access$400(this.this$0, new TouchActionTranslator$OverTriple(this.this$0, null));
                }
                break;
            case 6:
                if (motionEvent.getPointerCount() != 1) {
                    int actionIndex = motionEvent.getActionIndex();
                    int i = actionIndex == 0 ? 1 : 0;
                    TouchActionTranslator.access$200(this.this$0).onSingleReleasedInDouble(new Point((int) motionEvent.getX(actionIndex), (int) motionEvent.getY(actionIndex)), new Point((int) motionEvent.getX(i), (int) motionEvent.getY(i)));
                    TouchActionTranslator.access$900(this.this$0).updateCurrentAndLastPosition((int) motionEvent.getX(i), (int) motionEvent.getY(i));
                    TouchActionTranslator.access$400(this.this$0, new TouchActionTranslator$SingleMove(this.this$0, null));
                    break;
                }
                break;
        }
    }
}
