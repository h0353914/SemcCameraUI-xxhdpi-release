package com.sonyericsson.android.camera.view;

/* JADX INFO: loaded from: classes.dex */
enum GestureShutterView$AnimationState {
    IDLE(0),
    PROCEEDING(1),
    REWINDING(-1);

    final int sign;

    GestureShutterView$AnimationState(int i) {
        this.sign = i;
    }
}
