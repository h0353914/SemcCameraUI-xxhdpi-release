package com.sonymobile.cameracommon.research.parameters;

/* JADX INFO: loaded from: classes.dex */
enum ShootingLabel$FaceNum implements ShootingLabel$IntParameter {
    FACE_NUM_0(0),
    FACE_NUM_1(1),
    FACE_NUM_2(2),
    FACE_NUM_3(3),
    FACE_NUM_4(4),
    FACE_NUM_5(5);

    private int mValue;

    ShootingLabel$FaceNum(int i) {
        this.mValue = i;
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$IntParameter
    public boolean equals(int i) {
        return this.mValue == i;
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$IntParameter
    public ShootingLabel$Parameter getDefaultValue() {
        return FACE_NUM_0;
    }
}
