package com.sonyericsson.android.camera;

import com.sonymobile.cameracommon.research.parameters.Event$AutoPowerOffAction;

enum CameraActivity$AutoPowerOffType {
    DEFAULT(180000, "DEFAULT", Event$AutoPowerOffAction.DEFAULT),
    ON_LOCKSCREEN(30000, "ON_LOCKSCREEN", Event$AutoPowerOffAction.ON_LOCKSCREEN),
    LIFT_TRIGGER(5000, "LIFT_TRIGGER", Event$AutoPowerOffAction.LIFT_TRIGGER),
    LIFT_TRIGGER_DIALOG(15000, "LIFT_TRIGGER_DIALOG", Event$AutoPowerOffAction.LIFT_TRIGGER_DIALOG);

    private final Event$AutoPowerOffAction mAction;
    private final int mDuration;
    private final String mReason;

    CameraActivity$AutoPowerOffType(int i, String str, Event$AutoPowerOffAction event$AutoPowerOffAction) {
        this.mDuration = i;
        this.mReason = str;
        this.mAction = event$AutoPowerOffAction;
    }

    public int getDuration() {
        return this.mDuration;
    }

    public String getReason() {
        return this.mReason;
    }

    public Event$AutoPowerOffAction getAction() {
        return this.mAction;
    }
}
