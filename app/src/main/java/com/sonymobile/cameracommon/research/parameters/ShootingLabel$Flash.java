package com.sonymobile.cameracommon.research.parameters;

/* JADX INFO: loaded from: classes.dex */
enum ShootingLabel$Flash implements ShootingLabel$StringParameter {
    AUTO("AUTO"),
    ON("ON"),
    RED_EYE("RED_EYE"),
    OFF("OFF"),
    LED_ON("LED_ON"),
    LED_OFF("LED_OFF");

    private String mValue;

    ShootingLabel$Flash(String str) {
        this.mValue = str;
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$StringParameter
    public boolean equals(String str) {
        return this.mValue.equals(str);
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$StringParameter
    public ShootingLabel$Parameter getDefaultValue() {
        return OFF;
    }
}
