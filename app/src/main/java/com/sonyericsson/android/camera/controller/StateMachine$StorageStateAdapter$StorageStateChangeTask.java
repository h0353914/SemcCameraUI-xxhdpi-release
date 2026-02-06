package com.sonyericsson.android.camera.controller;

import android.support.annotation.NonNull;
import com.sonyericsson.android.camera.LaunchCondition$ExtraOperation;
import com.sonyericsson.cameracommon.storage.Storage$StorageState;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;

class StateMachine$StorageStateAdapter$StorageStateChangeTask implements Runnable {
    private final Storage$StorageState mStorageState;
    private final Storage$StorageType mStorageType;
    final /* synthetic */ StateMachine$StorageStateAdapter this$1;

    /* synthetic */ StateMachine$StorageStateAdapter$StorageStateChangeTask(StateMachine$StorageStateAdapter stateMachine$StorageStateAdapter, Storage$StorageType storage$StorageType, Storage$StorageState storage$StorageState, StateMachine$1 stateMachine$1) {
        this(stateMachine$StorageStateAdapter, storage$StorageType, storage$StorageState);
    }

    private StateMachine$StorageStateAdapter$StorageStateChangeTask(@NonNull StateMachine$StorageStateAdapter stateMachine$StorageStateAdapter, @NonNull Storage$StorageType storage$StorageType, Storage$StorageState storage$StorageState) {
        this.this$1 = stateMachine$StorageStateAdapter;
        this.mStorageType = storage$StorageType;
        this.mStorageState = storage$StorageState;
    }

    @Override // java.lang.Runnable
    public void run() {
        Storage$StorageType storage$StorageTypeAccess$400 = StateMachine.access$400(this.this$1.this$0);
        LaunchCondition$ExtraOperation extraOperation = StateMachine.access$500(this.this$1.this$0).getLaunchCondition().getExtraOperation();
        Storage$StorageState currentState = StateMachine.access$600(this.this$1.this$0).getCurrentState(storage$StorageTypeAccess$400);
        if (this.mStorageType == storage$StorageTypeAccess$400 && (this.mStorageState.isWritable() || currentState.isWritable())) {
            this.this$1.this$0.sendEvent(StateMachine$TransitterEvent.EVENT_STORAGE_MOUNTED, new Object[0]);
        } else {
            if (this.mStorageType == Storage$StorageType.EXTERNAL_CARD && this.mStorageState == Storage$StorageState.CORRUPT) {
                this.this$1.this$0.sendEvent(StateMachine$TransitterEvent.EVENT_STORAGE_ERROR, this.mStorageType, this.mStorageState);
                return;
            }
            if (this.mStorageType == Storage$StorageType.EXTERNAL_CARD && this.mStorageState == Storage$StorageState.UNGRANTED) {
                if (storage$StorageTypeAccess$400 == Storage$StorageType.EXTERNAL_CARD) {
                    this.this$1.this$0.sendEvent(StateMachine$TransitterEvent.EVENT_STORAGE_UNGRANTED, new Object[0]);
                }
            } else if (extraOperation != LaunchCondition$ExtraOperation.OPEN_SETTINGS_MENU && this.mStorageType == storage$StorageTypeAccess$400) {
                boolean z = StateMachine.access$700(this.this$1.this$0, storage$StorageTypeAccess$400) && !StateMachine.access$500(this.this$1.this$0).isOneShot();
                if (StateMachine.access$800(this.this$1.this$0) && storage$StorageTypeAccess$400 != Storage$StorageType.EXTERNAL_CARD && z) {
                    return;
                }
                if (StateMachine$StorageStateAdapter.access$900(this.this$1) != null && StateMachine$StorageStateAdapter.access$900(this.this$1).isWritable() && (storage$StorageTypeAccess$400 != Storage$StorageType.EXTERNAL_CARD || extraOperation != LaunchCondition$ExtraOperation.LAUNCH_AND_CAPTURE || StateMachine.access$1000(this.this$1.this$0, Storage$StorageType.EXTERNAL_CARD) || !z)) {
                    this.this$1.this$0.sendEvent(StateMachine$TransitterEvent.EVENT_STORAGE_ERROR, this.mStorageType, this.mStorageState);
                    StateMachine.access$1200(this.this$1.this$0).notifyStorageStateChanged(storage$StorageTypeAccess$400, this.mStorageState, z, StateMachine.access$1100(this.this$1.this$0).getCaptureState() == StateMachine$CaptureState.STATE_BURST_CAPTURE || StateMachine.access$1100(this.this$1.this$0).getCaptureState() == StateMachine$CaptureState.STATE_BURST_CAPTURE_WAIT_FOR_AF_DONE);
                }
            }
        }
        if (this.mStorageType == storage$StorageTypeAccess$400) {
            StateMachine$StorageStateAdapter.access$902(this.this$1, this.mStorageState);
            StateMachine.access$1300(this.this$1.this$0, this.mStorageState.isWritable());
            if (!this.mStorageState.isWritable()) {
                StateMachine.access$1400(this.this$1.this$0);
            }
            StateMachine$StorageStateAdapter.access$1500(this.this$1, this.mStorageState.isWritable());
        }
    }
}
