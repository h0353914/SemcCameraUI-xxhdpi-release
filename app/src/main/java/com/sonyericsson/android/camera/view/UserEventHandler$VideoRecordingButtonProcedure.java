package com.sonyericsson.android.camera.view;

import android.graphics.Point;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.research.LocalResearchUtil$MeasurementKey;

/* JADX INFO: loaded from: classes.dex */
class UserEventHandler$VideoRecordingButtonProcedure extends UserEventHandler$TouchEventProcedure {
    final /* synthetic */ UserEventHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private UserEventHandler$VideoRecordingButtonProcedure(UserEventHandler userEventHandler) {
        super(userEventHandler, null);
        this.this$0 = userEventHandler;
    }

    /* synthetic */ UserEventHandler$VideoRecordingButtonProcedure(UserEventHandler userEventHandler, UserEventHandler$1 userEventHandler$1) {
        this(userEventHandler);
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    public void doTouchDown() {
        UserEventHandler.access$3300(this.this$0);
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    public void doTouchUp(Point point) {
        StateMachine$TransitterEvent stateMachine$TransitterEvent;
        if (UserEventHandler.access$3400(this.this$0).isRecording()) {
            LocalResearchUtil.getInstance().startMeasurement(LocalResearchUtil$MeasurementKey.VIDEO_RECORDING_STOP_READY_FOR_USE);
            stateMachine$TransitterEvent = StateMachine$TransitterEvent.EVENT_STOP_RECORDING;
        } else {
            stateMachine$TransitterEvent = StateMachine$TransitterEvent.EVENT_START_RECORDING;
        }
        UserEventHandler.access$3400(this.this$0).sendEvent(stateMachine$TransitterEvent, new Object[0]);
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    public void doCancel() {
        UserEventHandler.access$3400(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_CAPTURE_CANCEL, new Object[0]);
    }
}
