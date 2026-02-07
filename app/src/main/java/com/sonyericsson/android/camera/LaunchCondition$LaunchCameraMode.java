package com.sonyericsson.android.camera;

/* JADX INFO: loaded from: classes.dex */
public enum LaunchCondition$LaunchCameraMode {
    NONE,
    FOUR_K_HDR,
    SLOW_MOTION,
    SUPER_SLOW_MOTION;

    public boolean isLaunchedByGoogleAssistant() {
        return this != NONE;
    }

    public boolean isSlowMotion() {
        return this == SLOW_MOTION || this == SUPER_SLOW_MOTION;
    }
}
