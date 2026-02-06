package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.view.ViewFinder$UiComponentKind;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;

class StateMachine$StateFatal extends StateMachine$State {
    private static final String TAG = "StateMachine.StateFatal";
    private boolean mIsSaving;
    private boolean mLazyAbort;
    private StateMachine$StateFatal$LazyAbortTask mLazyAbortTask;
    private StoreDataResult mStoreDataResult;
    final /* synthetic */ StateMachine this$0;

    /* synthetic */ StateMachine$StateFatal(StateMachine stateMachine, boolean z, boolean z2, StateMachine$1 stateMachine$1) {
        this(stateMachine, z, z2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StateFatal(StateMachine stateMachine, boolean z, boolean z2) {
        super(stateMachine, null);
        this.this$0 = stateMachine;
        this.mIsSaving = false;
        this.mLazyAbort = false;
        this.mStoreDataResult = null;
        this.mLazyAbortTask = null;
        this.mCaptureState = StateMachine$CaptureState.STATE_FATAL;
        this.mIsSaving = z;
        this.mLazyAbort = z2;
        if (!StateMachine.access$2600(stateMachine).isRecorderWorking()) {
            StateMachine.access$2600(stateMachine).releaseRecorder();
        }
        StateMachine.access$2600(stateMachine).stopFaceDetection();
        StateMachine.access$2600(stateMachine).stopSceneRecognition();
        if (StateMachine.access$2800(stateMachine) != null) {
            StateMachine.access$1400(stateMachine);
        }
        if (!StateMachine.access$9100(stateMachine).isEmpty()) {
            StateMachine.access$9100(stateMachine).clear();
        }
        StateMachine.access$2600(stateMachine).stopPreview();
        StateMachine.access$13100(stateMachine);
        StateMachine.access$13200(stateMachine);
        if (!this.mLazyAbort || StateMachine.access$1200(stateMachine).isMessageDialogOpened()) {
            return;
        }
        doLazyAbort();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnOrientationChanged(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_ORIENTATION_CHANGED, objArr[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnStoreCompleted(Object... objArr) {
        super.handleOnStoreCompleted(objArr);
        this.mStoreDataResult = (StoreDataResult) objArr[0];
        if (StateMachine.access$1200(this.this$0).isMessageDialogOpened()) {
            return;
        }
        if (StateMachine.access$500(this.this$0).isOneShot()) {
            StateMachine.access$10600(this.this$0, this.mStoreDataResult);
        } else {
            StateMachine.access$500(this.this$0).terminateApplication();
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleDialogClosed(Object... objArr) {
        if (objArr == null || objArr.length == 0 || objArr[0] != ViewFinder$UiComponentKind.FATAL_ALERT_DIALOG) {
            return;
        }
        if (this.mLazyAbort) {
            doLazyAbort();
            return;
        }
        if (!this.mIsSaving || this.mStoreDataResult != null) {
            StateMachine.access$500(this.this$0).terminateApplication();
        } else {
            if (this.mStoreDataResult == null || !StateMachine.access$500(this.this$0).isOneShot()) {
                return;
            }
            StateMachine.access$10600(this.this$0, this.mStoreDataResult);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleFinalize(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StateFinalize(this.this$0, null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePause(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StatePause(this.this$0, ((Boolean) objArr[0]).booleanValue(), null), objArr);
        StateMachine.access$500(this.this$0).terminateApplication();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void exit() {
        if (this.mLazyAbortTask != null) {
            StateMachine.access$1700(this.this$0).removeCallbacks(this.mLazyAbortTask);
            this.mLazyAbortTask = null;
        }
    }

    private void doLazyAbort() {
        if (this.mLazyAbortTask != null) {
            StateMachine.access$1700(this.this$0).removeCallbacks(this.mLazyAbortTask);
        }
        this.mLazyAbortTask = new StateMachine$StateFatal$LazyAbortTask(this, null);
        StateMachine.access$1700(this.this$0).postDelayed(this.mLazyAbortTask, 4000L);
    }
}
