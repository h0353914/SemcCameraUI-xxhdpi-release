package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.DestinationToSave;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$StorageReadyStateAdapter$1 implements Runnable {
    final /* synthetic */ StateMachine$StorageReadyStateAdapter this$1;
    final /* synthetic */ Storage$StorageType val$type;

    StateMachine$StorageReadyStateAdapter$1(StateMachine$StorageReadyStateAdapter stateMachine$StorageReadyStateAdapter, Storage$StorageType storage$StorageType) {
        this.this$1 = stateMachine$StorageReadyStateAdapter;
        this.val$type = storage$StorageType;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (StateMachine.access$600(this.this$1.this$0).getCurrentState(this.val$type).isWritable()) {
            DestinationToSave destinationToSave = (DestinationToSave) StateMachine.access$1800(this.this$1.this$0).get(UserSettingKey.DESTINATION_TO_SAVE);
            StateMachine.access$1800(this.this$1.this$0).set(DestinationToSave.SDCARD);
            if (destinationToSave != DestinationToSave.SDCARD) {
                this.this$1.this$0.sendEvent(StateMachine$TransitterEvent.EVENT_STORAGE_READY_STATE_CHANGED, new Object[0]);
            }
            if (StateMachine.access$1200(this.this$1.this$0) != null) {
                StateMachine.access$1200(this.this$1.this$0).showHiSpeedSdCardRecommendDialogOnDestinationChange();
            }
        }
    }
}
