package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$StateFatal$LazyAbortTask implements Runnable {
    final /* synthetic */ StateMachine$StateFatal this$1;

    private StateMachine$StateFatal$LazyAbortTask(StateMachine$StateFatal stateMachine$StateFatal) {
        this.this$1 = stateMachine$StateFatal;
    }

    /* synthetic */ StateMachine$StateFatal$LazyAbortTask(StateMachine$StateFatal stateMachine$StateFatal, StateMachine$1 stateMachine$1) {
        this(stateMachine$StateFatal);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke LazyAbortTask");
        }
        StateMachine.access$500(this.this$1.this$0).terminateApplication();
    }
}
