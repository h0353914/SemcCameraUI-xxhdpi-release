package com.sonyericsson.android.camera.device;

enum CameraParameterConverter$FocusArea {
    CENTER("center", 0),
    FACE("face", 2),
    MULTI("multi", 1),
    USER("user", 3);

    private String mApi1Value;
    private int mApi2Value;

    CameraParameterConverter$FocusArea(String str, int i) {
        this.mApi1Value = str;
        this.mApi2Value = i;
    }

    static int getApi2Value(String str) {
        for (CameraParameterConverter$FocusArea cameraParameterConverter$FocusArea : values()) {
            if (cameraParameterConverter$FocusArea.mApi1Value.equals(str)) {
                return cameraParameterConverter$FocusArea.mApi2Value;
            }
        }
        return 0;
    }
}
