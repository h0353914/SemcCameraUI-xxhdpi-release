package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.storage.Storage$StorageReadyState;
import com.sonyericsson.cameracommon.storage.Storage$StorageReadyStateListener;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;

class StateMachine$StateResume$1 implements Storage$StorageReadyStateListener {
    final /* synthetic */ StateMachine$StateResume this$1;

    StateMachine$StateResume$1(StateMachine$StateResume stateMachine$StateResume) {
        this.this$1 = stateMachine$StateResume;
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage$StorageReadyStateListener
    public void onStorageReadyStateChanged(Storage$StorageType storage$StorageType, Storage$StorageReadyState storage$StorageReadyState) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke type:" + storage$StorageType + ", state:" + storage$StorageReadyState + ", getCurrentStorage:" + StateMachine.access$400(this.this$1.this$0));
        }
        if (storage$StorageReadyState != Storage$StorageReadyState.SUSPENDED) {
            StateMachine.access$600(this.this$1.this$0).addStorageStateListener(StateMachine.access$5600(this.this$1.this$0));
        }
        if (StateMachine.access$400(this.this$1.this$0) == storage$StorageType) {
            StateMachine.access$1700(this.this$1.this$0).post(new StateMachine$StateResume$1$1(this, storage$StorageType, storage$StorageReadyState));
        }
    }
}
