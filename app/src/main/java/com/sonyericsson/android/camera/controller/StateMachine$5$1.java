package com.sonyericsson.android.camera.controller;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$5$1 implements Runnable {
    final /* synthetic */ StateMachine$5 this$1;
    final /* synthetic */ int val$progress;

    StateMachine$5$1(StateMachine$5 stateMachine$5, int i) {
        this.this$1 = stateMachine$5;
        this.val$progress = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        StateMachine.access$14500(this.this$1.this$0, this.val$progress);
    }
}
