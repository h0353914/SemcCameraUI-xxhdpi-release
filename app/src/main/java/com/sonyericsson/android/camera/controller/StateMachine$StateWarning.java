package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.LaunchCondition$ExtraOperation;
import com.sonyericsson.android.camera.configuration.parameters.FusionMode;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.ViewFinder$HeadUpDisplaySetupState;
import com.sonyericsson.android.camera.view.ViewFinder$UiComponentKind;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.android.camera.view.animation.AnimationRequest;
import com.sonyericsson.android.camera.view.animation.AnimationRequest$AnimationDegree;
import com.sonyericsson.android.camera.view.animation.AnimationRequest$AnimationType;
import com.sonymobile.cameracommon.evf.Evf;

class StateMachine$StateWarning extends StateMachine$StatePhotoBase {
    final /* synthetic */ StateMachine this$0;

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnStorageUngranted(Object... objArr) {
    }

    /* synthetic */ StateMachine$StateWarning(StateMachine stateMachine, StateMachine$1 stateMachine$1) {
        this(stateMachine);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StateWarning(StateMachine stateMachine) {
        super(stateMachine, null);
        this.this$0 = stateMachine;
        StateMachine.access$11502(stateMachine, false);
        StateMachine.access$9000(stateMachine);
        StateMachine.access$13400(stateMachine);
        this.mCaptureState = StateMachine$CaptureState.STATE_WARNING;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void entry() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke StateWarning");
        }
        StateMachine$SuitablePredictiveApplier.access$8800(StateMachine.access$3800(this.this$0), this);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void exit() {
        StateMachine.access$1200(this.this$0).clearHintText();
        StateMachine$SuitablePredictiveApplier.access$3900(StateMachine.access$3800(this.this$0), this);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleChangeAngleStart(Object... objArr) {
        StateMachine.access$6900(this.this$0);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnHeatedOverCoolingLow(Object... objArr) {
        StateMachine.access$2600(this.this$0).setLowPower();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnHeatedOverCoolingUltraLow(Object... objArr) {
        StateMachine.access$2600(this.this$0).setUltraLowPower();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleCapture(Object... objArr) {
        StateMachine.access$1200(this.this$0).onCaptureDone();
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_CAPTURE_FINISH, new Object[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleCaptureCancel(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_CAPTURE_CANCEL, new Object[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleDialogOpened(Object... objArr) {
        if (objArr != null && objArr.length != 0) {
            StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_UPDATE_DIALOGS, (ViewFinder$UiComponentKind) objArr[0]);
        }
        StateMachine.access$3400(this.this$0, new StateMachine$StateOperationRestricted(this.this$0, null), objArr);
        StateMachine.access$500(this.this$0).notifyStateBlockedToWearable();
        if (StateMachine.access$500(this.this$0).getLaunchCondition().getExtraOperation() == LaunchCondition$ExtraOperation.OPEN_SETTINGS_MENU) {
            StateMachine.access$500(this.this$0).getLaunchCondition().clearExtraOperation();
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleRequestSetupHeadUpDisplay(Object... objArr) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke current" + this.this$0.getCurrentCapturingMode());
        }
        if (((Boolean) objArr[0]).booleanValue()) {
            StateMachine.access$1300(this.this$0, StateMachine.access$1000(this.this$0, StateMachine.access$400(this.this$0)));
            StateMachine.access$2900(this.this$0);
        }
        switch (this.this$0.getCurrentCapturingMode()) {
            case NORMAL:
            case FRONT_PHOTO:
            case SCENE_RECOGNITION:
            case SUPERIOR_FRONT:
                StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY, ViewFinder$HeadUpDisplaySetupState.PHOTO_READY);
                break;
            case SLOW_MOTION:
            case FRONT_VIDEO:
            case VIDEO:
                StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY, ViewFinder$HeadUpDisplaySetupState.VIDEO_READY);
                break;
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleKeyMenu(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_UPDATE_DIALOGS, ViewFinder$UiComponentKind.SETTING_DIALOG);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePause(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StatePause(this.this$0, ((Boolean) objArr[0]).booleanValue(), null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStorageMounted(Object... objArr) {
        StateMachine.access$4700(this.this$0);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleSwitchCamera(Object... objArr) {
        StateMachine.access$8100(this.this$0, (AnimationRequest$AnimationType) objArr[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnHeatedOverWarningExtra(Object... objArr) {
        StateMachine.access$2600(this.this$0).enableFpsLimitation();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStartTransitionOperation(Object... objArr) {
        if (((AnimationRequest) objArr[0]).mDegree == AnimationRequest$AnimationDegree.START) {
            StateMachine.access$3400(this.this$0, new StateMachine$StateModeChanging(this.this$0, null), new Object[0]);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnAmberBlueColorChanged(Object... objArr) {
        StateMachine.access$8200(this.this$0, ((Float) objArr[0]).floatValue());
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnBrightnessChanged(Object... objArr) {
        StateMachine.access$8300(this.this$0, ((Float) objArr[0]).floatValue());
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleRequestUpdateHighSensitivityFusionMode(Object... objArr) {
        StateMachine.access$8700(this.this$0, (FusionMode) objArr[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnEvfPrepared(Object... objArr) {
        StateMachine.access$2600(this.this$0).setPreviewSurface(((Evf) objArr[0]).asSurface());
        StateMachine.access$2600(this.this$0).startPreview();
    }
}
