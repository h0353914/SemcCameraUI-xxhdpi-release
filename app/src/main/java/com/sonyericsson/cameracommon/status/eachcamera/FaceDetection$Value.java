package com.sonyericsson.cameracommon.status.eachcamera;

public enum FaceDetection$Value {
    ON("on"),
    OFF("off");

    private final String mStringExpression;

    FaceDetection$Value(String str) {
        this.mStringExpression = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.mStringExpression;
    }
}
