package com.sonyericsson.android.camera.controller;

import com.sonyericsson.cameracommon.storage.Storage$StorageReadyState;
import com.sonyericsson.cameracommon.storage.Storage$StorageReadyStateListener;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$StorageReadyStateAdapter implements Storage$StorageReadyStateListener {
    final /* synthetic */ StateMachine this$0;

    private StateMachine$StorageReadyStateAdapter(StateMachine stateMachine) {
        this.this$0 = stateMachine;
    }

    /* synthetic */ StateMachine$StorageReadyStateAdapter(StateMachine stateMachine, StateMachine$1 stateMachine$1) {
        this(stateMachine);
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage$StorageReadyStateListener
    public void onStorageReadyStateChanged(Storage$StorageType storage$StorageType, Storage$StorageReadyState storage$StorageReadyState) {
        if (storage$StorageReadyState == Storage$StorageReadyState.COMPLETED && storage$StorageType == Storage$StorageType.EXTERNAL_CARD && StateMachine.access$800(this.this$0)) {
            StateMachine.access$802(this.this$0, false);
            StateMachine.access$1700(this.this$0).post(new StateMachine$StorageReadyStateAdapter$1(this, storage$StorageType));
        }
    }
}
