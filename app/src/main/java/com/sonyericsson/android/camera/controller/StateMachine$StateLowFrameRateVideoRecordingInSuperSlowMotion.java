package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.cameracommon.storage.Storage$StorageState;

class StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion extends StateMachine$StateVideoBase {
    private static final String TAG = "StateMachine.StateLowFrameRateVideoRecordingInSuperSlowMotion";
    final /* synthetic */ StateMachine this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion(StateMachine stateMachine) {
        super(stateMachine);
        this.this$0 = stateMachine;
        this.mCaptureState = StateMachine$CaptureState.STATE_LOW_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION;
        StateMachine.access$11502(stateMachine, true);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnHeatedOverCoolingLow(Object... objArr) {
        StateMachine.access$2600(this.this$0).setLowPower();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void entry() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke StateLowFrameRateVideoRecordingInSuperSlowMotion");
        }
        super.entry();
        StateMachine.access$9000(this.this$0);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleTriggerSlowMotion(Object... objArr) {
        StateMachine.access$2600(this.this$0).startSuperSlowMotion();
        StateMachine.access$3400(this.this$0, new StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion(this.this$0), objArr);
        StateMachine.access$11608(this.this$0);
        StateMachine.access$1200(this.this$0).startSlowMotionFeedbackAnimation();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePause(Object... objArr) {
        StateMachine.access$11700(this.this$0, objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStopRecording(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StateVideoStopping(this.this$0), objArr);
        StateMachine.access$11400(this.this$0, false);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnVideoRecordingDone(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StateVideoStore(this.this$0, (StateMachine$1) null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStopRecordingSlowMotion(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StateVideoStopping(this.this$0), objArr);
        StateMachine.access$11400(this.this$0, false);
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
