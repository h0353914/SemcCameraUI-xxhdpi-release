package com.sonyericsson.android.camera.controller;

import android.graphics.Point;
import android.graphics.Rect;
import com.sonyericsson.android.camera.CameraApplication;
import com.sonyericsson.android.camera.LaunchCondition$ExtraOperation;
import com.sonyericsson.android.camera.configuration.IntentReader$VideoQualityConfigurations;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.DestinationToSave;
import com.sonyericsson.android.camera.configuration.parameters.FocusRange;
import com.sonyericsson.android.camera.configuration.parameters.FusionMode;
import com.sonyericsson.android.camera.configuration.parameters.SlowMotion;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.recorder.RecordingProfile;
import com.sonyericsson.android.camera.recorder.RecordingProfile$Builder;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.android.camera.view.ViewFinder$HeadUpDisplaySetupState;
import com.sonyericsson.android.camera.view.ViewFinder$UiComponentKind;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.android.camera.view.animation.AnimationRequest;
import com.sonyericsson.android.camera.view.animation.AnimationRequest$AnimationDegree;
import com.sonyericsson.android.camera.view.animation.AnimationRequest$AnimationType;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;
import com.sonyericsson.cameracommon.storage.Storage$StorageState;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;
import com.sonymobile.cameracommon.evf.Evf;
import com.sonymobile.cameracommon.research.parameters.Event$SelfTimerTrigger;
import java.util.Iterator;

class StateMachine$StateVideoReady extends StateMachine$StateVideoBase {
    private static final String TAG = "StateMachine.StateVideoReady";
    private StateMachine$StartupAction mStartupAction;
    final /* synthetic */ StateMachine this$0;

    public StateMachine$StateVideoReady(StateMachine stateMachine) {
        this(stateMachine, StateMachine$StartupAction.NONE);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StateMachine$StateVideoReady(StateMachine stateMachine, StateMachine$StartupAction stateMachine$StartupAction) {
        super(stateMachine);
        this.this$0 = stateMachine;
        this.mCaptureState = StateMachine$CaptureState.STATE_VIDEO_READY;
        this.mStartupAction = stateMachine$StartupAction;
        if (stateMachine.getCurrentCapturingMode() == CapturingMode.SCENE_RECOGNITION) {
            StateMachine.access$8900(stateMachine, CapturingMode.VIDEO);
        }
        StateMachine.access$6400(stateMachine);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void entry() {
        SlowMotion slowMotion;
        if (StateMachine.access$500(this.this$0) != null) {
            StateMachine.access$9000(this.this$0);
            StateMachine.access$500(this.this$0).notifyStateBlockedToWearable();
        }
        if (!StateMachine.access$9100(this.this$0).isEmpty()) {
            Iterator it = StateMachine.access$9100(this.this$0).iterator();
            while (it.hasNext()) {
                StateMachine.access$1700(this.this$0).post((Runnable) it.next());
            }
            StateMachine.access$9100(this.this$0).clear();
        }
        if (PlatformCapability.hasDeviceError()) {
            return;
        }
        if (StateMachine.access$500(this.this$0) != null) {
            StateMachine.access$500(this.this$0).enableAutoPowerOffTimer();
        }
        if (!StateMachine.access$1200(this.this$0).isTouchFocus()) {
            StateMachine.access$2900(this.this$0);
        }
        if (!StateMachine.access$3000(this.this$0)) {
            StateMachine.access$1300(this.this$0, StateMachine.access$1000(this.this$0, StateMachine.access$400(this.this$0)));
        }
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_ORIENTATION_CHANGED, Integer.valueOf(StateMachine.access$6500(this.this$0)));
        if (StateMachine.access$1200(this.this$0).isHeadUpDisplayReady() && StateMachine.access$5300(this.this$0)) {
            StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_FUSION_CONDITION, StateMachine.access$2600(this.this$0).getLatestFusionResult());
        }
        Storage$StorageType storage$StorageTypeAccess$400 = StateMachine.access$400(this.this$0);
        if (!StateMachine.access$1000(this.this$0, storage$StorageTypeAccess$400)) {
            this.this$0.sendEvent(StateMachine$TransitterEvent.EVENT_STORAGE_ERROR, storage$StorageTypeAccess$400, StateMachine.access$600(this.this$0).getCurrentState(storage$StorageTypeAccess$400));
            return;
        }
        IntentReader$VideoQualityConfigurations videoQualityConfigurations = StateMachine.access$500(this.this$0).getLaunchCondition().getVideoQualityConfigurations();
        if (!StateMachine.access$9200(this.this$0)) {
            StateMachine.access$1200(this.this$0).showMessageDialog(DialogId.MEMORY_SHORTAGE_ON_ONE_SHOT_VIDEO, new Object[0]);
            return;
        }
        if (StateMachine.access$500(this.this$0).isOneShot() && VideoSize.MMS == StateMachine.access$1800(this.this$0).get(UserSettingKey.VIDEO_SIZE) && !videoQualityConfigurations.isQualityLow()) {
            StateMachine.access$1200(this.this$0).showMessageDialog(DialogId.MEMORY_SHORTAGE_ON_ONE_SHOT_VIDEO, new Object[0]);
            return;
        }
        switch ((SlowMotion) StateMachine.access$1800(this.this$0).get(UserSettingKey.SLOW_MOTION)) {
            case SUPER_SLOW_MOTION:
            case SUPER_SLOW_SHOT:
                VideoSize videoSize = (VideoSize) StateMachine.access$1800(this.this$0).get(UserSettingKey.VIDEO_SIZE);
                if (this.this$0.getCurrentCapturingMode() == CapturingMode.SLOW_MOTION && (slowMotion = (SlowMotion) this.this$0.getUserSetting().get(UserSettingKey.SLOW_MOTION)) == SlowMotion.STANDARD_SLOW_MOTION) {
                    videoSize = slowMotion.getVideoSize();
                }
                RecordingProfile recordingProfileBuild = new RecordingProfile$Builder().videoSize(videoSize).setOneShot(StateMachine.access$500(this.this$0).isOneShot()).videoHdr((VideoHdr) StateMachine.access$1800(this.this$0).get(UserSettingKey.VIDEO_HDR)).build();
                StateMachine.access$2600(this.this$0).prepareRecorder(StateMachine.access$9300(this.this$0, recordingProfileBuild), StateMachine.access$9400(this.this$0), StateMachine.access$9500(this.this$0), StateMachine.access$9600(this.this$0), recordingProfileBuild, StateMachine.access$600(this.this$0).createNotifier(StateMachine.access$400(this.this$0), 10));
                break;
        }
        if (this.this$0.mIsSceneRecognitionValid) {
            return;
        }
        StateMachine.access$6700(this.this$0);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleChangeAngleStart(Object... objArr) {
        StateMachine.access$6900(this.this$0);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnEvfPrepared(Object... objArr) {
        StateMachine.access$2600(this.this$0).setPreviewSurface(((Evf) objArr[0]).asSurface());
        StateMachine.access$2600(this.this$0).startPreview();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleRequestSetupHeadUpDisplay(Object... objArr) {
        if (((Boolean) objArr[0]).booleanValue()) {
            StateMachine.access$1300(this.this$0, StateMachine.access$1000(this.this$0, StateMachine.access$400(this.this$0)));
            StateMachine.access$2900(this.this$0);
        }
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY, ViewFinder$HeadUpDisplaySetupState.VIDEO_READY);
        if (this.this$0.isTutorialNeededToBeShownForCurrentMode()) {
            StateMachine.access$3400(this.this$0, new StateMachine$StateOperationRestricted(this.this$0, null), new Object[]{ViewFinder$UiComponentKind.TUTORIAL});
        } else if (StateMachine.access$500(this.this$0) != null && StateMachine.access$500(this.this$0).getLaunchCondition().getLaunchCameraMode().isSlowMotion()) {
            StateMachine.access$1200(this.this$0).postSlowMotionHintText();
        }
        if (StateMachine.access$500(this.this$0) != null) {
            StateMachine.access$500(this.this$0).clearLaunchCameraMode();
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleDialogOpened(Object... objArr) {
        if (objArr != null && objArr.length != 0) {
            StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_UPDATE_DIALOGS, (ViewFinder$UiComponentKind) objArr[0]);
        }
        StateMachine.access$3400(this.this$0, new StateMachine$StateOperationRestricted(this.this$0, null), objArr);
        if (StateMachine.access$500(this.this$0).getLaunchCondition().getExtraOperation() == LaunchCondition$ExtraOperation.OPEN_SETTINGS_MENU) {
            StateMachine.access$500(this.this$0).getLaunchCondition().clearExtraOperation();
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePause(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StatePause(this.this$0, ((Boolean) objArr[0]).booleanValue(), null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStorageError(Object... objArr) {
        Storage$StorageType storage$StorageType = (Storage$StorageType) objArr[0];
        if (((Storage$StorageState) objArr[1]) == Storage$StorageState.CORRUPT) {
            CamLog.w("Storage corruption : type = " + storage$StorageType + ", state = " + StateMachine.access$1100(this.this$0));
            StateMachine.access$1200(this.this$0).showMessageDialog(DialogId.MEMORY_SD_UNAVAILABLE_FOR_CORRUPT, new Object[0]);
            StateMachine.access$3400(this.this$0, new StateMachine$StateFatal(this.this$0, false, false, null), new Object[0]);
            return;
        }
        if (StateMachine.access$700(this.this$0, StateMachine.access$400(this.this$0))) {
            return;
        }
        StateMachine.access$3400(this.this$0, new StateMachine$StateWarning(this.this$0, null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnStorageUngranted(Object... objArr) {
        StateMachine.access$1800(this.this$0).set(DestinationToSave.EMMC);
        if (StateMachine.access$1200(this.this$0) != null) {
            StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_SHOW_CHANGE_INTERNAL_STORAGE_MESSAGE, false);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StateVideoBase, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnSemiAutoDisabled(Object... objArr) {
        super.handleOnSemiAutoDisabled(objArr);
        StateMachine.access$1300(this.this$0, StateMachine.access$1000(this.this$0, StateMachine.access$400(this.this$0)));
        StateMachine.access$2600(this.this$0).setAmberBlueColorAndCommit(0);
        StateMachine.access$2600(this.this$0).setBrightnessAndCommit(0);
        LocalResearchUtil.getInstance().setSemiAutoSettingAmberBlueValue(0);
        LocalResearchUtil.getInstance().setSemiAutoSettingBrightnessValue(0);
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
    public void handleRecordReady(Object... objArr) {
        if (!StateMachine.access$2600(this.this$0).isCameraDeviceStatusReady()) {
            CamLog.w("ignore the event because device is not ready");
        } else {
            StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoReadyForRecording(this.this$0, false, null), new Object[]{Boolean.valueOf((objArr == null || objArr.length == 0) ? false : ((Boolean) objArr[0]).booleanValue())});
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStartRecording(Object... objArr) {
        if (!StateMachine.access$2600(this.this$0).isCameraDeviceStatusReady()) {
            CamLog.w("ignore the event because device is not ready");
        } else {
            if (StateMachine.access$2000(this.this$0)) {
                return;
            }
            StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoReadyForRecording(this.this$0, false, null), new Object[]{false});
            this.this$0.sendEvent(StateMachine$TransitterEvent.EVENT_START_RECORDING, new Object[0]);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStartCaptureCountDown(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StateCaptureCountdown(this.this$0, (Event$SelfTimerTrigger) StateMachine.access$7200(objArr, 0, Event$SelfTimerTrigger.class, Event$SelfTimerTrigger.NORMAL), null), new Object[]{true});
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
    public void handleOnFaceDetected(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FACE_DETECTED, objArr[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleChangeSelectedFace(Object... objArr) {
        StateMachine.access$7800(this.this$0, (Point) objArr[0]);
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
    public void handleOnObjectTracked(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_TRACKED_OBJECT_STATE_UPDATED, objArr[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleDeselectObjectPosition(Object... objArr) {
        StateMachine.access$1400(this.this$0);
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
    public void handleRequestUpdateHighSensitivityFusionMode(Object... objArr) {
        StateMachine.access$8700(this.this$0, (FusionMode) objArr[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnPreviewStarted() {
        if (this.mStartupAction == StateMachine$StartupAction.RECORD) {
            this.this$0.sendEvent(StateMachine$TransitterEvent.EVENT_START_RECORDING, new Object[0]);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnLazyInitializationTaskRun(Object... objArr) {
        if (this.mStartupAction == StateMachine$StartupAction.RECORD) {
            StateMachine.access$2600(this.this$0).setOnPreviewStartedListener(new StateMachine$OnPreviewStartedListenerImpl(this.this$0, null));
            CameraApplication.getUiThreadHandler().post(new StateMachine$StateVideoReady$1(this));
        }
    }
}
