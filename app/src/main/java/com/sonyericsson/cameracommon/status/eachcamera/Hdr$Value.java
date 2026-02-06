package com.sonyericsson.cameracommon.status.eachcamera;

public enum Hdr$Value {
    ON("on"),
    OFF("off");

    private final String mStringExpression;

    Hdr$Value(String str) {
        this.mStringExpression = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.mStringExpression;
    }
}
