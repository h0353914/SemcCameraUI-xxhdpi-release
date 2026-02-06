package com.sonyericsson.android.camera.controller;

import android.graphics.Point;
import android.graphics.Rect;
import com.sonyericsson.android.camera.LaunchCondition$ExtraOperation;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.DestinationToSave;
import com.sonyericsson.android.camera.configuration.parameters.FocusRange;
import com.sonyericsson.android.camera.configuration.parameters.FusionMode;
import com.sonyericsson.android.camera.configuration.parameters.Metering;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.ShutterTrigger;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.TouchIntention;
import com.sonyericsson.android.camera.device.CameraParameters$FaceDetectionResult;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.android.camera.view.ViewFinder$HeadUpDisplaySetupState;
import com.sonyericsson.android.camera.view.ViewFinder$UiComponentKind;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.android.camera.view.angle.VariableIndex;
import com.sonyericsson.android.camera.view.animation.AnimationRequest;
import com.sonyericsson.android.camera.view.animation.AnimationRequest$AnimationDegree;
import com.sonyericsson.android.camera.view.animation.AnimationRequest$AnimationType;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;
import com.sonyericsson.cameracommon.focusview.FocusRectangles$FocusSetType;
import com.sonyericsson.cameracommon.storage.Storage$StorageState;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;
import com.sonymobile.cameracommon.evf.Evf;
import com.sonymobile.cameracommon.research.parameters.Event$SelfTimerTrigger;

class StateMachine$StatePhotoReady extends StateMachine$StatePhotoBase {
    private static final String TAG = "StateMachine.StatePhotoReady";
    private CameraParameters$FaceDetectionResult mLatestFaceDetectionResult;
    private StateMachine$NotifyDelayedEventTask mNotifyDelayedEventTask;
    private StateMachine$StartupAction mStartupAction;
    private final boolean mWithExtensionFeatures;
    final /* synthetic */ StateMachine this$0;

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnOnePreviewFrameUpdated(Object... objArr) {
    }

    public StateMachine$StatePhotoReady(StateMachine stateMachine, boolean z) {
        this(stateMachine, z, false, StateMachine$StartupAction.NONE);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StateMachine$StatePhotoReady(StateMachine stateMachine, boolean z, boolean z2, StateMachine$StartupAction stateMachine$StartupAction) {
        super(stateMachine, null);
        this.this$0 = stateMachine;
        this.mLatestFaceDetectionResult = null;
        this.mCaptureState = StateMachine$CaptureState.STATE_PHOTO_READY;
        this.mWithExtensionFeatures = z;
        this.mStartupAction = stateMachine$StartupAction;
        StateMachine.access$6400(stateMachine);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void entry() {
        boolean z;
        if (CamLog.DEBUG) {
            CamLog.d("invoke StatePhotoReady");
        }
        if (StateMachine.access$500(this.this$0) != null) {
            StateMachine.access$500(this.this$0).notifyStateIdleToWearable();
        }
        if (PlatformCapability.hasDeviceError()) {
            return;
        }
        if (StateMachine.access$500(this.this$0) == null) {
            z = false;
        } else {
            if (PlatformCapability.isPowerSavingSupported(this.this$0.getCurrentCameraId())) {
                if (StateMachine.access$500(this.this$0).isThermalWarningReceived()) {
                    this.this$0.sendEvent(StateMachine$TransitterEvent.EVENT_ON_HEATED_OVER_COOLING_ULTRA_LOW, new Object[0]);
                    z = true;
                } else if (StateMachine.access$500(this.this$0).isThermalWarningExtraState()) {
                    this.this$0.sendEvent(StateMachine$TransitterEvent.EVENT_ON_HEATED_OVER_COOLING_LOW, new Object[0]);
                }
            } else if (StateMachine.access$500(this.this$0).isThermalWarningExtraState()) {
                StateMachine.access$2600(this.this$0).enableFpsLimitation();
            }
            z = false;
        }
        if (this.mWithExtensionFeatures) {
            if (!StateMachine.access$1200(this.this$0).isTouchFocus()) {
                StateMachine.access$2600(this.this$0).startFaceDetection();
            }
            if (!StateMachine.access$3000(this.this$0)) {
                StateMachine.access$1300(this.this$0, StateMachine.access$1000(this.this$0, StateMachine.access$400(this.this$0)));
            }
        }
        if (StateMachine.access$500(this.this$0) != null) {
            StateMachine.access$500(this.this$0).enableAutoPowerOffTimer();
        }
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_ORIENTATION_CHANGED, Integer.valueOf(StateMachine.access$6500(this.this$0)));
        if (!z) {
            StateMachine.access$300(this.this$0).handlePreviewStarted(this.this$0.getCurrentCapturingMode(), StateMachine.access$2600(this.this$0).getStreamingImageRetriever());
        }
        StateMachine$SuitablePredictiveApplier.access$6600(StateMachine.access$3800(this.this$0));
        if (StateMachine.access$1200(this.this$0).isHeadUpDisplayReady() && StateMachine.access$5300(this.this$0)) {
            StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_FUSION_CONDITION, StateMachine.access$2600(this.this$0).getLatestFusionResult());
        }
        Storage$StorageType storage$StorageTypeAccess$400 = StateMachine.access$400(this.this$0);
        if (!StateMachine.access$1000(this.this$0, storage$StorageTypeAccess$400) && !StateMachine.access$700(this.this$0, storage$StorageTypeAccess$400)) {
            this.this$0.sendEvent(StateMachine$TransitterEvent.EVENT_STORAGE_ERROR, storage$StorageTypeAccess$400, StateMachine.access$600(this.this$0).getCurrentState(storage$StorageTypeAccess$400));
        }
        if (this.this$0.mIsSceneRecognitionValid) {
            return;
        }
        StateMachine.access$6700(this.this$0);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void exit() {
        StateMachine.access$500(this.this$0).notifyStateBlockedToWearable();
        StateMachine.access$300(this.this$0).handlePreviewStopped();
        if (this.mNotifyDelayedEventTask != null) {
            StateMachine.access$6800(this.this$0, this.mNotifyDelayedEventTask);
            this.mNotifyDelayedEventTask = null;
        }
        StateMachine$SuitablePredictiveApplier.access$3900(StateMachine.access$3800(this.this$0), this);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleChangeAngleStart(Object... objArr) {
        StateMachine.access$6900(this.this$0);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleRequestSetupHeadUpDisplay(Object... objArr) {
        if (((Boolean) objArr[0]).booleanValue()) {
            StateMachine.access$1300(this.this$0, StateMachine.access$1000(this.this$0, StateMachine.access$400(this.this$0)));
            StateMachine.access$2600(this.this$0).startFaceDetection();
        }
        if (this.mStartupAction == StateMachine$StartupAction.CAPTURE) {
            this.this$0.sendEvent(StateMachine$TransitterEvent.EVENT_START_CAPTURE_COUNTDOWN, Event$SelfTimerTrigger.NORMAL);
        }
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY, ViewFinder$HeadUpDisplaySetupState.PHOTO_READY);
        if (this.this$0.isTutorialNeededToBeShownForCurrentMode()) {
            StateMachine.access$3400(this.this$0, new StateMachine$StateOperationRestricted(this.this$0, null), new Object[]{ViewFinder$UiComponentKind.TUTORIAL});
        }
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
    public void handleCaptureReady(Object... objArr) {
        if (StateMachine.access$7000(this.this$0)) {
            StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoAfSearch(this.this$0, null), objArr);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStartCaptureCountDown(Object... objArr) {
        Event$SelfTimerTrigger event$SelfTimerTrigger = (Event$SelfTimerTrigger) StateMachine.access$7200(objArr, 0, Event$SelfTimerTrigger.class, Event$SelfTimerTrigger.NORMAL);
        if (this.mNotifyDelayedEventTask != null) {
            StateMachine.access$6800(this.this$0, this.mNotifyDelayedEventTask);
            this.mNotifyDelayedEventTask = null;
        }
        if (StateMachine.access$2000(this.this$0)) {
            this.mNotifyDelayedEventTask = StateMachine.access$4800(this.this$0, StateMachine$TransitterEvent.EVENT_START_CAPTURE_COUNTDOWN, objArr);
        } else {
            if (StateMachine.access$1000(this.this$0, StateMachine.access$400(this.this$0))) {
                if (this.mStartupAction == StateMachine$StartupAction.CAPTURE) {
                    StateMachine.access$2100(this.this$0, SelfTimer.LAUNCH_AND_CAPTURE_COUNT_DOWN);
                }
                StateMachine.access$3400(this.this$0, new StateMachine$StateCaptureCountdown(this.this$0, event$SelfTimerTrigger, null), new Object[]{true});
                return;
            }
            StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_CAPTURE_FINISH, new Object[0]);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleCapture(Object... objArr) {
        if (StateMachine.access$7000(this.this$0)) {
            StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoCaptureWaitForAfDone(this.this$0, false, null), new Object[0]);
        } else {
            StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_CAPTURE_FINISH, new Object[0]);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleCaptureBurst(Object... objArr) {
        if (StateMachine.access$7500(this.this$0, true) && StateMachine.access$7000(this.this$0)) {
            StateMachine.access$3400(this.this$0, new StateMachine$StateBurstCaptureWaitForAfDone(this.this$0, null), objArr);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleCaptureCancel(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_CAPTURE_CANCEL, new Object[0]);
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
    public void handlePause(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StatePause(this.this$0, ((Boolean) objArr[0]).booleanValue(), null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnAutoFocusDone(Object... objArr) {
        StateMachine.access$3500(this.this$0, false);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStorageError(Object... objArr) {
        Storage$StorageType storage$StorageType = (Storage$StorageType) objArr[0];
        if (((Storage$StorageState) objArr[1]) == Storage$StorageState.CORRUPT) {
            StateMachine.access$1200(this.this$0).showMessageDialog(DialogId.MEMORY_SD_UNAVAILABLE_FOR_CORRUPT, new Object[0]);
            StateMachine.access$3400(this.this$0, new StateMachine$StateFatal(this.this$0, false, false, null), new Object[0]);
        } else {
            if (StateMachine.access$700(this.this$0, storage$StorageType)) {
                return;
            }
            StateMachine.access$3400(this.this$0, new StateMachine$StateWarning(this.this$0, null), objArr);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStorageMounted(Object... objArr) {
        StateMachine$SuitablePredictiveApplier.access$6600(StateMachine.access$3800(this.this$0));
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnStorageUngranted(Object... objArr) {
        StateMachine.access$1800(this.this$0).set(DestinationToSave.EMMC);
        if (StateMachine.access$1200(this.this$0) != null) {
            StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_SHOW_CHANGE_INTERNAL_STORAGE_MESSAGE, false);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnSceneModeChanged(Object... objArr) {
        if (this.this$0.mIsSceneRecognitionValid) {
            StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_DETECTED_SCENE_CHANGED, objArr[0]);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnFaceDetected(Object... objArr) {
        this.mLatestFaceDetectionResult = (CameraParameters$FaceDetectionResult) objArr[0];
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FACE_DETECTED, this.mLatestFaceDetectionResult);
        StateMachine.access$7700(this.this$0);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleChangeSelectedFace(Object... objArr) {
        StateMachine.access$7800(this.this$0, (Point) objArr[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnObjectTracked(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_TRACKED_OBJECT_STATE_UPDATED, objArr[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleSetSelectedObjectPosition(Object... objArr) {
        if (StateMachine.access$2600(this.this$0).isCameraDeviceStatusReady()) {
            Rect rect = (Rect) objArr[1];
            if (StateMachine.access$1800(this.this$0).get(UserSettingKey.FOCUS_RANGE) == FocusRange.AF) {
                StateMachine.access$7900(this.this$0, rect);
            }
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleDeselectObjectPosition(Object... objArr) {
        StateMachine.access$1400(this.this$0);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStartAfAfterObjectTracked(Object... objArr) {
        if (StateMachine.access$2600(this.this$0).isCameraDeviceStatusReady() && PlatformCapability.isObjectTrackingSupported(this.this$0.getCurrentCameraId()) && StateMachine.access$1000(this.this$0, StateMachine.access$400(this.this$0))) {
            Rect rect = (Rect) objArr[1];
            StateMachine.access$1400(this.this$0);
            StateMachine.access$7900(this.this$0, rect);
            StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoWaitingTrackedObjectForAfStart(this.this$0, null), new Object[0]);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleSetTouchedPosition(Object... objArr) {
        if (((SmileCapture) StateMachine.access$1800(this.this$0).get(UserSettingKey.SMILE_CAPTURE)).isSmileCaptureOn() || ((ShutterTrigger) StateMachine.access$1800(this.this$0).get(UserSettingKey.SHUTTER_TRIGGER)).isGestureShutterOn()) {
            return;
        }
        if (((FocusRectangles$FocusSetType) objArr[2]) == FocusRectangles$FocusSetType.RELEASE) {
            Rect position = StateMachine.access$1200(this.this$0).getPosition((Point) objArr[0]);
            if (position.isEmpty()) {
                return;
            }
            if (StateMachine.access$1800(this.this$0).get(UserSettingKey.FOCUS_RANGE) == FocusRange.AF) {
                StateMachine.access$2600(this.this$0).setFocusPositionAndCommit(position);
            }
            if (StateMachine.access$3100(this.this$0)) {
                StateMachine.access$2600(this.this$0).setMeteringAreaAndCommit(position, (Metering) StateMachine.access$1800(this.this$0).get(UserSettingKey.METERING));
            }
        }
        if (StateMachine.access$1800(this.this$0).get(UserSettingKey.FOCUS_RANGE) == FocusRange.AF || StateMachine.access$1800(this.this$0).get(UserSettingKey.TOUCH_INTENTION) == TouchIntention.FOCUS_AND_EXPOSURE) {
            StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_SELECTED, objArr[0], objArr[2]);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleKeyMenu(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_UPDATE_DIALOGS, ViewFinder$UiComponentKind.SETTING_DIALOG);
        StateMachine.access$3400(this.this$0, new StateMachine$StateOperationRestricted(this.this$0, null), new Object[]{ViewFinder$UiComponentKind.SETTING_DIALOG});
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleSwitchCamera(Object... objArr) {
        StateMachine.access$8100(this.this$0, (AnimationRequest$AnimationType) objArr[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleTouchContentProgress() {
        if (StateMachine.access$1200(this.this$0) == null) {
            return;
        }
        if ((StateMachine.access$4100(this.this$0) != null && (StateMachine.access$4000(this.this$0) == null || StateMachine.access$4100(this.this$0).getDateTaken() > StateMachine.access$4000(this.this$0).getDateTaken())) || StateMachine.access$4000(this.this$0) == null || StateMachine.access$4000(this.this$0).getImageData() == null) {
            return;
        }
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_SHOW_INSTANT_VIEWER, StateMachine.access$4000(this.this$0).getImageData(), StateMachine.access$4000(this.this$0), StateMachine.access$3700(this.this$0));
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StatePhotoBase, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnSemiAutoEnabled(Object... objArr) {
        super.handleOnSemiAutoEnabled(objArr);
        StateMachine.access$2600(this.this$0).stopSceneRecognition();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StatePhotoBase, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnSemiAutoDisabled(Object... objArr) {
        super.handleOnSemiAutoDisabled(objArr);
        StateMachine.access$1300(this.this$0, StateMachine.access$1000(this.this$0, StateMachine.access$400(this.this$0)));
        StateMachine.access$2600(this.this$0).setAmberBlueColorAndCommit(0);
        StateMachine.access$2600(this.this$0).setBrightnessAndCommit(0);
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
    public void handleStartTransitionOperation(Object... objArr) {
        if (((AnimationRequest) objArr[0]).mDegree == AnimationRequest$AnimationDegree.START) {
            StateMachine.access$3400(this.this$0, new StateMachine$StateModeChanging(this.this$0, null), new Object[0]);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnHeatedOverCoolingLow(Object... objArr) {
        StateMachine.access$2600(this.this$0).setLowPower();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnHeatedOverCoolingUltraLow(Object... objArr) {
        StateMachine.access$8600(this.this$0, !StateMachine.access$8500(this.this$0, StateMachine.access$400(this.this$0)));
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnHeatedOverWarningExtra(Object... objArr) {
        StateMachine.access$2600(this.this$0).enableFpsLimitation();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnEvfPrepared(Object... objArr) {
        StateMachine.access$2600(this.this$0).setPreviewSurface(((Evf) objArr[0]).asSurface());
        StateMachine.access$2600(this.this$0).startPreview();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleRequestUpdateHighSensitivityFusionMode(Object... objArr) {
        StateMachine.access$8700(this.this$0, (FusionMode) objArr[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePrepareZoom(Object... objArr) {
        VariableIndex variableIndex = (VariableIndex) objArr[0];
        handleClearFocus(objArr);
        StateMachine$SuitablePredictiveApplier.access$8800(StateMachine.access$3800(this.this$0), this);
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_ZOOM_START, Integer.valueOf(variableIndex.getIndex()));
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePerformZoom(Object... objArr) {
        VariableIndex variableIndex = (VariableIndex) objArr[0];
        StateMachine.access$2600(this.this$0).setZoomAndCommit(variableIndex.getRatio());
        StateMachine.access$3200(this.this$0, variableIndex.getIndex());
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleFinishZoom(Object... objArr) {
        StateMachine$SuitablePredictiveApplier.access$3900(StateMachine.access$3800(this.this$0), this);
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_ZOOM_STOP, new Object[0]);
    }
}
