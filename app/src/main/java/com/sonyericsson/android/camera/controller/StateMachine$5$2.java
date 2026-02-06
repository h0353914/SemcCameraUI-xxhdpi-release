package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.view.messagedialog.DialogId;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;

class StateMachine$5$2 implements Runnable {
    final /* synthetic */ StateMachine$5 this$1;

    StateMachine$5$2(StateMachine$5 stateMachine$5) {
        this.this$1 = stateMachine$5;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (StateMachine.access$14600(this.this$1.this$0) && !StateMachine.access$1000(this.this$1.this$0, Storage$StorageType.EXTERNAL_CARD)) {
            StateMachine.access$1200(this.this$1.this$0).showMessageDialog(DialogId.COULD_NOT_START_RECORDING, new Object[0]);
            StateMachine.access$3400(this.this$1.this$0, new StateMachine$StateWarning(this.this$1.this$0, null), new Object[0]);
            StateMachine.access$2600(this.this$1.this$0).releaseVideo();
        } else {
            this.this$1.this$0.sendEvent(StateMachine$TransitterEvent.EVENT_ON_RECORDING_ERROR, new Object[0]);
            StateMachine.access$2600(this.this$1.this$0).releaseVideo();
        }
    }
}
