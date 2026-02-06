package com.sonyericsson.cameracommon.capturefeedback.animation;

import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.Locale;

class CaptureFeedbackAnimationFactory$DefaultFeedbackAnimation implements CaptureFeedbackAnimation {
    private static final float BLUE = 0.0f;
    private static final float CONTROL_X1 = 0.95f;
    private static final float CONTROL_X2 = 0.795f;
    private static final float CONTROL_Y1 = 0.05f;
    private static final float CONTROL_Y2 = 0.035f;
    private static final long DURATION_MILLIS = 200;
    private static final float END_ALPHA = 0.0f;
    private static final float GREEN = 0.0f;
    private static final float RED = 0.0f;
    private static final float START_ALPHA = 1.0f;
    private final Interpolator mInterpolator;

    private CaptureFeedbackAnimationFactory$DefaultFeedbackAnimation() {
        this.mInterpolator = new PathInterpolator(0.95f, 0.05f, 0.795f, 0.035f);
    }

    /* synthetic */ CaptureFeedbackAnimationFactory$DefaultFeedbackAnimation(CaptureFeedbackAnimationFactory$1 captureFeedbackAnimationFactory$1) {
        this();
    }

    @Override // com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimation
    public boolean draw(CaptureFeedbackAnimationCanvas captureFeedbackAnimationCanvas, long j) {
        float f = j / 200.0f;
        float fMin = 1.0f + ((-1.0f) * Math.min(1.0f, this.mInterpolator.getInterpolation(f)));
        if (CamLog.VERBOSE) {
            CamLog.d(String.format(Locale.UK, "time:%d progress:%f alpha:%f", Long.valueOf(j), Float.valueOf(f), Float.valueOf(fMin)));
        }
        if (f > 1.0d) {
            return false;
        }
        captureFeedbackAnimationCanvas.drawColor(fMin, 0.0f, 0.0f, 0.0f);
        return true;
    }
}
