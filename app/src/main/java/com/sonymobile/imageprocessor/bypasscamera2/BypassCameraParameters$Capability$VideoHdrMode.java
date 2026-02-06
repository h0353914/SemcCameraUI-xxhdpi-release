package com.sonymobile.imageprocessor.bypasscamera2;

public enum BypassCameraParameters$Capability$VideoHdrMode {
    OFF(0, "off"),
    ON(1, "on");

    public final int code;
    public final String value;

    BypassCameraParameters$Capability$VideoHdrMode(int i, String str) {
        this.code = i;
        this.value = str;
    }
}
