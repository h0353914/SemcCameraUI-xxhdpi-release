package com.sonyericsson.android.camera.controller;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$StateVideoRecordingPausing extends StateMachine$StateVideoRecording {
    final /* synthetic */ StateMachine this$0;

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StateVideoRecording
    protected boolean isPaused() {
        return true;
    }

    /* synthetic */ StateMachine$StateVideoRecordingPausing(StateMachine stateMachine, StateMachine$1 stateMachine$1) {
        this(stateMachine);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StateVideoRecordingPausing(StateMachine stateMachine) {
        super(stateMachine, (StateMachine$1) null);
        this.this$0 = stateMachine;
        this.mCaptureState = StateMachine$CaptureState.STATE_VIDEO_RECORDING_PAUSING;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleResumeRecording(Object... objArr) {
        StateMachine.access$12600(this.this$0);
        StateMachine.access$2600(this.this$0).requestOnePreviewFrame();
    }
}
