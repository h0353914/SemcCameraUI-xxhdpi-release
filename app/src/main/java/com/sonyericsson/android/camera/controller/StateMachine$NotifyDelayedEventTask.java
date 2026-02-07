package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$NotifyDelayedEventTask implements Runnable {
    private final Object[] mArgs;
    private final StateMachine$TransitterEvent mEvent;
    final /* synthetic */ StateMachine this$0;

    /* synthetic */ StateMachine$NotifyDelayedEventTask(StateMachine stateMachine, StateMachine$TransitterEvent stateMachine$TransitterEvent, Object[] objArr, StateMachine$1 stateMachine$1) {
        this(stateMachine, stateMachine$TransitterEvent, objArr);
    }

    private StateMachine$NotifyDelayedEventTask(StateMachine stateMachine, StateMachine$TransitterEvent stateMachine$TransitterEvent, Object[] objArr) {
        this.this$0 = stateMachine;
        this.mEvent = stateMachine$TransitterEvent;
        this.mArgs = objArr;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke NotifyDelayedEventTask");
        }
        this.this$0.sendEvent(this.mEvent, this.mArgs);
    }
}
