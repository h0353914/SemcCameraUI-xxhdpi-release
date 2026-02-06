package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.configuration.parameters.DestinationToSave;
import com.sonyericsson.android.camera.configuration.parameters.FastCapture;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.cameracommon.storage.RequestFactory$PhotoSavingRequestBuilder;

class StateMachine$StateWaitingPreProcessDone extends StateMachine$State {
    private final FastCapture mFastCapture;
    final /* synthetic */ StateMachine this$0;

    /* synthetic */ StateMachine$StateWaitingPreProcessDone(StateMachine stateMachine, FastCapture fastCapture, StateMachine$1 stateMachine$1) {
        this(stateMachine, fastCapture);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StateWaitingPreProcessDone(StateMachine stateMachine, FastCapture fastCapture) {
        super(stateMachine, null);
        this.this$0 = stateMachine;
        this.mCaptureState = StateMachine$CaptureState.STATE_WAITING_PRE_PROCESS_DONE;
        this.mFastCapture = fastCapture;
    }

    private void cancelPreProcess() {
        StateMachine.access$3500(this.this$0, false);
        StateMachine.access$2600(this.this$0).cancelPreProcessState();
        StateMachine.access$5400(this.this$0, this.mFastCapture, StateMachine$StartupAction.NONE);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnInitialAutoFocusDone(Object... objArr) {
        cancelPreProcess();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnPreTakePictureDone(Object... objArr) {
        ((RequestFactory$PhotoSavingRequestBuilder) objArr[0]).close();
        StateMachine.access$2600(this.this$0).prepareCaptureImageReader(null);
        cancelPreProcess();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePause(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StatePause(this.this$0, ((Boolean) objArr[0]).booleanValue(), null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleFusionConditionChanged(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_FUSION_CONDITION, objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnStorageUngranted(Object... objArr) {
        StateMachine.access$1800(this.this$0).set(DestinationToSave.EMMC);
        if (StateMachine.access$1200(this.this$0) != null) {
            StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_SHOW_CHANGE_INTERNAL_STORAGE_MESSAGE, true);
        }
    }
}
