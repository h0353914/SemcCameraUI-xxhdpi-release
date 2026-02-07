package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$7 implements Runnable {
    final /* synthetic */ StateMachine this$0;

    StateMachine$7(StateMachine stateMachine) {
        this.this$0 = stateMachine;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke onCropRegionReady");
        }
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_HIDE_BLACK_SCREEN, new Object[0]);
    }
}
