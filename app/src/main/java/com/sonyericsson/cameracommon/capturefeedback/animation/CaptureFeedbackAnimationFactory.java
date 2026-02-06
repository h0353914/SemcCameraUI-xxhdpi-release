package com.sonyericsson.cameracommon.capturefeedback.animation;

public class CaptureFeedbackAnimationFactory {
    public static final String TAG = "CaptureFeedbackAnimationFactory";

    public static CaptureFeedbackAnimation createDefaultAnimation() {
        return new CaptureFeedbackAnimationFactory$DefaultFeedbackAnimation(null);
    }
}
