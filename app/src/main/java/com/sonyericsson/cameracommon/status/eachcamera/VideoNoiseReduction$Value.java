package com.sonyericsson.cameracommon.status.eachcamera;

public enum VideoNoiseReduction$Value {
    ON("on"),
    OFF("off");

    private final String mStringExpression;

    VideoNoiseReduction$Value(String str) {
        this.mStringExpression = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.mStringExpression;
    }
}
