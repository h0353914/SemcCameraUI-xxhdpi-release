package com.sonyericsson.android.camera.controller;

class StateMachine$StateVideoReady$1 implements Runnable {
    final /* synthetic */ StateMachine$StateVideoReady this$1;

    StateMachine$StateVideoReady$1(StateMachine$StateVideoReady stateMachine$StateVideoReady) {
        this.this$1 = stateMachine$StateVideoReady;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$1.this$0.sendEvent(StateMachine$TransitterEvent.EVENT_START_RECORDING, new Object[0]);
    }
}
