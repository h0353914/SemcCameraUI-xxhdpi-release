package com.sonyericsson.android.camera.controller;

import com.sonyericsson.cameracommon.storage.Storage$StorageReadyState;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;

class StateMachine$StateResume$1$1 implements Runnable {
    final /* synthetic */ StateMachine$StateResume$1 this$2;
    final /* synthetic */ Storage$StorageReadyState val$state;
    final /* synthetic */ Storage$StorageType val$type;

    StateMachine$StateResume$1$1(StateMachine$StateResume$1 stateMachine$StateResume$1, Storage$StorageType storage$StorageType, Storage$StorageReadyState storage$StorageReadyState) {
        this.this$2 = stateMachine$StateResume$1;
        this.val$type = storage$StorageType;
        this.val$state = storage$StorageReadyState;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$2.this$1.this$0.sendEvent(StateMachine$TransitterEvent.EVENT_STORAGE_READY_STATE_CHANGED, this.val$type, this.val$state);
    }
}
