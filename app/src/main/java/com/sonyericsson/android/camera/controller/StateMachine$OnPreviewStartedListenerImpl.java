package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraSessionId;
import com.sonyericsson.android.camera.device.CameraDeviceHandler$OnPreviewStartedListener;

class StateMachine$OnPreviewStartedListenerImpl implements CameraDeviceHandler$OnPreviewStartedListener {
    final /* synthetic */ StateMachine this$0;

    private StateMachine$OnPreviewStartedListenerImpl(StateMachine stateMachine) {
        this.this$0 = stateMachine;
    }

    /* synthetic */ StateMachine$OnPreviewStartedListenerImpl(StateMachine stateMachine, StateMachine$1 stateMachine$1) {
        this(stateMachine);
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$OnPreviewStartedListener
    public void onPreviewStarted(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        StateMachine.access$500(this.this$0).runOnUiThread(new StateMachine$OnPreviewStartedListenerImpl$1(this));
    }
}
