package com.sonyericsson.android.camera;

import com.sonyericsson.android.camera.controller.StateMachine$StaticEvent;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;

class CameraActivity$LazyInitializationTask implements Runnable {
    final /* synthetic */ CameraActivity this$0;

    CameraActivity$LazyInitializationTask(CameraActivity cameraActivity) {
        this.this$0 = cameraActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$0.mStateMachine == null || CameraActivity.access$700(this.this$0) == null || CameraActivity.access$2900(this.this$0) == null || !CameraActivity.access$2900(this.this$0).isHeadUpDisplayReady()) {
            retry();
            return;
        }
        if (!this.this$0.mStateMachine.canHandleAsynchronizedTask()) {
            retry();
            return;
        }
        CameraActivity.access$3000(this.this$0);
        this.this$0.mStateMachine.sendStaticEvent(StateMachine$StaticEvent.EVENT_ON_LAZY_INITIALIZATION_TASK_RUN, new Object[0]);
        CameraActivity.access$3102(this.this$0, false);
        CameraActivity.access$2900(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY, Boolean.valueOf(this.this$0.mStateMachine.isSettingChangeAcceptable()));
    }

    private void retry() {
        this.this$0.postDelayedEvent(this, 200L);
    }
}
