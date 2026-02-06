package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.recorder.RecorderController$Result;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonymobile.cameracommon.research.ResearchUtil;

class StateMachine$5$3 implements Runnable {
    final /* synthetic */ StateMachine$5 this$1;
    final /* synthetic */ RecorderController$Result val$localResult;

    StateMachine$5$3(StateMachine$5 stateMachine$5, RecorderController$Result recorderController$Result) {
        this.this$1 = stateMachine$5;
        this.val$localResult = recorderController$Result;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke onRecordFinished");
        }
        switch (StateMachine$8.$SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result[this.val$localResult.ordinal()]) {
            case 1:
                StateMachine.access$3400(this.this$1.this$0, new StateMachine$StateVideoStopping(this.this$1.this$0, this.val$localResult), new Object[0]);
                StateMachine.access$11400(this.this$1.this$0, false);
                break;
            case 2:
                StateMachine.access$3400(this.this$1.this$0, new StateMachine$StateVideoStopping(this.this$1.this$0, this.val$localResult), new Object[0]);
                StateMachine.access$11400(this.this$1.this$0, false);
                break;
            case 3:
                if (StateMachine.access$12700(this.this$1.this$0) != null) {
                    StateMachine.access$12700(this.this$1.this$0).enableClick();
                }
                StateMachine.access$2600(this.this$1.this$0).finalizeRecording();
                this.this$1.this$0.onVideoRecordingDone();
                StateMachine.access$14800(this.this$1.this$0, StateMachine$5.access$14700(this.this$1));
                if (this.this$1.this$0.getCurrentCapturingMode() == CapturingMode.SLOW_MOTION) {
                    ResearchUtil.getInstance().sendSlowMotionEvent(this.this$1.this$0.getUserSetting().get(UserSettingKey.SLOW_MOTION).getValue(), StateMachine.access$11600(this.this$1.this$0));
                }
                break;
            case 4:
                this.this$1.this$0.sendEvent(StateMachine$TransitterEvent.EVENT_ON_RECORDING_ERROR, new Object[0]);
                StateMachine.access$2600(this.this$1.this$0).releaseVideo();
                break;
        }
    }
}
