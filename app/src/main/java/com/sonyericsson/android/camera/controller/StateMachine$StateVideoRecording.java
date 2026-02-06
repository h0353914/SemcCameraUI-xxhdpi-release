package com.sonyericsson.android.camera.controller;

import android.graphics.Point;
import android.graphics.Rect;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.FocusRange;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.ViewFinder$HeadUpDisplaySetupState;
import com.sonyericsson.android.camera.view.ViewFinder$UiComponentKind;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.cameracommon.storage.Storage$StorageState;
import com.sonymobile.cameracommon.research.ResearchUtil;

class StateMachine$StateVideoRecording extends StateMachine$StateVideoBase {
    private static final String TAG = "StateMachine.StateVideoRecording";
    private boolean mAlreadyRequestStop;
    final /* synthetic */ StateMachine this$0;

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStartRecording(Object... objArr) {
    }

    protected boolean isPaused() {
        return false;
    }

    /* synthetic */ StateMachine$StateVideoRecording(StateMachine stateMachine, StateMachine$1 stateMachine$1) {
        this(stateMachine);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StateVideoRecording(StateMachine stateMachine) {
        super(stateMachine);
        this.this$0 = stateMachine;
        this.mAlreadyRequestStop = false;
        this.mCaptureState = StateMachine$CaptureState.STATE_VIDEO_RECORDING;
        StateMachine.access$11502(stateMachine, true);
        StateMachine.access$12000(stateMachine);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StateMachine$StateVideoRecording(StateMachine stateMachine, boolean z) {
        super(stateMachine);
        this.this$0 = stateMachine;
        this.mAlreadyRequestStop = false;
        this.mCaptureState = StateMachine$CaptureState.STATE_VIDEO_RECORDING;
        StateMachine.access$12000(stateMachine);
        StateMachine.access$11502(stateMachine, true);
        this.mAlreadyRequestStop = z;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void entry() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke StateVideoRecording");
        }
        super.entry();
        StateMachine.access$9000(this.this$0);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleRequestSetupHeadUpDisplay(Object... objArr) {
        if (((Boolean) objArr[0]).booleanValue()) {
            StateMachine.access$1300(this.this$0, StateMachine.access$1000(this.this$0, StateMachine.access$400(this.this$0)));
            StateMachine.access$2900(this.this$0);
        }
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY, ViewFinder$HeadUpDisplaySetupState.VIDEO_RECORDING);
        StateMachine.access$12000(this.this$0);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePauseRecording(Object... objArr) {
        if (this.mAlreadyRequestStop) {
            return;
        }
        StateMachine.access$12100(this.this$0);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleCapture(Object... objArr) {
        if (this.mAlreadyRequestStop || StateMachine.access$500(this.this$0).getLaunchCondition().getOneShotMode().isEnabled() || !StateMachine.access$2600(this.this$0).canRecorderTakeSnapshot()) {
            return;
        }
        StateMachine.access$3400(this.this$0, new StateMachine$StateVideoCaptureWhileRecording(this.this$0, isPaused(), null), new Object[0]);
        this.mAlreadyRequestStop = true;
        StateMachine.access$12300(this.this$0);
        ResearchUtil.getInstance().incrementCountSnapshotInRecording();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnVideoRecordingDone(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StateVideoStore(this.this$0, (StateMachine$1) null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePause(Object... objArr) {
        this.mAlreadyRequestStop = true;
        StateMachine.access$11700(this.this$0, objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStorageError(Object... objArr) {
        if (((Storage$StorageState) objArr[1]) == Storage$StorageState.CORRUPT) {
            CamLog.w("Storage corruption : state = " + StateMachine.access$1100(this.this$0));
            if (CamLog.DEBUG) {
                throw new IllegalStateException();
            }
        }
        this.mAlreadyRequestStop = true;
        StateMachine.access$3400(this.this$0, new StateMachine$StateVideoStopping(this.this$0), new Object[0]);
        StateMachine.access$11400(this.this$0, false);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStopRecording(Object... objArr) {
        this.mAlreadyRequestStop = true;
        StateMachine.access$3400(this.this$0, new StateMachine$StateVideoStopping(this.this$0), new Object[0]);
        StateMachine.access$11400(this.this$0, false);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StateVideoBase, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnOnePreviewFrameUpdated(Object... objArr) {
        super.handleOnOnePreviewFrameUpdated(objArr);
        StateMachine.access$12000(this.this$0);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnFaceDetected(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FACE_DETECTED, objArr[0]);
        StateMachine.access$12400(this.this$0);
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
    public void handleChangeSelectedFace(Object... objArr) {
        StateMachine.access$7800(this.this$0, (Point) objArr[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleDialogOpened(Object... objArr) {
        if (objArr != null && objArr.length != 0) {
            StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_UPDATE_DIALOGS, (ViewFinder$UiComponentKind) objArr[0]);
        }
        StateMachine.access$3400(this.this$0, new StateMachine$StateOperationRestricted(this.this$0, null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnReachBatteryLimit(Object... objArr) {
        this.mAlreadyRequestStop = true;
        StateMachine.access$11400(this.this$0, false);
        StateMachine.access$3400(this.this$0, new StateMachine$StateFatal(this.this$0, true, false, null), objArr);
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_NOTIFY_BATTERY_CRITICAL, true);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StateVideoBase, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnHeatedOverCritical(Object... objArr) {
        this.mAlreadyRequestStop = true;
        super.handleOnHeatedOverCritical(objArr);
    }
}
