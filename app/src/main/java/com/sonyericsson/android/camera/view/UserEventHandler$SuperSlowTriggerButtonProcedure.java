package com.sonyericsson.android.camera.view;

import android.graphics.Point;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;

/* JADX INFO: loaded from: classes.dex */
class UserEventHandler$SuperSlowTriggerButtonProcedure extends UserEventHandler$VideoRecordingButtonProcedure {
    final /* synthetic */ UserEventHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private UserEventHandler$SuperSlowTriggerButtonProcedure(UserEventHandler userEventHandler) {
        super(userEventHandler, null);
        this.this$0 = userEventHandler;
    }

    /* synthetic */ UserEventHandler$SuperSlowTriggerButtonProcedure(UserEventHandler userEventHandler, UserEventHandler$1 userEventHandler$1) {
        this(userEventHandler);
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$VideoRecordingButtonProcedure, com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    public void doTouchUp(Point point) {
        UserEventHandler.access$3400(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_TRIGGER_SLOW_MOTION, new Object[0]);
    }
}
