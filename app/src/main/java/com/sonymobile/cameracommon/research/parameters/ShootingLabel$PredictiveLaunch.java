package com.sonymobile.cameracommon.research.parameters;

/* JADX INFO: loaded from: classes.dex */
enum ShootingLabel$PredictiveLaunch implements ShootingLabel$StringParameter {
    True("True"),
    False("False");

    private String mValue;

    ShootingLabel$PredictiveLaunch(String str) {
        this.mValue = str;
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$StringParameter
    public boolean equals(String str) {
        return this.mValue.equals(str);
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$StringParameter
    public ShootingLabel$Parameter getDefaultValue() {
        return False;
    }
}
