package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.configuration.parameters.FrontAngle;

class UserEventHandler$AngleActionHandler$3 implements UserEventHandler$VariableUserEventTicker$OnEventTickedListener {
    int mCount = 1;
    final /* synthetic */ UserEventHandler$AngleActionHandler this$1;
    final /* synthetic */ FrontAngle val$newAngle;

    UserEventHandler$AngleActionHandler$3(UserEventHandler$AngleActionHandler userEventHandler$AngleActionHandler, FrontAngle frontAngle) {
        this.this$1 = userEventHandler$AngleActionHandler;
        this.val$newAngle = frontAngle;
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$VariableUserEventTicker$OnEventTickedListener
    public void onTicked(UserEventHandler$VariableUserEventTicker userEventHandler$VariableUserEventTicker) {
        UserEventHandler$AngleActionHandler.access$7000(this.this$1, this.val$newAngle);
        this.mCount--;
        if (this.mCount <= 0) {
            userEventHandler$VariableUserEventTicker.stop();
            UserEventHandler$AngleActionHandler.access$7100(this.this$1);
        }
    }
}
