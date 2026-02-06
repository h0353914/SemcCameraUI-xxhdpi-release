package com.sonymobile.cameracommon.research.parameters;

enum ShootingLabel$ObjectTracking implements ShootingLabel$StringParameter {
    OBJECT_TRACKING_OFF("OFF_OFF"),
    OBJECT_TRACKING_AUTO_TARGET_OFF("ON_OFF"),
    OBJECT_TRACKING_AUTO_TARGET_ON("ON_ON");

    private String mValue;

    ShootingLabel$ObjectTracking(String str) {
        this.mValue = str;
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$StringParameter
    public boolean equals(String str) {
        return this.mValue.equals(str);
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$StringParameter
    public ShootingLabel$Parameter getDefaultValue() {
        return OBJECT_TRACKING_AUTO_TARGET_OFF;
    }
}
