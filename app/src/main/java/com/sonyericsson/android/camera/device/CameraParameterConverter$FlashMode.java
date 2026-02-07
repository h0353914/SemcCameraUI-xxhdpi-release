package com.sonyericsson.android.camera.device;

/* JADX INFO: loaded from: classes.dex */
class CameraParameterConverter$FlashMode {
    CameraParameterConverter$FlashMode() {
    }

    static int getApi2Value(String str) {
        return str.equals("torch") ? 2 : 0;
    }
}
