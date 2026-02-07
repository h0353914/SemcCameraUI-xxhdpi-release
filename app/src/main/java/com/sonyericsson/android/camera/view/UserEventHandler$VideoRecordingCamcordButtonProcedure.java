package com.sonyericsson.android.camera.view;

import android.graphics.Point;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;

/* JADX INFO: loaded from: classes.dex */
class UserEventHandler$VideoRecordingCamcordButtonProcedure extends UserEventHandler$VideoRecordingButtonProcedure {
    private final boolean mIsPauseButton;
    final /* synthetic */ UserEventHandler this$0;

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$VideoRecordingButtonProcedure, com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    public void doCancel() {
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$VideoRecordingButtonProcedure, com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    public void doTouchDown() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserEventHandler$VideoRecordingCamcordButtonProcedure(UserEventHandler userEventHandler, boolean z) {
        super(userEventHandler, null);
        this.this$0 = userEventHandler;
        this.mIsPauseButton = z;
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$VideoRecordingButtonProcedure, com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    public void doTouchUp(Point point) {
        UserEventHandler.access$3400(this.this$0).sendEvent(this.mIsPauseButton ? StateMachine$TransitterEvent.EVENT_PAUSE_RECORDING : StateMachine$TransitterEvent.EVENT_RESUME_RECORDING, new Object[0]);
    }
}
