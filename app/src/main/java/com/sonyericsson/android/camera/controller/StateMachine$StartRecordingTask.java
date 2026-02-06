package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.util.CamLog;

class StateMachine$StartRecordingTask implements Runnable {
    private final boolean mBySideSense;
    final /* synthetic */ StateMachine this$0;

    public StateMachine$StartRecordingTask(StateMachine stateMachine, boolean z) {
        this.this$0 = stateMachine;
        this.mBySideSense = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke StartRecordingTask");
        }
        StateMachine.access$14400(this.this$0, this.mBySideSense);
    }
}
