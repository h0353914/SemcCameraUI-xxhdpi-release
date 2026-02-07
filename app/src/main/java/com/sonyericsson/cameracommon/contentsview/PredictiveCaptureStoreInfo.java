package com.sonyericsson.cameracommon.contentsview;

/* JADX INFO: loaded from: classes.dex */
public class PredictiveCaptureStoreInfo {
    private final int mCaptureNum;
    private final String mCaptureTime;

    public PredictiveCaptureStoreInfo(int i, String str) {
        this.mCaptureNum = i;
        this.mCaptureTime = str;
    }

    public int getCaptureNum() {
        return this.mCaptureNum;
    }

    public String getCaptureTime() {
        return this.mCaptureTime;
    }
}
