package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$4 implements Runnable {
    final /* synthetic */ StateMachine this$0;

    StateMachine$4(StateMachine stateMachine) {
        this.this$0 = stateMachine;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke NotifyResumeTimeoutTask");
        }
        this.this$0.sendEvent(StateMachine$TransitterEvent.EVENT_RESUME_TIMEOUT, new Object[0]);
    }
}
