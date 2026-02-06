package com.sonyericsson.cameracommon.status.eachcamera;

public enum ArtFilter$Value {
    SINGLE("single"),
    MULTI("multi"),
    OFF("off");

    private final String mStringExpression;

    ArtFilter$Value(String str) {
        this.mStringExpression = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.mStringExpression;
    }
}
