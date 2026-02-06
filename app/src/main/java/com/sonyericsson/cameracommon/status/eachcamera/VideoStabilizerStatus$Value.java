package com.sonyericsson.cameracommon.status.eachcamera;

public enum VideoStabilizerStatus$Value {
    ON("on"),
    OFF("off"),
    INTELLIGENT_ACTIVE("intelligent_active");

    private final String mStringExpression;

    VideoStabilizerStatus$Value(String str) {
        this.mStringExpression = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.mStringExpression;
    }
}
