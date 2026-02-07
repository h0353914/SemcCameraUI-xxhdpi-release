package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.device.CameraDeviceHandler$ImageReaderInitializedCallback;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$StatePhotoCapture$1 implements CameraDeviceHandler$ImageReaderInitializedCallback {
    final /* synthetic */ StateMachine$StatePhotoCapture this$1;

    StateMachine$StatePhotoCapture$1(StateMachine$StatePhotoCapture stateMachine$StatePhotoCapture) {
        this.this$1 = stateMachine$StatePhotoCapture;
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$ImageReaderInitializedCallback
    public void onInitialized() {
        StateMachine.access$1700(this.this$1.this$0).post(new StateMachine$StatePhotoCapture$1$1(this));
    }
}
