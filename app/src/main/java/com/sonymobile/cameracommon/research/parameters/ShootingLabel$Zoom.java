package com.sonymobile.cameracommon.research.parameters;

/* JADX INFO: loaded from: classes.dex */
enum ShootingLabel$Zoom implements ShootingLabel$IntParameter {
    ZOOM_0(0),
    ZOOM_1(1),
    ZOOM_2(2),
    ZOOM_3(3),
    ZOOM_4(4),
    ZOOM_5(5),
    ZOOM_6(6),
    ZOOM_7(7),
    ZOOM_8(8);

    private int mValue;

    ShootingLabel$Zoom(int i) {
        this.mValue = i;
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$IntParameter
    public boolean equals(int i) {
        return this.mValue == i;
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$IntParameter
    public ShootingLabel$Parameter getDefaultValue() {
        return ZOOM_0;
    }
}
