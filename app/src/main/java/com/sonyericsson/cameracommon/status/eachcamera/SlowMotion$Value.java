package com.sonyericsson.cameracommon.status.eachcamera;

/* JADX INFO: loaded from: classes.dex */
public enum SlowMotion$Value {
    ON("on"),
    OFF("off");

    private final String mStringExpression;

    SlowMotion$Value(String str) {
        this.mStringExpression = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.mStringExpression;
    }
}
