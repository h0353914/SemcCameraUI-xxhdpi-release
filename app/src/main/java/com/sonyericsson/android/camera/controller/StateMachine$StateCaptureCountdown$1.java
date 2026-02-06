package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.controller.selftimerfeedback.SelfTimerFeedback$SelfTimerFeedbackListener;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.cameracommon.sound.SoundPlayer$Type;
import com.sonymobile.cameracommon.research.ResearchUtil;
import com.sonymobile.cameracommon.research.parameters.Event$CaptureTrigger;
import com.sonymobile.cameracommon.research.parameters.Event$SelfTimerTrigger;

class StateMachine$StateCaptureCountdown$1 implements SelfTimerFeedback$SelfTimerFeedbackListener {
    final /* synthetic */ StateMachine$StateCaptureCountdown this$1;

    StateMachine$StateCaptureCountdown$1(StateMachine$StateCaptureCountdown stateMachine$StateCaptureCountdown) {
        this.this$1 = stateMachine$StateCaptureCountdown;
    }

    @Override // com.sonyericsson.android.camera.controller.selftimerfeedback.SelfTimerFeedback$SelfTimerFeedbackListener
    public void onBlinkFinished() {
        StateMachine$StateCaptureCountdown.access$10000(this.this$1);
    }

    @Override // com.sonyericsson.android.camera.controller.selftimerfeedback.SelfTimerFeedback$SelfTimerFeedbackListener
    public void onCountDownFinished() {
        if (this.this$1.this$0.getCurrentCapturingMode().isVideo()) {
            StateMachine.access$3400(this.this$1.this$0, new StateMachine$StatePhotoReadyForRecording(this.this$1.this$0, StateMachine$StateCaptureCountdown.access$10100(this.this$1) == Event$SelfTimerTrigger.SIDE_SENSE, null), new Object[]{false});
            this.this$1.this$0.sendEvent(StateMachine$TransitterEvent.EVENT_START_RECORDING, new Object[0]);
        } else if (StateMachine.access$7000(this.this$1.this$0)) {
            StateMachine.access$3400(this.this$1.this$0, new StateMachine$StatePhotoCaptureWaitForAfDone(this.this$1.this$0, false, null), new Object[0]);
        }
        Event$CaptureTrigger event$CaptureTrigger = Event$CaptureTrigger.SELF_TIMER;
        if (StateMachine$StateCaptureCountdown.access$10100(this.this$1) == Event$SelfTimerTrigger.GESTURE) {
            event$CaptureTrigger = Event$CaptureTrigger.GESTURE;
            LocalResearchUtil.getInstance().setPredictiveLaunchState(false);
        } else if (StateMachine$StateCaptureCountdown.access$10100(this.this$1) == Event$SelfTimerTrigger.SIDE_SENSE) {
            event$CaptureTrigger = Event$CaptureTrigger.SIDE_SENSE;
        }
        ResearchUtil.getInstance().setCaptureTrigger(event$CaptureTrigger);
    }

    @Override // com.sonyericsson.android.camera.controller.selftimerfeedback.SelfTimerFeedback$SelfTimerFeedbackListener
    public void onSoundTypeChange(long j) {
        if (StateMachine.access$9600(this.this$1.this$0)) {
            if (j == 4000) {
                StateMachine.access$500(this.this$1.this$0).playSound(SoundPlayer$Type.SELF_TIMER_4SEC);
            } else {
                StateMachine.access$500(this.this$1.this$0).playSound(SoundPlayer$Type.SELF_TIMER_1SEC);
            }
        }
    }
}
