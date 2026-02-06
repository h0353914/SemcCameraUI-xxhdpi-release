package com.sonyericsson.cameracommon.status.eachcamera;

public enum SceneRecognition$Value {
    ON("on"),
    OFF("off");

    private final String mStringExpression;

    SceneRecognition$Value(String str) {
        this.mStringExpression = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.mStringExpression;
    }
}
