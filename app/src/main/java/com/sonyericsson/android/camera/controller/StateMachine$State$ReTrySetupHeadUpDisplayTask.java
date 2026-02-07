package com.sonyericsson.android.camera.controller;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$State$ReTrySetupHeadUpDisplayTask implements Runnable {
    private final boolean mApplySettingsForFastCapture;
    final /* synthetic */ StateMachine$State this$1;

    public StateMachine$State$ReTrySetupHeadUpDisplayTask(StateMachine$State stateMachine$State, boolean z) {
        this.this$1 = stateMachine$State;
        this.mApplySettingsForFastCapture = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$1.this$0.sendEvent(StateMachine$TransitterEvent.EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY, Boolean.valueOf(this.mApplySettingsForFastCapture));
    }
}
