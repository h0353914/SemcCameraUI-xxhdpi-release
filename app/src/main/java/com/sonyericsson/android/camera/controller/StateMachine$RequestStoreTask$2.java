package com.sonyericsson.android.camera.controller;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$RequestStoreTask$2 implements Runnable {
    final /* synthetic */ StateMachine$RequestStoreTask this$1;

    StateMachine$RequestStoreTask$2(StateMachine$RequestStoreTask stateMachine$RequestStoreTask) {
        this.this$1 = stateMachine$RequestStoreTask;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$1.this$0.sendEvent(StateMachine$TransitterEvent.EVENT_ON_STORE_REQUESTED, new Object[0]);
    }
}
