package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.recorder.RecorderController$Result;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$StateVideoStore extends StateMachine$StateVideoBase {
    private final RecorderController$Result mResult;
    final /* synthetic */ StateMachine this$0;

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StateVideoBase, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnOnePreviewFrameUpdated(Object... objArr) {
    }

    /* synthetic */ StateMachine$StateVideoStore(StateMachine stateMachine, StateMachine$1 stateMachine$1) {
        this(stateMachine);
    }

    /* synthetic */ StateMachine$StateVideoStore(StateMachine stateMachine, RecorderController$Result recorderController$Result, StateMachine$1 stateMachine$1) {
        this(stateMachine, recorderController$Result);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StateVideoStore(StateMachine stateMachine, RecorderController$Result recorderController$Result) {
        super(stateMachine);
        this.this$0 = stateMachine;
        this.mCaptureState = StateMachine$CaptureState.STATE_VIDEO_STORE;
        this.mResult = recorderController$Result;
    }

    private StateMachine$StateVideoStore(StateMachine stateMachine) {
        this(stateMachine, RecorderController$Result.SUCCESS);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnStoreRequested(Object... objArr) {
        if (!StateMachine.access$500(this.this$0).isOneShotVideo() || StateMachine.access$500(this.this$0).isInLockTaskMode()) {
            StateMachine.access$3400(this.this$0, new StateMachine$StateVideoReady(this.this$0), new Object[0]);
            switch (this.mResult) {
                case MAX_DURATION_REACHED:
                    StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_NOTIFY_MAX_DURATION_REACHED, new Object[0]);
                    break;
                case MAX_FILESIZE_REACHED:
                    StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_NOTIFY_MAX_FILESIZE_REACHED, new Object[0]);
                    break;
            }
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePause(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StatePause(this.this$0, ((Boolean) objArr[0]).booleanValue(), null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StateVideoBase, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnStoreCompleted(Object... objArr) {
        super.handleOnStoreCompleted(objArr);
        if (StateMachine.access$500(this.this$0).isOneShot()) {
            StateMachine.access$10600(this.this$0, (StoreDataResult) objArr[0]);
        }
    }
}
