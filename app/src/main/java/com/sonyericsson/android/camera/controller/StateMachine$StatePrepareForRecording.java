package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$StatePrepareForRecording extends StateMachine$StateNone {
    final /* synthetic */ StateMachine this$0;

    /* synthetic */ StateMachine$StatePrepareForRecording(StateMachine stateMachine, StateMachine$1 stateMachine$1) {
        this(stateMachine);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StatePrepareForRecording(StateMachine stateMachine) {
        super(stateMachine, null);
        this.this$0 = stateMachine;
        this.mCaptureState = StateMachine$CaptureState.STATE_PREPARE_FOR_RECORDING;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnOrientationChanged(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_ORIENTATION_CHANGED, objArr[0]);
    }
}
