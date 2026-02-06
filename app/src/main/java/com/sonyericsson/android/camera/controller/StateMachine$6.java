package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.recorder.superslowrecorder.OnSuperSlowRecordingFinishedListener;
import com.sonyericsson.android.camera.util.CamLog;

class StateMachine$6 implements OnSuperSlowRecordingFinishedListener {
    final /* synthetic */ StateMachine this$0;

    StateMachine$6(StateMachine stateMachine) {
        this.this$0 = stateMachine;
    }

    @Override // com.sonyericsson.android.camera.recorder.superslowrecorder.OnSuperSlowRecordingFinishedListener
    public void onSuperSlowRecordingFinished() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke");
        }
        this.this$0.sendEvent(StateMachine$TransitterEvent.EVENT_HIGH_FRAME_RATE_RECORDING_DONE, new Object[0]);
    }
}
