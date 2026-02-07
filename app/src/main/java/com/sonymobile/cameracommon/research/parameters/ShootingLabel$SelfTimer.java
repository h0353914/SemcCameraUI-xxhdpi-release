package com.sonymobile.cameracommon.research.parameters;

/* JADX INFO: loaded from: classes.dex */
enum ShootingLabel$SelfTimer implements ShootingLabel$StringParameter {
    LONG("LONG"),
    SHORT("SHORT"),
    INSTANT("INSTANT"),
    OFF("OFF");

    private String mValue;

    ShootingLabel$SelfTimer(String str) {
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
