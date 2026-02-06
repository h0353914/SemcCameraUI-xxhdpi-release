package com.sonyericsson.android.camera.controller;

import com.sonyericsson.cameracommon.storage.SavingTaskManager$SavedFileType;

class StateMachine$StatePhotoCaptureWaitForAfDone extends StateMachine$StatePhotoBase {
    private static final String TAG = "StateMachine.StatePhotoCaptureWaitForAfDone";
    private final boolean mIsDirectCaptureRequired;
    final /* synthetic */ StateMachine this$0;

    /* synthetic */ StateMachine$StatePhotoCaptureWaitForAfDone(StateMachine stateMachine, boolean z, StateMachine$1 stateMachine$1) {
        this(stateMachine, z);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StatePhotoCaptureWaitForAfDone(StateMachine stateMachine, boolean z) {
        super(stateMachine, null);
        this.this$0 = stateMachine;
        this.mCaptureState = StateMachine$CaptureState.STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE;
        this.mIsDirectCaptureRequired = z;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnInitialAutoFocusDone(Object... objArr) {
        if (this.mIsDirectCaptureRequired) {
            StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoAfDone(this.this$0, false, null), objArr);
            StateMachine.access$2600(this.this$0).preCapture();
            StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoCapture(this.this$0, null), objArr);
        } else {
            StateMachine.access$3500(this.this$0, false);
            StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoReady(this.this$0, true), objArr);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnAutoFocusDone(Object... objArr) {
        StateMachine.access$10900(this.this$0, this.this$0.createPhotoSavingRequest(SavingTaskManager$SavedFileType.PHOTO));
        StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoAfDone(this.this$0, false, null), objArr);
        StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoCapture(this.this$0, null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePause(Object... objArr) {
        StateMachine.access$3500(this.this$0, true);
        StateMachine.access$3400(this.this$0, new StateMachine$StatePause(this.this$0, ((Boolean) objArr[0]).booleanValue(), null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStorageMounted(Object... objArr) {
        StateMachine$SuitablePredictiveApplier.access$6600(StateMachine.access$3800(this.this$0));
    }
}
