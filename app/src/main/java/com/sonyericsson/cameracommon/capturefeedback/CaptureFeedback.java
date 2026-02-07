package com.sonyericsson.cameracommon.capturefeedback;

import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimation;

/* JADX INFO: loaded from: classes.dex */
public interface CaptureFeedback {
    void onPause();

    void onResume();

    void release();

    void start(CaptureFeedbackAnimation captureFeedbackAnimation);
}
