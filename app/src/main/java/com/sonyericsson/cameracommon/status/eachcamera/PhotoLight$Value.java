package com.sonyericsson.cameracommon.status.eachcamera;

/* JADX INFO: loaded from: classes.dex */
public enum PhotoLight$Value {
    ON("on"),
    OFF("off");

    private final String mStringExpression;

    PhotoLight$Value(String str) {
        this.mStringExpression = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.mStringExpression;
    }
}
