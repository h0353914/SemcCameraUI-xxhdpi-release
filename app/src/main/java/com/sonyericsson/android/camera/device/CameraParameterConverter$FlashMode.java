package com.sonyericsson.android.camera.device;

class CameraParameterConverter$FlashMode {
    CameraParameterConverter$FlashMode() {
    }

    static int getApi2Value(String str) {
        return str.equals("torch") ? 2 : 0;
    }
}
