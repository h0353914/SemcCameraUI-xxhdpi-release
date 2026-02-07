package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.android.camera.view.angle.VariableIndex;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$StateCropping extends StateMachine$State {
    private StateMachine$CaptureState mPreviousCaptureState;
    final /* synthetic */ StateMachine this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StateMachine$StateCropping(StateMachine stateMachine, StateMachine$CaptureState stateMachine$CaptureState) {
        super(stateMachine, null);
        this.this$0 = stateMachine;
        this.mPreviousCaptureState = null;
        this.mCaptureState = StateMachine$CaptureState.STATE_CROPPING;
        this.mPreviousCaptureState = stateMachine$CaptureState;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void entry() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke StateCropping");
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void exit() {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ANGLE_CHANGE_COMPLETED, new Object[0]);
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
    public void handlePerformZoom(Object... objArr) {
        StateMachine.access$2600(this.this$0).setZoomAndCommit(((VariableIndex) objArr[0]).getRatio());
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleFinishZoom(Object... objArr) {
        switch (this.mPreviousCaptureState) {
            case STATE_OPERATION_RESTRICTED:
                StateMachine.access$3400(this.this$0, new StateMachine$StateOperationRestricted(this.this$0, null), new Object[0]);
                break;
            case STATE_PHOTO_READY:
                StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoReady(this.this$0, false), new Object[0]);
                break;
            case STATE_VIDEO_READY:
                StateMachine.access$3400(this.this$0, new StateMachine$StateVideoReady(this.this$0), new Object[0]);
                break;
            case STATE_WARNING:
                StateMachine.access$3400(this.this$0, new StateMachine$StateWarning(this.this$0, null), new Object[0]);
                break;
        }
    }
}
