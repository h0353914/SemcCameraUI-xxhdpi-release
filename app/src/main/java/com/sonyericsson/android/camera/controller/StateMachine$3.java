package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.CameraActivity$LayoutOrientation;
import com.sonyericsson.android.camera.CameraActivity$LayoutOrientationChangedListener;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonymobile.cameracommon.research.parameters.Event$SelfTimerTrigger;

class StateMachine$3 implements GestureShutter$ControllerHost {
    final /* synthetic */ StateMachine this$0;

    StateMachine$3(StateMachine stateMachine) {
        this.this$0 = stateMachine;
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$ControllerHost
    public void prepareGestureShutterCountDown() {
        StateMachine.access$1200(this.this$0).prepareGestureShutterCountDown();
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$ControllerHost
    public void startGestureShutterCountDown() {
        if (StateMachine.access$1200(this.this$0).isMessageDialogOpened() || StateMachine.access$1200(this.this$0).isSwitchingAnimationProgress() || StateMachine.access$2000(this.this$0) || !StateMachine.access$1000(this.this$0, StateMachine.access$400(this.this$0))) {
            return;
        }
        this.this$0.sendEvent(StateMachine$TransitterEvent.EVENT_START_CAPTURE_COUNTDOWN, Event$SelfTimerTrigger.GESTURE);
        StateMachine.access$500(this.this$0).restartAutoPowerOffTimer();
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$ControllerHost
    public void resetGestureShutterCountDown() {
        StateMachine.access$2100(this.this$0, (SelfTimer) StateMachine.access$1800(this.this$0).get(UserSettingKey.SELF_TIMER));
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$ControllerHost
    public void removeOrientationListener(CameraActivity$LayoutOrientationChangedListener cameraActivity$LayoutOrientationChangedListener) {
        StateMachine.access$500(this.this$0).removeOrienationListener(cameraActivity$LayoutOrientationChangedListener);
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$ControllerHost
    public CameraActivity$LayoutOrientation getLayoutOrientation() {
        return StateMachine.access$500(this.this$0).getLastDetectedOrientation();
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$ControllerHost
    public void addOrientationListener(CameraActivity$LayoutOrientationChangedListener cameraActivity$LayoutOrientationChangedListener) {
        StateMachine.access$500(this.this$0).addOrienationListener(cameraActivity$LayoutOrientationChangedListener);
    }
}
