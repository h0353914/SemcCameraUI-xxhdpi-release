package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.android.camera.view.animation.AnimationRequest;
import com.sonyericsson.android.camera.view.animation.AnimationRequest$AnimationType;
import com.sonymobile.cameracommon.evf.Evf;

class StateMachine$StateModeChanging extends StateMachine$StatePhotoBase {
    final /* synthetic */ StateMachine this$0;

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StatePhotoBase, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleFusionConditionChanged(Object... objArr) {
    }

    /* synthetic */ StateMachine$StateModeChanging(StateMachine stateMachine, StateMachine$1 stateMachine$1) {
        this(stateMachine);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StateModeChanging(StateMachine stateMachine) {
        super(stateMachine, null);
        this.this$0 = stateMachine;
        this.mCaptureState = StateMachine$CaptureState.STATE_MODE_CHANGING;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void entry() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke StateModeChanging");
        }
        if (!PlatformCapability.isSceneRecognitionSupported(this.this$0.getCurrentCameraId())) {
            StateMachine.access$2600(this.this$0).stopSceneRecognition();
        }
        if (StateMachine.access$500(this.this$0) != null) {
            StateMachine.access$500(this.this$0).notifyStateBlockedToWearable();
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleFinishTransitionOperation(Object... objArr) {
        AnimationRequest animationRequest = (AnimationRequest) objArr[0];
        switch (animationRequest.mDegree) {
            case CANCEL:
                StateMachine.access$4700(this.this$0);
                break;
            case EXEC:
                if (animationRequest.mType == AnimationRequest$AnimationType.SWITCH_TOUCH || animationRequest.mTarget.isFront() != animationRequest.mFrom.isFront()) {
                    StateMachine.access$12800(this.this$0, animationRequest.mTarget, animationRequest.mType);
                } else if (this.this$0.getCurrentCapturingMode() != animationRequest.mTarget) {
                    StateMachine.access$12900(this.this$0, animationRequest.mTarget, animationRequest.mType);
                }
                break;
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePause(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StatePause(this.this$0, ((Boolean) objArr[0]).booleanValue(), null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StatePhotoBase, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnSemiAutoDisabled(Object... objArr) {
        super.handleOnSemiAutoDisabled(objArr);
        StateMachine.access$2600(this.this$0).setAmberBlueColorAndCommit(0);
        StateMachine.access$2600(this.this$0).setBrightnessAndCommit(0);
        LocalResearchUtil.getInstance().setSemiAutoSettingAmberBlueValue(0);
        LocalResearchUtil.getInstance().setSemiAutoSettingBrightnessValue(0);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnEvfPrepared(Object... objArr) {
        StateMachine.access$2600(this.this$0).setPreviewSurface(((Evf) objArr[0]).asSurface());
        StateMachine.access$2600(this.this$0).startPreview();
    }
}
