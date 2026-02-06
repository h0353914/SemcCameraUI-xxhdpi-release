package com.sonyericsson.android.camera.device;

enum CameraParameterConverter$PowerSaveMode {
    OFF("off", 0),
    LOW("low", 1),
    ULTRA_LOW("ultra-low", 2);

    private String mApi1Value;
    private int mApi2Value;

    CameraParameterConverter$PowerSaveMode(String str, int i) {
        this.mApi1Value = str;
        this.mApi2Value = i;
    }

    static int getApi2Value(String str) {
        for (CameraParameterConverter$PowerSaveMode cameraParameterConverter$PowerSaveMode : values()) {
            if (cameraParameterConverter$PowerSaveMode.mApi1Value.equals(str)) {
                return cameraParameterConverter$PowerSaveMode.mApi2Value;
            }
        }
        return 0;
    }
}
