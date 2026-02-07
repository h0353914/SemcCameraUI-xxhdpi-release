package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.FusionMode;
import com.sonyericsson.android.camera.configuration.parameters.Metering;
import com.sonyericsson.android.camera.configuration.parameters.SlowMotion;
import com.sonyericsson.android.camera.controller.launcher.ApplicationLauncher;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.android.camera.view.ViewFinder$HeadUpDisplaySetupState;
import com.sonyericsson.android.camera.view.ViewFinder$UiComponentKind;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.android.camera.view.animation.AnimationRequest;
import com.sonyericsson.android.camera.view.animation.AnimationRequest$AnimationDegree;
import com.sonyericsson.android.camera.view.animation.AnimationRequest$AnimationType;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.storage.VideoSavingRequest;
import com.sonymobile.cameracommon.evf.Evf;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$StateOperationRestricted extends StateMachine$State {
    private StoreDataResult mVideoStoreDataResult;
    final /* synthetic */ StateMachine this$0;

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnContinuousPreviewFrameUpdated(Object... objArr) {
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnStorageUngranted(Object... objArr) {
    }

    /* synthetic */ StateMachine$StateOperationRestricted(StateMachine stateMachine, StateMachine$1 stateMachine$1) {
        this(stateMachine);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StateOperationRestricted(StateMachine stateMachine) {
        super(stateMachine, null);
        this.this$0 = stateMachine;
        this.mVideoStoreDataResult = null;
        this.mCaptureState = StateMachine$CaptureState.STATE_OPERATION_RESTRICTED;
        if (!stateMachine.getCurrentCapturingMode().isVideo() && StateMachine.access$500(stateMachine).isThermalWarningExtraState()) {
            StateMachine.access$2600(stateMachine).enableFpsLimitation();
        }
        if (StateMachine.access$500(stateMachine) != null) {
            StateMachine.access$500(stateMachine).enableAutoPowerOffTimer();
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void entry() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke StateOperationRestricted");
        }
        StateMachine$SuitablePredictiveApplier.access$8800(StateMachine.access$3800(this.this$0), this);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void exit() {
        StateMachine$SuitablePredictiveApplier.access$3900(StateMachine.access$3800(this.this$0), this);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleClearFocus(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED_TOUCH_FOCUS, new Object[0]);
        StateMachine.access$2600(this.this$0).resetFocusModeAndCommit();
        if (StateMachine.access$3100(this.this$0)) {
            StateMachine.access$2600(this.this$0).setMeteringAreaAndCommit(null, (Metering) StateMachine.access$1800(this.this$0).get(UserSettingKey.METERING));
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleChangeAngleStart(Object... objArr) {
        StateMachine.access$6900(this.this$0);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnOrientationChanged(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_ORIENTATION_CHANGED, objArr[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleDialogOpened(Object... objArr) {
        StateMachine.access$500(this.this$0).notifyStateBlockedToWearable();
        if (objArr == null || objArr.length == 0) {
            return;
        }
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_UPDATE_DIALOGS, (ViewFinder$UiComponentKind) objArr[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleDialogClosed(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_CLOSE_ALL_DIALOGS, objArr);
        StateMachine.access$500(this.this$0).restartAutoPowerOffTimer();
        StateMachine.access$500(this.this$0).notifyStateIdleToWearable();
        StateMachine.access$4700(this.this$0);
        if (this.mVideoStoreDataResult != null) {
            if (StateMachine.access$500(this.this$0).isOneShot()) {
                StateMachine.access$10600(this.this$0, this.mVideoStoreDataResult);
            } else if (this.this$0.getCurrentCapturingMode() == CapturingMode.SLOW_MOTION && this.this$0.getUserSetting().get(UserSettingKey.SLOW_MOTION) == SlowMotion.STANDARD_SLOW_MOTION && !PlatformCapability.hasDeviceError()) {
                ApplicationLauncher.launchVideoEditor(StateMachine.access$500(this.this$0), this.mVideoStoreDataResult);
            }
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
    public void handleSwitchCamera(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_CLOSE_ALL_DIALOGS, new Object[0]);
        StateMachine.access$8100(this.this$0, (AnimationRequest$AnimationType) objArr[0]);
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
    public void handleOnHeatedOverWarningExtra(Object... objArr) {
        if (this.this$0.getCurrentCapturingMode().isVideo()) {
            return;
        }
        StateMachine.access$2600(this.this$0).enableFpsLimitation();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStartTransitionOperation(Object... objArr) {
        if (((AnimationRequest) objArr[0]).mDegree == AnimationRequest$AnimationDegree.START) {
            StateMachine.access$3400(this.this$0, new StateMachine$StateModeChanging(this.this$0, null), new Object[0]);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnEvfPrepared(Object... objArr) {
        StateMachine.access$2600(this.this$0).setPreviewSurface(((Evf) objArr[0]).asSurface());
        StateMachine.access$2600(this.this$0).startPreview();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnSemiAutoEnabled(Object... objArr) {
        StateMachine.access$3002(this.this$0, true);
        StateMachine.access$2600(this.this$0).stopSceneRecognition();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnSemiAutoDisabled(Object... objArr) {
        StateMachine.access$3002(this.this$0, false);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleDeselectObjectPosition(Object... objArr) {
        StateMachine.access$1400(this.this$0);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleRequestSetupHeadUpDisplay(Object... objArr) {
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
    public void handleOnStoreCompleted(Object... objArr) {
        super.handleOnStoreCompleted(objArr);
        StoreDataResult storeDataResult = (StoreDataResult) objArr[0];
        if (storeDataResult.savingRequest instanceof VideoSavingRequest) {
            this.mVideoStoreDataResult = storeDataResult;
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleRequestUpdateHighSensitivityFusionMode(Object... objArr) {
        StateMachine.access$8700(this.this$0, (FusionMode) objArr[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleFusionConditionChanged(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_FUSION_CONDITION, objArr);
    }
}
