package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;

class StateMachine$StatePhotoBase extends StateMachine$State {
    final /* synthetic */ StateMachine this$0;

    /* synthetic */ StateMachine$StatePhotoBase(StateMachine stateMachine, StateMachine$1 stateMachine$1) {
        this(stateMachine);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StatePhotoBase(StateMachine stateMachine) {
        super(stateMachine, null);
        this.this$0 = stateMachine;
        this.mCaptureState = StateMachine$CaptureState.STATE_PHOTO_BASE;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnOrientationChanged(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_ORIENTATION_CHANGED, objArr[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnSemiAutoEnabled(Object... objArr) {
        StateMachine.access$3002(this.this$0, true);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnSemiAutoDisabled(Object... objArr) {
        StateMachine.access$3002(this.this$0, false);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleFusionConditionChanged(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_FUSION_CONDITION, objArr);
    }
}
