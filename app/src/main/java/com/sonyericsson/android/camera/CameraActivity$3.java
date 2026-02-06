package com.sonyericsson.android.camera;

import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.cameracommon.systemmonitor.ThermalAlertReceiver$ThermalAlertReceiverListener;
import com.sonymobile.cameracommon.research.ResearchUtil;
import com.sonymobile.cameracommon.research.parameters.Event$CoolMode;

class CameraActivity$3 implements ThermalAlertReceiver$ThermalAlertReceiverListener {
    final /* synthetic */ CameraActivity this$0;

    CameraActivity$3(CameraActivity cameraActivity) {
        this.this$0 = cameraActivity;
    }

    @Override // com.sonyericsson.cameracommon.systemmonitor.ThermalAlertReceiver$ThermalAlertReceiverListener
    public void onReachCriticalTemperature(boolean z) {
        LocalResearchUtil.getInstance().setMeasurementThermal(true);
        if (this.this$0.mStateMachine != null) {
            ResearchUtil.getInstance().sendThermalEvent(z, CameraActivity.access$500(this.this$0));
            this.this$0.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_ON_HEATED_OVER_CRITICAL, Boolean.valueOf(z));
        }
        CameraActivity.access$600(this.this$0);
    }

    @Override // com.sonyericsson.cameracommon.systemmonitor.ThermalAlertReceiver$ThermalAlertReceiverListener
    public void onNotifyThermalNormal() {
        LocalResearchUtil.getInstance().setMeasurementThermal(false);
        if (this.this$0.mStateMachine != null) {
            this.this$0.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_ON_HEATED_OVER_NORMAL, new Object[0]);
        }
    }

    @Override // com.sonyericsson.cameracommon.systemmonitor.ThermalAlertReceiver$ThermalAlertReceiverListener
    public void onNotifyThermalWarning(boolean z) {
        LocalResearchUtil.getInstance().setMeasurementThermal(true);
        if (this.this$0.mStateMachine != null) {
            this.this$0.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_ON_HEATED_OVER_WARNING, new Object[0]);
            if (z) {
                ResearchUtil.getInstance().sendCoolModeEvent(Event$CoolMode.HEATED_OVER_COOLING_ULTRA_LOW_ON_STARTUP, CameraActivity.access$500(this.this$0));
            } else {
                ResearchUtil.getInstance().sendCoolModeEvent(Event$CoolMode.HEATED_OVER_COOLING_ULTRA_LOW, CameraActivity.access$500(this.this$0));
            }
            if (CameraActivity.access$700(this.this$0) == null || !PlatformCapability.isPowerSavingSupported(this.this$0.mStateMachine.getCurrentCameraId())) {
                return;
            }
            this.this$0.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_ON_HEATED_OVER_COOLING_ULTRA_LOW, new Object[0]);
        }
    }

    @Override // com.sonyericsson.cameracommon.systemmonitor.ThermalAlertReceiver$ThermalAlertReceiverListener
    public void onNotifyThermalWarningExtra(boolean z) {
        LocalResearchUtil.getInstance().setMeasurementThermal(true);
        if (this.this$0.mStateMachine != null) {
            if (!this.this$0.isThermalWarningReceived()) {
                if (z) {
                    ResearchUtil.getInstance().sendCoolModeEvent(Event$CoolMode.HEATED_OVER_COOLING_LOW_ON_STARTUP, CameraActivity.access$500(this.this$0));
                } else {
                    ResearchUtil.getInstance().sendCoolModeEvent(Event$CoolMode.HEATED_OVER_COOLING_LOW, CameraActivity.access$500(this.this$0));
                }
            }
            if (CameraActivity.access$700(this.this$0) != null && PlatformCapability.isPowerSavingSupported(this.this$0.mStateMachine.getCurrentCameraId())) {
                if (this.this$0.isThermalWarningReceived()) {
                    return;
                }
                this.this$0.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_ON_HEATED_OVER_COOLING_LOW, new Object[0]);
                return;
            }
            this.this$0.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_ON_HEATED_OVER_WARNING_EXTRA, new Object[0]);
        }
    }
}
