package com.sonymobile.cameracommon.research.parameters;

enum ShootingLabel$FrontAngleValue implements ShootingLabel$StringParameter {
    DEFAULT("DEFAULT"),
    CROPPED("CROPPED"),
    INVALID("INVALID");

    private String mValue;

    ShootingLabel$FrontAngleValue(String str) {
        this.mValue = str;
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$StringParameter
    public boolean equals(String str) {
        return this.mValue.equals(str);
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$StringParameter
    public ShootingLabel$Parameter getDefaultValue() {
        return DEFAULT;
    }
}
