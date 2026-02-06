package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.Metering;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.storage.PredictiveCapturePathBuilder;
import com.sonyericsson.cameracommon.storage.RequestFactory$PhotoSavingRequestBuilder;
import com.sonyericsson.cameracommon.storage.Storage$StorageState;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;

class StateMachine$State {
    protected StateMachine$CaptureState mCaptureState;
    final /* synthetic */ StateMachine this$0;

    public void entry() {
    }

    public void exit() {
    }

    public void handleCapture(Object... objArr) {
    }

    public void handleCaptureBurst(Object... objArr) {
    }

    public void handleCaptureCancel(Object... objArr) {
    }

    public void handleCaptureReady(Object... objArr) {
    }

    public void handleChangeAngleStart(Object... objArr) {
    }

    public void handleChangeCapturingMode(Object... objArr) {
    }

    public void handleChangeSelectedFace(Object... objArr) {
    }

    public void handleClearFocus(Object... objArr) {
    }

    public void handleDeselectObjectPosition(Object... objArr) {
    }

    public void handleDialogClosed(Object... objArr) {
    }

    public void handleDialogOpened(Object... objArr) {
    }

    public void handleFinalize(Object... objArr) {
    }

    public void handleFinishTransitionOperation(Object... objArr) {
    }

    public void handleFinishZoom(Object... objArr) {
    }

    public void handleFusionConditionChanged(Object... objArr) {
    }

    public void handleHighFameRateRecordingDone(Object... objArr) {
    }

    public void handleInitialize(Object... objArr) {
    }

    public void handleKeyMenu(Object... objArr) {
    }

    public void handleOnAmberBlueColorChanged(Object... objArr) {
    }

    public void handleOnAutoFocusDone(Object... objArr) {
    }

    public void handleOnBrightnessChanged(Object... objArr) {
    }

    public void handleOnBurstShutterDone(Object... objArr) {
    }

    public void handleOnBurstStoreCompleted(Object... objArr) {
    }

    public void handleOnCameraDeviceClosed(Object... objArr) {
    }

    public void handleOnCameraDeviceOpened(Object... objArr) {
    }

    public void handleOnContinuousPreviewFrameUpdated(Object... objArr) {
    }

    public void handleOnEvfPrepared(Object... objArr) {
    }

    public void handleOnFaceDetected(Object... objArr) {
    }

    public void handleOnHeatedOverCoolingLow(Object... objArr) {
    }

    public void handleOnHeatedOverCoolingUltraLow(Object... objArr) {
    }

    public void handleOnHeatedOverWarningExtra(Object... objArr) {
    }

    public void handleOnLazyInitializationTaskRun(Object... objArr) {
    }

    public void handleOnObjectTracked(Object... objArr) {
    }

    public void handleOnOnePreviewFrameUpdated(Object... objArr) {
    }

    public void handleOnOrientationChanged(Object... objArr) {
    }

    public void handleOnPreShutterDone(Object... objArr) {
    }

    public void handleOnPreTakePictureDone(Object... objArr) {
    }

    public void handleOnPrepareBurstDone(Object... objArr) {
    }

    public void handleOnPreviewStarted() {
    }

    public void handleOnRecordingError(Object... objArr) {
    }

    public void handleOnRecordingStartWaitDone(Object... objArr) {
    }

    public void handleOnSceneModeChanged(Object... objArr) {
    }

    public void handleOnSemiAutoDisabled(Object... objArr) {
    }

    public void handleOnSemiAutoEnabled(Object... objArr) {
    }

    public void handleOnShutterDone(Object... objArr) {
    }

    public void handleOnStorageReadyStateChanged(Object... objArr) {
    }

    public void handleOnStoreRequested(Object... objArr) {
    }

    public void handleOnVideoRecordingDone(Object... objArr) {
    }

    public void handlePause(Object... objArr) {
    }

    public void handlePauseRecording(Object... objArr) {
    }

    public void handlePerformZoom(Object... objArr) {
    }

    public void handlePrepareZoom(Object... objArr) {
    }

    public void handleRecordReady(Object... objArr) {
    }

    public void handleRequestUpdateHighSensitivityFusionMode(Object... objArr) {
    }

    public void handleResumeRecording(Object... objArr) {
    }

    public void handleResumeTimeout(Object... objArr) {
    }

    public void handleSelfTimerCancel(Object... objArr) {
    }

    public void handleSetSelectedObjectPosition(Object... objArr) {
    }

    public void handleSetTouchedPosition(Object... objArr) {
    }

    public void handleSlowMotionFeedbackAnimationEnd(Object... objArr) {
    }

    public void handleStartAfAfterObjectTracked(Object... objArr) {
    }

    public void handleStartCaptureCountDown(Object... objArr) {
    }

    public void handleStartRecording(Object... objArr) {
    }

    public void handleStartTransitionOperation(Object... objArr) {
    }

    public void handleStopRecording(Object... objArr) {
    }

    public void handleStopRecordingSlowMotion(Object... objArr) {
    }

    public void handleStorageMounted(Object... objArr) {
    }

    public void handleSwitchCamera(Object... objArr) {
    }

    public void handleTouchContentProgress() {
    }

    public void handleTriggerSlowMotion(Object... objArr) {
    }

    /* synthetic */ StateMachine$State(StateMachine stateMachine, StateMachine$1 stateMachine$1) {
        this(stateMachine);
    }

    private StateMachine$State(StateMachine stateMachine) {
        this.this$0 = stateMachine;
        this.mCaptureState = StateMachine$CaptureState.STATE_NONE;
    }

    public String toString() {
        if (this.mCaptureState == null) {
            return StateMachine$CaptureState.STATE_NONE.toString();
        }
        return this.mCaptureState.toString();
    }

    public StateMachine$CaptureState getCaptureState() {
        return this.mCaptureState;
    }

    public void handleResume(Object... objArr) {
        if (StateMachine.access$2600(this.this$0).isCameraDisabled()) {
            StateMachine.access$1200(this.this$0).showMessageDialog(DialogId.ERROR_USE_OF_CAMERA_RESTRICTED, new Object[0]);
        }
    }

    public void handleOnHeatedOverWarning(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_NOTIFY_THERMAL_WARNING, new Object[0]);
    }

    public void handleOnHeatedOverCritical(Object... objArr) {
        boolean zBooleanValue = ((Boolean) objArr[0]).booleanValue();
        StateMachine.access$3400(this.this$0, new StateMachine$StateFatal(this.this$0, false, zBooleanValue, null), new Object[0]);
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_NOTIFY_THERMAL_CRITICAL, Boolean.valueOf(zBooleanValue));
    }

    public void handleOnHeatedOverNormal(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_NOTIFY_THERMAL_NORMAL, new Object[0]);
    }

    public void handleOnInitialAutoFocusDone(Object... objArr) {
        CamLog.e("ERROR:PRE-SCAN Event is not handled correctly. Check sequence.");
        StateMachine.access$3500(this.this$0, false);
    }

    public void handleOnTakePictureDone(Object... objArr) {
        RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder = (RequestFactory$PhotoSavingRequestBuilder) objArr[0];
        if (CamLog.DEBUG) {
            CamLog.d("invoke id:" + requestFactory$PhotoSavingRequestBuilder.getRequestId());
        }
        StateMachine.access$3600(this.this$0, requestFactory$PhotoSavingRequestBuilder);
    }

    public void handleOnStoreCompleted(Object... objArr) {
        StateMachine.access$3702(this.this$0, (StoreDataResult) objArr[0]);
        StateMachine$SuitablePredictiveApplier.access$3900(StateMachine.access$3800(this.this$0), StateMachine.access$3700(this.this$0).savingRequest);
        if (StateMachine.access$3700(this.this$0).savingRequest.getFilePath() != null && PredictiveCapturePathBuilder.isPredictiveCaptureLastImage(StateMachine.access$3700(this.this$0).savingRequest.getFilePath())) {
            this.this$0.sendEvent(StateMachine$TransitterEvent.EVENT_ON_PREDICTIVE_CAPTURE_GROUP_STORE_COMPLETED, StateMachine.access$3700(this.this$0));
        }
        if (StateMachine.access$500(this.this$0).getWearableBridge() != null) {
            StateMachine.access$500(this.this$0).getWearableBridge().getPhotoStateNotifier().onCaptureSucceeded();
        }
        if (StateMachine.access$1200(this.this$0) != null) {
            StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_STORE_COMPLETED, StateMachine.access$3700(this.this$0), Boolean.valueOf(isLastStoreDataResult(StateMachine.access$3700(this.this$0))));
        }
    }

    private boolean isLastStoreDataResult(StoreDataResult storeDataResult) {
        if (storeDataResult.savingRequest.common.takenByFastCapture) {
            return true;
        }
        if (StateMachine.access$4000(this.this$0) == null && StateMachine.access$4100(this.this$0) == null) {
            CamLog.w("Last saving request is not exist.");
            return true;
        }
        int requestId = storeDataResult.savingRequest.getRequestId();
        return StateMachine.access$4000(this.this$0) == null ? StateMachine.access$4100(this.this$0).getRequestId() == requestId : StateMachine.access$4100(this.this$0) == null ? StateMachine.access$4000(this.this$0).getRequestId() == requestId : StateMachine.access$4000(this.this$0).getRequestId() > StateMachine.access$4100(this.this$0).getRequestId() ? StateMachine.access$4000(this.this$0).getRequestId() == requestId : StateMachine.access$4100(this.this$0).getRequestId() == requestId;
    }

    public void handleStorageError(Object... objArr) {
        Storage$StorageType storage$StorageType = (Storage$StorageType) objArr[0];
        if (((Storage$StorageState) objArr[1]) == Storage$StorageState.CORRUPT) {
            CamLog.w("Storage corruption : type = " + storage$StorageType + ", state = " + StateMachine.access$1100(this.this$0));
            StateMachine.access$1200(this.this$0).showMessageDialog(DialogId.MEMORY_SD_UNAVAILABLE_FOR_CORRUPT, new Object[0]);
            StateMachine.access$3400(this.this$0, new StateMachine$StateFatal(this.this$0, false, false, null), new Object[0]);
        }
    }

    public void handleOnStorageUngranted(Object... objArr) {
        if (CamLog.DEBUG) {
            throw new IllegalStateException("Since processing is not executed in the current state, confirmation is necessary");
        }
    }

    public void handleRequestSetupHeadUpDisplay(Object... objArr) {
        StateMachine.access$1700(this.this$0).postDelayed(new StateMachine$State$ReTrySetupHeadUpDisplayTask(this, ((Boolean) objArr[0]).booleanValue()), 100L);
    }

    public void handleCancelTouchedPosition(Object... objArr) {
        StateMachine.access$2600(this.this$0).resetFocusAreaAndRect((FocusMode) this.this$0.getUserSetting().get(UserSettingKey.FOCUS_MODE));
        StateMachine.access$2600(this.this$0).setMeteringAreaAndCommit(null, (Metering) StateMachine.access$1800(this.this$0).get(UserSettingKey.METERING));
    }

    public void handleOnPredictiveCaptureGroupStoreCompleted(Object... objArr) {
        StateMachine.access$4200(this.this$0, (StoreDataResult) objArr[0]);
    }

    public void handleOnObjectLost(Object... objArr) {
        StateMachine.access$1200(this.this$0).onObjectLost();
    }

    public void handleOnReachBatteryLimit(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StateFatal(this.this$0, false, false, null), objArr);
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_NOTIFY_BATTERY_CRITICAL, false);
    }

    public void handleOnReachBatteryLow(Object... objArr) {
        StateMachine.access$1200(this.this$0).showMessageDialog(DialogId.LOW_BATTERY_WARNING, new Object[0]);
    }

    public void handleOnReachBatteryLevelChanged(Object... objArr) {
        StateMachine.access$1200(this.this$0).updateBatteryIndicator(((Integer) objArr[0]).intValue());
    }
}
