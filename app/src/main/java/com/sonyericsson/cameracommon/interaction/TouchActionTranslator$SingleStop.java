package com.sonyericsson.cameracommon.interaction;

import android.graphics.Point;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
class TouchActionTranslator$SingleStop implements TouchActionTranslator$InteractionState {
    final /* synthetic */ TouchActionTranslator this$0;

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$InteractionState
    public void handleSingleTouchStopEvent(Point point, Point point2, Point point3) {
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$InteractionState
    public void handleTouchRotateEvent(float f, float f2) {
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$InteractionState
    public void handleTouchScaleEvent(float f, float f2, float f3) {
    }

    private TouchActionTranslator$SingleStop(TouchActionTranslator touchActionTranslator) {
        this.this$0 = touchActionTranslator;
    }

    /* synthetic */ TouchActionTranslator$SingleStop(TouchActionTranslator touchActionTranslator, TouchActionTranslator$1 touchActionTranslator$1) {
        this(touchActionTranslator);
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$InteractionState
    public void handleMotionEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1) {
            TouchActionTranslator.access$200(this.this$0).onSingleReleased(new Point((int) motionEvent.getX(0), (int) motionEvent.getY(0)));
            TouchActionTranslator.access$400(this.this$0, new TouchActionTranslator$Idle(this.this$0, null));
        } else if (actionMasked == 3) {
            TouchActionTranslator.access$200(this.this$0).onSingleCanceled();
            TouchActionTranslator.access$400(this.this$0, new TouchActionTranslator$Idle(this.this$0, null));
        } else if (actionMasked == 5 && motionEvent.getPointerCount() != 1) {
            TouchActionTranslator.access$200(this.this$0).onDoubleTouched(new Point((int) motionEvent.getX(0), (int) motionEvent.getY(0)), new Point((int) motionEvent.getX(1), (int) motionEvent.getY(1)));
            TouchActionTranslator.access$400(this.this$0, new TouchActionTranslator$DoubleDown(this.this$0, null));
        }
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$InteractionState
    public void handleSingleTouchMoveEvent(Point point, Point point2, Point point3) {
        TouchActionTranslator.access$200(this.this$0).onSingleMoved(point, point2, point3);
        TouchActionTranslator.access$400(this.this$0, new TouchActionTranslator$SingleMove(this.this$0, null));
    }
}
