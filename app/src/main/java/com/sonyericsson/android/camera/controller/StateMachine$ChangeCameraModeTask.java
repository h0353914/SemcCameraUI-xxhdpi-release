package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.android.camera.view.animation.AnimationRequest$AnimationType;

class StateMachine$ChangeCameraModeTask implements Runnable {
    private final CapturingMode mRequestMode;
    private final AnimationRequest$AnimationType mTriggerType;
    final /* synthetic */ StateMachine this$0;

    /* synthetic */ StateMachine$ChangeCameraModeTask(StateMachine stateMachine, CapturingMode capturingMode, AnimationRequest$AnimationType animationRequest$AnimationType, StateMachine$1 stateMachine$1) {
        this(stateMachine, capturingMode, animationRequest$AnimationType);
    }

    private StateMachine$ChangeCameraModeTask(StateMachine stateMachine, CapturingMode capturingMode, AnimationRequest$AnimationType animationRequest$AnimationType) {
        this.this$0 = stateMachine;
        this.mRequestMode = capturingMode;
        this.mTriggerType = animationRequest$AnimationType;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke ChangeCameraModeTask");
        }
        if (StateMachine.access$2600(this.this$0) == null || StateMachine.access$1200(this.this$0) == null) {
            return;
        }
        StateMachine.access$2600(this.this$0).releaseRecorder();
        StateMachine.access$2600(this.this$0).stopFaceDetection();
        StateMachine.access$2600(this.this$0).stopPreviewSynchronized();
        StateMachine.access$1200(this.this$0).hideSurface();
        PerfLog.MODE_CHANGE_TASK_START.transit();
        StateMachine.access$1800(this.this$0).applyCapturingMode();
        StateMachine.access$1400(this.this$0);
        StateMachine.access$2700(this.this$0, (CapturingMode) StateMachine.access$1800(this.this$0).get(UserSettingKey.CAPTURING_MODE), false);
        StateMachine.access$1200(this.this$0).showSurface();
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_CAPTURING_MODE_CHANGED, this.mRequestMode, true, this.mTriggerType);
        if (StateMachine.access$5300(this.this$0)) {
            StateMachine.access$2600(this.this$0).startFusionMonitoring();
        }
        PerfLog.MODE_CHANGE_TASK_END.transit();
    }
}
