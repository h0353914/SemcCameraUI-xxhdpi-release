package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.DestinationToSave;
import com.sonyericsson.android.camera.configuration.parameters.FastCapture;
import com.sonyericsson.android.camera.configuration.parameters.FrontAngle;
import com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraSessionId;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;
import com.sonyericsson.cameracommon.storage.Storage$StorageReadyStateListener;
import com.sonyericsson.cameracommon.storage.Storage$StorageState;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;
import com.sonymobile.cameracommon.evf.Evf;
import com.sonymobile.cameracommon.research.ResearchUtil;

class StateMachine$StateResume extends StateMachine$State {
    private final FastCapture mFastCapture;
    private boolean mIsCameraStarted;
    private boolean mIsCurrentStorageReady;
    private boolean mIsEvfPrepared;
    private boolean mIsResumeSequenceStarted;
    private final CameraDeviceHandler$CameraSessionId mSessionId;
    private StateMachine$StartupAction mStartupAction;
    private Storage$StorageReadyStateListener mStorageReadyStateListener;
    final /* synthetic */ StateMachine this$0;

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnStorageUngranted(Object... objArr) {
    }

    /* synthetic */ StateMachine$StateResume(StateMachine stateMachine, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, FastCapture fastCapture, Evf evf, StateMachine$StartupAction stateMachine$StartupAction, StateMachine$1 stateMachine$1) {
        this(stateMachine, cameraDeviceHandler$CameraSessionId, fastCapture, evf, stateMachine$StartupAction);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StateResume(StateMachine stateMachine, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, FastCapture fastCapture, Evf evf, StateMachine$StartupAction stateMachine$StartupAction) {
        super(stateMachine, null);
        this.this$0 = stateMachine;
        this.mStorageReadyStateListener = new StateMachine$StateResume$1(this);
        PerfLog.STATE_RESUME.begin();
        this.mCaptureState = StateMachine$CaptureState.STATE_RESUME;
        this.mSessionId = cameraDeviceHandler$CameraSessionId;
        this.mFastCapture = fastCapture;
        this.mIsResumeSequenceStarted = false;
        this.mIsCameraStarted = false;
        this.mIsCurrentStorageReady = StateMachine.access$600(stateMachine).isStorageReadable(StateMachine.access$400(stateMachine));
        StateMachine.access$5700(stateMachine).start();
        this.mStartupAction = stateMachine$StartupAction;
        if (evf != null) {
            StateMachine.access$2600(stateMachine).setPreviewSurface(evf.asSurface());
            this.mIsEvfPrepared = true;
        } else {
            this.mIsEvfPrepared = false;
        }
        StateMachine.access$3002(stateMachine, false);
    }

    private void moveStateIfCaptureReady() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke isStorageReady:" + this.mIsCurrentStorageReady + ", isCameraStarted:" + this.mIsCameraStarted + ", isEvfPrepared:" + this.mIsEvfPrepared + ", getExtraOperation():" + StateMachine.access$500(this.this$0).getLaunchCondition().getExtraOperation());
        }
        if (this.mIsCameraStarted && this.mIsEvfPrepared && this.mIsCurrentStorageReady) {
            StateMachine.access$5800(this.this$0);
            StateMachine.access$5900(this.this$0);
            if (this.this$0.getCurrentCapturingMode().isFront() && StateMachine.access$1800(this.this$0).get(UserSettingKey.FRONT_ANGLE) == FrontAngle.CROPPED) {
                StateMachine.access$2500(this.this$0);
            }
            StateMachine.access$2600(this.this$0).startPreview();
            if (StateMachine.access$5300(this.this$0)) {
                StateMachine.access$2600(this.this$0).startFusionMonitoring();
            }
            StateMachine.access$500(this.this$0).reportFullyDrawnOnce();
            if (StateMachine.access$1800(this.this$0).get(UserSettingKey.DESTINATION_TO_SAVE) == DestinationToSave.SDCARD) {
                Storage$StorageState currentState = StateMachine.access$600(this.this$0).getCurrentState(Storage$StorageType.EXTERNAL_CARD);
                boolean zAccess$700 = StateMachine.access$700(this.this$0, Storage$StorageType.EXTERNAL_CARD);
                if (StateMachine.access$600(this.this$0).getSdGrantedUri() == null && (currentState != Storage$StorageState.REMOVED || this.mFastCapture == FastCapture.LAUNCH_AND_CAPTURE)) {
                    StateMachine.access$1800(this.this$0).set(DestinationToSave.EMMC);
                    if (zAccess$700) {
                        if (StateMachine.access$1200(this.this$0) != null) {
                            StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_SHOW_CHANGE_INTERNAL_STORAGE_MESSAGE, Boolean.valueOf(this.mFastCapture == FastCapture.LAUNCH_AND_CAPTURE));
                        }
                    } else {
                        this.this$0.sendEvent(StateMachine$TransitterEvent.EVENT_STORAGE_ERROR, Storage$StorageType.INTERNAL, currentState);
                        StateMachine.access$1200(this.this$0).notifyStorageStateChanged(Storage$StorageType.INTERNAL, currentState, zAccess$700, false);
                    }
                }
            }
            if (!StateMachine.access$1000(this.this$0, StateMachine.access$400(this.this$0))) {
                switch (StateMachine$8.$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState[StateMachine.access$2600(this.this$0).getPreProcessState().ordinal()]) {
                    case 1:
                    case 3:
                        StateMachine.access$3500(this.this$0, false);
                        StateMachine.access$2600(this.this$0).cancelPreProcessState();
                        break;
                    case 2:
                    case 4:
                        StateMachine.access$3400(this.this$0, new StateMachine$StateWaitingPreProcessDone(this.this$0, this.mFastCapture, null), new Object[0]);
                        return;
                }
            }
            StateMachine.access$5400(this.this$0, this.mFastCapture, this.mStartupAction);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void entry() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke StateResume");
        }
        super.entry();
        StateMachine$StorageStateAdapter.access$6100(StateMachine.access$5600(this.this$0));
        StateMachine.access$1200(this.this$0).setIsCameraSwitching(false);
        StateMachine.access$4002(this.this$0, null);
        StateMachine.access$4102(this.this$0, null);
        StateMachine.access$6202(this.this$0, false);
        this.mIsCurrentStorageReady = StateMachine.access$600(this.this$0).isStorageReadable(StateMachine.access$400(this.this$0));
        StateMachine.access$600(this.this$0).addStorageReadyStateListener(this.mStorageReadyStateListener);
        if (StateMachine.access$5000(this.this$0)) {
            StateMachine.access$500(this.this$0).disableAutoPowerOffTimer();
            StateMachine.access$1200(this.this$0).showSavingProgressBar();
        } else {
            startResuming();
            moveStateIfCaptureReady();
        }
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY, Boolean.valueOf(this.this$0.isSettingChangeAcceptable()));
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void exit() {
        super.exit();
        StateMachine.access$600(this.this$0).removeStorageReadyStateListener(this.mStorageReadyStateListener);
        StateMachine.access$1200(this.this$0).hideSavingProgressBar();
        StateMachine.access$1700(this.this$0).removeCallbacks(StateMachine.access$5200(this.this$0));
        PerfLog.STATE_RESUME.end();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnEvfPrepared(Object... objArr) {
        if (!this.mIsResumeSequenceStarted) {
            StateMachine.access$1200(this.this$0).requestCheckEvfPreparationRetrying();
            return;
        }
        PerfLog.RESIZE_EVF.end();
        StateMachine.access$2600(this.this$0).setPreviewSurface(((Evf) objArr[0]).asSurface());
        this.mIsEvfPrepared = true;
        LocalResearchUtil.getInstance().setSettingsValue(StateMachine.access$1800(this.this$0), StateMachine.access$500(this.this$0).getLaunchCondition().getCapturingMode());
        moveStateIfCaptureReady();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnInitialAutoFocusDone(Object... objArr) {
        StateMachine.access$2600(this.this$0).preCapture();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStartCaptureCountDown(Object... objArr) {
        StateMachine.access$4800(this.this$0, StateMachine$TransitterEvent.EVENT_START_CAPTURE_COUNTDOWN, objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleCapture(Object... objArr) {
        StateMachine.access$4800(this.this$0, StateMachine$TransitterEvent.EVENT_CAPTURE, objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnPreShutterDone(Object... objArr) {
        StateMachine.access$4800(this.this$0, StateMachine$TransitterEvent.EVENT_ON_PRE_SHUTTER_DONE, objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnPreTakePictureDone(Object... objArr) {
        StateMachine.access$4800(this.this$0, StateMachine$TransitterEvent.EVENT_ON_PRE_TAKE_PICTURE_DONE, objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnCameraDeviceOpened(Object... objArr) {
        if (((CameraDeviceHandler$CameraSessionId) objArr[0]) == this.mSessionId) {
            this.mIsCameraStarted = true;
            moveStateIfCaptureReady();
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnCameraDeviceClosed(Object... objArr) {
        if (StateMachine.access$5000(this.this$0) || this.mIsResumeSequenceStarted) {
            return;
        }
        StateMachine.access$500(this.this$0).enableAutoPowerOffTimer();
        startResuming();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleResumeTimeout(Object... objArr) {
        ResearchUtil.getInstance().setCameraNotAvailableFailedToOpen();
        CamLog.e("StateMachine", "Camera application resume is timed-out.");
        CamLog.e("StateMachine", "  CameraDevice is ready:" + this.mIsCameraStarted);
        CamLog.e("StateMachine", "  Evf is ready:" + this.mIsEvfPrepared);
        CamLog.e("StateMachine", "  Storage is ready:" + this.mIsCurrentStorageReady);
        PlatformCapability.setDeviceError(true);
        StateMachine.access$1200(this.this$0).showMessageDialog(DialogId.ERROR_IN_USE_BY_ANOTHER_APPLICATION, new Object[0]);
        StateMachine.access$3400(this.this$0, new StateMachine$StateWarning(this.this$0, null), new Object[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePause(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StatePause(this.this$0, ((Boolean) objArr[0]).booleanValue(), null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnStorageReadyStateChanged(Object... objArr) {
        this.mIsCurrentStorageReady = StateMachine.access$600(this.this$0).isStorageReadable(StateMachine.access$400(this.this$0));
        if (this.mIsCurrentStorageReady) {
            moveStateIfCaptureReady();
        }
    }

    private void startResuming() {
        if (StateMachine.access$500(this.this$0).isOneShotVideo()) {
            StateMachine.access$500(this.this$0).awaitSetupAllReady();
        }
        this.mIsResumeSequenceStarted = true;
        StateMachine.access$1200(this.this$0).showSurface();
        StateMachine.access$2700(this.this$0, StateMachine.access$500(this.this$0).getLaunchCondition().getCapturingMode(), false);
        PerfLog.RESIZE_EVF.begin();
        if (StateMachine$8.$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState[StateMachine.access$2600(this.this$0).getPreProcessState().ordinal()] == 1) {
            StateMachine.access$2600(this.this$0).preCapture();
        }
        StateMachine.access$1700(this.this$0).postDelayed(StateMachine.access$5200(this.this$0), 7000L);
    }
}
