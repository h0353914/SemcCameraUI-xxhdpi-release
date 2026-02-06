package com.sonyericsson.cameracommon.interaction;

import android.graphics.Point;
import android.view.MotionEvent;

class TouchActionTranslator$Idle implements TouchActionTranslator$InteractionState {
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

    private TouchActionTranslator$Idle(TouchActionTranslator touchActionTranslator) {
        this.this$0 = touchActionTranslator;
    }

    /* synthetic */ TouchActionTranslator$Idle(TouchActionTranslator touchActionTranslator, TouchActionTranslator$1 touchActionTranslator$1) {
        this(touchActionTranslator);
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator$InteractionState
    public void handleMotionEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 0) {
            return;
        }
        TouchActionTranslator.access$200(this.this$0).onSingleTouched(new Point((int) motionEvent.getX(0), (int) motionEvent.getY(0)));
        TouchActionTranslator.access$400(this.this$0, new TouchActionTranslator$SingleDown(this.this$0, null));
    }
}
