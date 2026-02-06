package com.sonyericsson.android.camera.research;

import com.sonymobile.cameracommon.research.parameters.ShootingLabel;
import com.sonymobile.cameracommon.research.parameters.ShootingLabel$Parameter;

final class LocalResearchUtil$ObjectTrackingValues {
    private String mTarget;

    private LocalResearchUtil$ObjectTrackingValues() {
        this.mTarget = "OFF";
    }

    /* synthetic */ LocalResearchUtil$ObjectTrackingValues(LocalResearchUtil$1 localResearchUtil$1) {
        this();
    }

    public void setObjectTrackingTarget(boolean z) {
        if (z) {
            this.mTarget = "ON";
        } else {
            this.mTarget = "OFF";
        }
    }

    public ShootingLabel$Parameter getParameter(String str) {
        if ("OFF".equals(str)) {
            return ShootingLabel.getObjectTrackingParameter("OFF_OFF");
        }
        return ShootingLabel.getObjectTrackingParameter(str + "_" + this.mTarget);
    }
}
