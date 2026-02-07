package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.SlowMotion;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.cameracommon.storage.Storage$StorageState;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$StateWaitForHighFrameRateVideoRecordingDone extends StateMachine$StateVideoBase {
    private static final String TAG = "StateMachine.StateWaitForHighFrameRateVideoRecordingDone";
    final /* synthetic */ StateMachine this$0;

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StateVideoBase, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleFinishZoom(Object... objArr) {
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StateVideoBase, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePerformZoom(Object... objArr) {
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StateVideoBase, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePrepareZoom(Object... objArr) {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StateMachine$StateWaitForHighFrameRateVideoRecordingDone(StateMachine stateMachine) {
        super(stateMachine);
        this.this$0 = stateMachine;
        this.mCaptureState = StateMachine$CaptureState.STATE_WAIT_FOR_HIGH_FRAME_RATE_VIDEO_RECORDING_DONE;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleHighFameRateRecordingDone(Object... objArr) {
        switch ((SlowMotion) this.this$0.getUserSetting().get(UserSettingKey.SLOW_MOTION)) {
            case SUPER_SLOW_MOTION:
                StateMachine.access$3400(this.this$0, new StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion(this.this$0), new Object[0]);
                break;
            case SUPER_SLOW_SHOT:
                StateMachine.access$3400(this.this$0, new StateMachine$StateVideoStopping(this.this$0), new Object[0]);
                StateMachine.access$11400(this.this$0, false);
                break;
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStopRecordingSlowMotion(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StateVideoStopping(this.this$0), objArr);
        StateMachine.access$11400(this.this$0, false);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePause(Object... objArr) {
        StateMachine.access$11700(this.this$0, objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnVideoRecordingDone(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StateVideoStore(this.this$0, (StateMachine$1) null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStorageError(Object... objArr) {
        if (((Storage$StorageState) objArr[1]) == Storage$StorageState.CORRUPT) {
            CamLog.w("Storage corruption : state = " + StateMachine.access$1100(this.this$0));
            if (CamLog.DEBUG) {
                throw new IllegalStateException();
            }
        }
        StateMachine.access$3400(this.this$0, new StateMachine$StateVideoStopping(this.this$0), objArr);
        StateMachine.access$11400(this.this$0, false);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnReachBatteryLimit(Object... objArr) {
        StateMachine.access$11400(this.this$0, false);
        StateMachine.access$3400(this.this$0, new StateMachine$StateFatal(this.this$0, true, false, null), objArr);
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_NOTIFY_BATTERY_CRITICAL, true);
    }
}
