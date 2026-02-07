package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.cameracommon.storage.SavingTaskManager$SavedFileType;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$StateBurstCaptureWaitForAfDone extends StateMachine$StatePhotoBase {
    private static final String TAG = "StateMachine.StateBurstCaptureWaitForAfDone";
    private boolean mIsCancelRequested;
    final /* synthetic */ StateMachine this$0;

    /* synthetic */ StateMachine$StateBurstCaptureWaitForAfDone(StateMachine stateMachine, StateMachine$1 stateMachine$1) {
        this(stateMachine);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StateBurstCaptureWaitForAfDone(StateMachine stateMachine) {
        super(stateMachine, null);
        this.this$0 = stateMachine;
        this.mCaptureState = StateMachine$CaptureState.STATE_BURST_CAPTURE_WAIT_FOR_AF_DONE;
        this.mIsCancelRequested = false;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleCaptureCancel(Object... objArr) {
        this.mIsCancelRequested = true;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnAutoFocusDone(Object... objArr) {
        if (StateMachine.access$7500(this.this$0, ((Boolean) objArr[1]).booleanValue())) {
            StateMachine.access$3400(this.this$0, new StateMachine$StateBurstCapture(this.this$0, this.mIsCancelRequested, null), objArr);
        } else {
            StateMachine.access$10900(this.this$0, this.this$0.createPhotoSavingRequest(SavingTaskManager$SavedFileType.PHOTO));
            StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoCapture(this.this$0, null), objArr);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePause(Object... objArr) {
        StateMachine.access$3500(this.this$0, true);
        StateMachine.access$3400(this.this$0, new StateMachine$StatePause(this.this$0, ((Boolean) objArr[0]).booleanValue(), null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnFaceDetected(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FACE_DETECTED, objArr[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnObjectTracked(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_TRACKED_OBJECT_STATE_UPDATED, objArr[0]);
    }
}
