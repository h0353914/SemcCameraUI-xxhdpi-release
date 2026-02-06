package com.sonyericsson.android.camera.controller;

class StateMachine$OnPreviewStartedListenerImpl$1 implements Runnable {
    final /* synthetic */ StateMachine$OnPreviewStartedListenerImpl this$1;

    StateMachine$OnPreviewStartedListenerImpl$1(StateMachine$OnPreviewStartedListenerImpl stateMachine$OnPreviewStartedListenerImpl) {
        this.this$1 = stateMachine$OnPreviewStartedListenerImpl;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$1.this$0.sendStaticEvent(StateMachine$StaticEvent.EVENT_ON_PREVIEW_STARTED, new Object[0]);
    }
}
