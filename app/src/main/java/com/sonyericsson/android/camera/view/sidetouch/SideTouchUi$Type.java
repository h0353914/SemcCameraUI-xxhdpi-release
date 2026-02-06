package com.sonyericsson.android.camera.view.sidetouch;

public enum SideTouchUi$Type {
    NONE(-1),
    CAPTURE_COUNTDOWN(0),
    VIDEO_COUNTDOWN(0),
    SELF_TIMER_COUNTDOWN_CANCEL(0),
    AUTO_REVIEW(0),
    RECORDING(0),
    RECORDING_HDR(0),
    RECORDING_PAUSE(0),
    RECORDING_HDR_PAUSE(0),
    ZOOM_BAR(1),
    COVERING(9);

    final int layer;

    SideTouchUi$Type(int i) {
        this.layer = i;
    }
}
