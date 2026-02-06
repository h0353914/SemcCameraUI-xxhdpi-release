package com.sonyericsson.android.camera.view;

import android.graphics.Point;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;

class UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure extends UserEventHandler$VideoCaptureAreaEventProcedure {
    final /* synthetic */ UserEventHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure(UserEventHandler userEventHandler) {
        super(userEventHandler, null);
        this.this$0 = userEventHandler;
    }

    /* synthetic */ UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure(UserEventHandler userEventHandler, UserEventHandler$1 userEventHandler$1) {
        this(userEventHandler);
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$VideoCaptureAreaEventProcedure, com.sonyericsson.android.camera.view.UserEventHandler$FrontVideoCaptureAreaEventProcedure, com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    public void doTouchUp(Point point) {
        if (!UserEventHandler$AngleActionHandler.access$5400(UserEventHandler.access$3700(this.this$0)) && UserEventHandler.access$4900(this.this$0)) {
            if (UserEventHandler.access$3400(this.this$0).isVideoRecording()) {
                UserEventHandler.access$3400(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_TRIGGER_SLOW_MOTION, new Object[0]);
                return;
            } else {
                UserEventHandler.access$3400(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_START_RECORDING, new Object[0]);
                return;
            }
        }
        super.doTouchUp(point);
    }
}
