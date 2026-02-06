package com.sonymobile.cameracommon.research.parameters;

enum ShootingLabel$SemiAuto implements ShootingLabel$IntParameter {
    ON(0),
    OFF(1);

    private int mValue;

    ShootingLabel$SemiAuto(int i) {
        this.mValue = i;
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$IntParameter
    public boolean equals(int i) {
        return this.mValue == i;
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$IntParameter
    public ShootingLabel$Parameter getDefaultValue() {
        return OFF;
    }
}
