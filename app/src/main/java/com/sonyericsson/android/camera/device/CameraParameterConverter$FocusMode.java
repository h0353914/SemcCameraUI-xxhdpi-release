package com.sonyericsson.android.camera.device;

/* JADX INFO: loaded from: classes.dex */
enum CameraParameterConverter$FocusMode {
    AUTO("auto", 1),
    INFINITY("infinity", 0),
    FIXED("fixed", 0),
    CONTINUOUS_VIDEO("continuous-video", 3),
    CONTINUOUS_PICTURE("continuous-picture", 4),
    MANUAL("manual", 0);

    private String mApi1Value;
    private int mApi2Value;

    CameraParameterConverter$FocusMode(String str, int i) {
        this.mApi1Value = str;
        this.mApi2Value = i;
    }

    static int getApi2Value(String str) {
        for (CameraParameterConverter$FocusMode cameraParameterConverter$FocusMode : values()) {
            if (cameraParameterConverter$FocusMode.mApi1Value.equals(str)) {
                return cameraParameterConverter$FocusMode.mApi2Value;
            }
        }
        return 1;
    }
}
