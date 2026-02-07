package com.sonyericsson.android.camera.device;

/* JADX INFO: loaded from: classes.dex */
public enum CameraInfo$CameraId {
    BACK("0", 0),
    FRONT("1", 1);

    private final String mCameraDeviceId;
    private final int mCameraDeviceIdApi1;

    CameraInfo$CameraId(String str, int i) {
        this.mCameraDeviceId = str;
        this.mCameraDeviceIdApi1 = i;
    }

    public String getCameraDeviceId() {
        return this.mCameraDeviceId;
    }

    public int getCameraDeviceIdApi1() {
        return this.mCameraDeviceIdApi1;
    }
}
