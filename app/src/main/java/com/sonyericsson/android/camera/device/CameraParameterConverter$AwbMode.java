package com.sonyericsson.android.camera.device;

/* JADX INFO: loaded from: classes.dex */
public enum CameraParameterConverter$AwbMode {
    OFF("off", 0),
    AUTO("auto", 1),
    INCANDESCENT("incandescent", 2),
    FLUORESCENT("fluorescent", 3),
    DAYLIGHT("daylight", 5),
    CLOUDY_DAYLIGHT("cloudy-daylight", 6);

    private String mAwbModeApi1;
    private int mAwbModeApi2;

    CameraParameterConverter$AwbMode(String str, int i) {
        this.mAwbModeApi1 = str;
        this.mAwbModeApi2 = i;
    }

    public static String getApi1Value(int i) {
        for (CameraParameterConverter$AwbMode cameraParameterConverter$AwbMode : values()) {
            if (cameraParameterConverter$AwbMode.mAwbModeApi2 == i) {
                return cameraParameterConverter$AwbMode.mAwbModeApi1;
            }
        }
        return null;
    }

    public static int getApi2Value(String str) {
        for (CameraParameterConverter$AwbMode cameraParameterConverter$AwbMode : values()) {
            if (cameraParameterConverter$AwbMode.mAwbModeApi1.equals(str)) {
                return cameraParameterConverter$AwbMode.mAwbModeApi2;
            }
        }
        return 0;
    }
}
