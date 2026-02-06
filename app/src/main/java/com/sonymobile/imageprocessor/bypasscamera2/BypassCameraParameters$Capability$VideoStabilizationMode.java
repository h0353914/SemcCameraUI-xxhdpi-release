package com.sonymobile.imageprocessor.bypasscamera2;

public enum BypassCameraParameters$Capability$VideoStabilizationMode {
    OFF(0, "off"),
    STEADY_SHOT(1, "on"),
    INTELLIGENT_ACTIVE(2, "intelligent_active");

    public final int code;
    public final String value;

    BypassCameraParameters$Capability$VideoStabilizationMode(int i, String str) {
        this.code = i;
        this.value = str;
    }
}
