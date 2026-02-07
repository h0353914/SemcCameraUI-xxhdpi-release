package com.sonyericsson.android.camera.device;

/* JADX INFO: loaded from: classes.dex */
enum CameraParameterConverter$MeteringMode {
    CENTER("center-weighted", 0),
    FACE("face", 4),
    AVERAGE("frame-average", 1),
    MULTI("multi", 3),
    SPOT("spot", 2),
    USER("user", 5);

    private String mApi1Value;
    private int mApi2Value;

    CameraParameterConverter$MeteringMode(String str, int i) {
        this.mApi1Value = str;
        this.mApi2Value = i;
    }

    static int getApi2Value(String str) {
        for (CameraParameterConverter$MeteringMode cameraParameterConverter$MeteringMode : values()) {
            if (cameraParameterConverter$MeteringMode.mApi1Value.equals(str)) {
                return cameraParameterConverter$MeteringMode.mApi2Value;
            }
        }
        return 0;
    }
}
