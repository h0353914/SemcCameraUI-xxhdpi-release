package com.sonyericsson.android.camera.view;

enum GestureShutterView$AnimationState {
    IDLE(0),
    PROCEEDING(1),
    REWINDING(-1);

    final int sign;

    GestureShutterView$AnimationState(int i) {
        this.sign = i;
    }
}
