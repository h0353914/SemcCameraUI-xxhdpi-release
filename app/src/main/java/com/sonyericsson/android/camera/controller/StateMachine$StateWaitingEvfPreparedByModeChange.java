package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.view.ViewFinder$UiComponentKind;
import com.sonymobile.cameracommon.evf.Evf;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$StateWaitingEvfPreparedByModeChange extends StateMachine$State {
    final /* synthetic */ StateMachine this$0;

    /* synthetic */ StateMachine$StateWaitingEvfPreparedByModeChange(StateMachine stateMachine, StateMachine$1 stateMachine$1) {
        this(stateMachine);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StateWaitingEvfPreparedByModeChange(StateMachine stateMachine) {
        super(stateMachine, null);
        this.this$0 = stateMachine;
        this.mCaptureState = StateMachine$CaptureState.STATE_WAITING_EVF_PREPARED_IN_MODE_CHANGE;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePause(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StatePause(this.this$0, ((Boolean) objArr[0]).booleanValue(), null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnEvfPrepared(Object... objArr) {
        StateMachine.access$2600(this.this$0).setPreviewSurface(((Evf) objArr[0]).asSurface());
        StateMachine.access$2600(this.this$0).startPreview();
        if (this.this$0.isTutorialNeededToBeShownForCurrentMode()) {
            StateMachine.access$3400(this.this$0, new StateMachine$StateOperationRestricted(this.this$0, null), new Object[]{ViewFinder$UiComponentKind.TUTORIAL});
        } else {
            StateMachine.access$4700(this.this$0);
        }
    }
}
