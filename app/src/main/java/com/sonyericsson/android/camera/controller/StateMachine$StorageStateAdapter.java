package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.CameraApplication;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.storage.Storage$StorageReadyState;
import com.sonyericsson.cameracommon.storage.Storage$StorageState;
import com.sonyericsson.cameracommon.storage.Storage$StorageStateListener;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;

class StateMachine$StorageStateAdapter implements Storage$StorageStateListener {
    private Storage$StorageState mOldStorageState;
    final /* synthetic */ StateMachine this$0;

    @Override // com.sonyericsson.cameracommon.storage.Storage$StorageStateListener
    public void onStorageSizeChanged(Storage$StorageType storage$StorageType, long j) {
    }

    private StateMachine$StorageStateAdapter(StateMachine stateMachine) {
        this.this$0 = stateMachine;
        this.mOldStorageState = Storage$StorageState.AVAILABLE;
    }

    /* synthetic */ StateMachine$StorageStateAdapter(StateMachine stateMachine, StateMachine$1 stateMachine$1) {
        this(stateMachine);
    }

    static /* synthetic */ void access$1500(StateMachine$StorageStateAdapter stateMachine$StorageStateAdapter, boolean z) {
        stateMachine$StorageStateAdapter.updateGestureShutterState(z);
    }

    static /* synthetic */ void access$6100(StateMachine$StorageStateAdapter stateMachine$StorageStateAdapter) {
        stateMachine$StorageStateAdapter.resume();
    }

    static /* synthetic */ Storage$StorageState access$900(StateMachine$StorageStateAdapter stateMachine$StorageStateAdapter) {
        return stateMachine$StorageStateAdapter.mOldStorageState;
    }

    static /* synthetic */ Storage$StorageState access$902(StateMachine$StorageStateAdapter stateMachine$StorageStateAdapter, Storage$StorageState storage$StorageState) {
        stateMachine$StorageStateAdapter.mOldStorageState = storage$StorageState;
        return storage$StorageState;
    }

    private void resume() {
        this.mOldStorageState = Storage$StorageState.AVAILABLE;
        updateGestureShutterState(true);
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage$StorageStateListener
    public synchronized void onStorageStateChanged(Storage$StorageType storage$StorageType, Storage$StorageState storage$StorageState, Storage$StorageReadyState storage$StorageReadyState) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke type:" + storage$StorageType + ", state:" + storage$StorageState + ", readyState:" + storage$StorageReadyState);
        }
        if (storage$StorageReadyState == Storage$StorageReadyState.ACCESSIBLE || storage$StorageReadyState == Storage$StorageReadyState.COMPLETED) {
            CameraApplication.getUiThreadHandler().post(new StateMachine$StorageStateAdapter$StorageStateChangeTask(this, storage$StorageType, storage$StorageState, null));
        }
    }

    private void updateGestureShutterState(boolean z) {
        StateMachine.access$300(this.this$0).setEnabled(z);
    }
}
