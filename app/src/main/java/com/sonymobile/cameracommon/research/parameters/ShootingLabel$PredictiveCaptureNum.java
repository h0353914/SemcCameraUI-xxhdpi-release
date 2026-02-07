package com.sonymobile.cameracommon.research.parameters;

/* JADX INFO: loaded from: classes.dex */
enum ShootingLabel$PredictiveCaptureNum implements ShootingLabel$IntParameter {
    PREDICTIVE_CAPTURE_OFF(0),
    PREDICTIVE_CAPTURE_NUM_1(1),
    PREDICTIVE_CAPTURE_NUM_2(2),
    PREDICTIVE_CAPTURE_NUM_3(3),
    PREDICTIVE_CAPTURE_NUM_4(4),
    PREDICTIVE_CAPTURE_NUM_5(5),
    PREDICTIVE_CAPTURE_NUM_6(6),
    PREDICTIVE_CAPTURE_NUM_7(7),
    PREDICTIVE_CAPTURE_NUM_8(8);

    private int mValue;

    ShootingLabel$PredictiveCaptureNum(int i) {
        this.mValue = i;
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$IntParameter
    public boolean equals(int i) {
        return this.mValue == i;
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$IntParameter
    public ShootingLabel$Parameter getDefaultValue() {
        return PREDICTIVE_CAPTURE_OFF;
    }
}
