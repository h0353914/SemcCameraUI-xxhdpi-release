package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.controller.selftimerfeedback.LedLight;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$StateCaptureCountdown$LedLightImpl implements LedLight {
    final /* synthetic */ StateMachine$StateCaptureCountdown this$1;

    private StateMachine$StateCaptureCountdown$LedLightImpl(StateMachine$StateCaptureCountdown stateMachine$StateCaptureCountdown) {
        this.this$1 = stateMachine$StateCaptureCountdown;
    }

    /* synthetic */ StateMachine$StateCaptureCountdown$LedLightImpl(StateMachine$StateCaptureCountdown stateMachine$StateCaptureCountdown, StateMachine$1 stateMachine$1) {
        this(stateMachine$StateCaptureCountdown);
    }

    @Override // com.sonyericsson.android.camera.controller.selftimerfeedback.LedLight
    public void turnOn() {
        StateMachine.access$2600(this.this$1.this$0).setTorchAndCommit(true);
    }

    @Override // com.sonyericsson.android.camera.controller.selftimerfeedback.LedLight
    public void turnOff() {
        StateMachine.access$2600(this.this$1.this$0).setTorchAndCommit(false);
    }
}
