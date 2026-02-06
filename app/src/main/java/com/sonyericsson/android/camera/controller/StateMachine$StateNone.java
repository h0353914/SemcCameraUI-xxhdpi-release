package com.sonyericsson.android.camera.controller;

class StateMachine$StateNone extends StateMachine$State {
    final /* synthetic */ StateMachine this$0;

    /* synthetic */ StateMachine$StateNone(StateMachine stateMachine, StateMachine$1 stateMachine$1) {
        this(stateMachine);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StateNone(StateMachine stateMachine) {
        super(stateMachine, null);
        this.this$0 = stateMachine;
        this.mCaptureState = StateMachine$CaptureState.STATE_NONE;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleInitialize(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StateInitialize(this.this$0, null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePause(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StatePause(this.this$0, ((Boolean) objArr[0]).booleanValue(), null), objArr);
    }
}
