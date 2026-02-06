package com.sonyericsson.android.camera.controller.selftimerfeedback;

public interface SelfTimerFeedback$SelfTimerFeedbackListener {
    void onBlinkFinished();

    void onCountDownFinished();

    void onSoundTypeChange(long j);
}
