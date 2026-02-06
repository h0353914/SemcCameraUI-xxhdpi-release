package com.sonyericsson.cameracommon.status.eachcamera;

public enum ObjectTracking$Value {
    ON("on"),
    OFF("off");

    private final String mStringExpression;

    ObjectTracking$Value(String str) {
        this.mStringExpression = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.mStringExpression;
    }
}
