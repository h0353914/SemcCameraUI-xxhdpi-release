package com.sonyericsson.android.camera;

import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.systemmonitor.BatteryChangedReceiver$BatteryChangedReceiverListener;
import com.sonymobile.cameracommon.research.ResearchUtil;

class CameraActivity$4 implements BatteryChangedReceiver$BatteryChangedReceiverListener {
    final /* synthetic */ CameraActivity this$0;

    CameraActivity$4(CameraActivity cameraActivity) {
        this.this$0 = cameraActivity;
    }

    @Override // com.sonyericsson.cameracommon.systemmonitor.BatteryChangedReceiver$BatteryChangedReceiverListener
    public void onReachLowBattery() {
        this.this$0.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_ON_REACH_BATTERY_LOW, new Object[0]);
    }

    @Override // com.sonyericsson.cameracommon.systemmonitor.BatteryChangedReceiver$BatteryChangedReceiverListener
    public void onReachBatteryLimit(boolean z) {
        ResearchUtil.getInstance().sendLowBatteryEvent(z, CameraActivity.access$500(this.this$0));
        if (this.this$0.mStateMachine != null) {
            this.this$0.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_ON_REACH_BATTERY_LIMIT, new Object[0]);
        }
        CameraActivity.access$600(this.this$0);
    }

    @Override // com.sonyericsson.cameracommon.systemmonitor.BatteryChangedReceiver$BatteryChangedReceiverListener
    public void onBatteryLevelChanged(int i) {
        if (CamLog.VERBOSE) {
            CamLog.d("onBatteryLevelChanged : " + i);
        }
        this.this$0.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_ON_BATTERY_LEVEL_CHANGED, Integer.valueOf(i));
    }
}
