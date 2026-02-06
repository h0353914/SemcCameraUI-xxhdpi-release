package com.sonymobile.cameracommon.research.parameters;

enum ShootingLabel$HandSignLostNum implements ShootingLabel$IntParameter {
    NA(-1, -1),
    ZERO(0, 0),
    ONE(1, 1),
    TWO_TO_FOUR(2, 4),
    FIVE_AND_MORE(5, Integer.MAX_VALUE);

    private final int mMaxNum;
    private final int mMinNum;

    ShootingLabel$HandSignLostNum(int i, int i2) {
        this.mMinNum = i;
        this.mMaxNum = i2;
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$IntParameter
    public boolean equals(int i) {
        return i >= this.mMinNum && i <= this.mMaxNum;
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$IntParameter
    public ShootingLabel$Parameter getDefaultValue() {
        return NA;
    }
}
