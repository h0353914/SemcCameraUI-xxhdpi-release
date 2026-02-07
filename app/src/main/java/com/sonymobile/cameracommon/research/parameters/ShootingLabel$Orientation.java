package com.sonymobile.cameracommon.research.parameters;

/* JADX INFO: loaded from: classes.dex */
enum ShootingLabel$Orientation implements ShootingLabel$IntParameter {
    ORIENTATION_0(0),
    ORIENTATION_90(90),
    ORIENTATION_180(180),
    ORIENTATION_270(270);

    private int mValue;

    ShootingLabel$Orientation(int i) {
        this.mValue = i;
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$IntParameter
    public boolean equals(int i) {
        return this.mValue == i;
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$IntParameter
    public ShootingLabel$Parameter getDefaultValue() {
        return ORIENTATION_0;
    }
}
