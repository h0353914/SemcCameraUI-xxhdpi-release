package com.sonymobile.cameracommon.research.parameters;

/* JADX INFO: loaded from: classes.dex */
enum ShootingLabel$AfDoneKeepingTime implements ShootingLabel$StringParameter {
    WITHIN_10_MS("WITHIN_10_MS"),
    WITHIN_50_MS("WITHIN_50_MS"),
    WITHIN_100_MS("WITHIN_100_MS"),
    WITHIN_200_MS("WITHIN_200_MS"),
    WITHIN_500_MS("WITHIN_500_MS"),
    WITHIN_1000_MS("WITHIN_1000_MS"),
    WITHIN_1500_MS("WITHIN_1500_MS"),
    WITHIN_2000_MS("WITHIN_2000_MS"),
    OVER_2000_MS("OVER_2000_MS"),
    CONTINUOUS_CAPTURE("CONTINUOUS_CAPTURE");

    private String mValue;

    ShootingLabel$AfDoneKeepingTime(String str) {
        this.mValue = str;
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$StringParameter
    public boolean equals(String str) {
        return this.mValue.equals(str);
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$StringParameter
    public ShootingLabel$Parameter getDefaultValue() {
        return WITHIN_10_MS;
    }
}
