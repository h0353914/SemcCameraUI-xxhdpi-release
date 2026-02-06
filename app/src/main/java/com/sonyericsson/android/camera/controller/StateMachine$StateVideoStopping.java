package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.recorder.RecorderController$Result;

class StateMachine$StateVideoStopping extends StateMachine$StateVideoBase {
    private static final String TAG = "StateMachine.StateVideoStopping";
    private final RecorderController$Result mResult;
    final /* synthetic */ StateMachine this$0;

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StateVideoBase, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleFinishZoom(Object... objArr) {
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StateVideoBase, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePerformZoom(Object... objArr) {
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StateVideoBase, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePrepareZoom(Object... objArr) {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StateMachine$StateVideoStopping(StateMachine stateMachine, RecorderController$Result recorderController$Result) {
        super(stateMachine);
        this.this$0 = stateMachine;
        this.mCaptureState = StateMachine$CaptureState.STATE_VIDEO_STOPPING;
        this.mResult = recorderController$Result;
    }

    public StateMachine$StateVideoStopping(StateMachine stateMachine) {
        this(stateMachine, RecorderController$Result.SUCCESS);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnVideoRecordingDone(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StateVideoStore(this.this$0, this.mResult, null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePause(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StatePause(this.this$0, ((Boolean) objArr[0]).booleanValue(), null), objArr);
    }
}
