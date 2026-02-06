package com.sonyericsson.android.camera.view;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import com.sonyericsson.cameracommon.utility.RotationUtil;

public class BurstCountView extends TextView {
    private final ObjectAnimator mFadeOutAnimator;

    public BurstCountView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mFadeOutAnimator = ObjectAnimator.ofFloat(this, "alpha", 1.0f, 0.0f);
        this.mFadeOutAnimator.setDuration(1000L);
        this.mFadeOutAnimator.addListener(new BurstCountView$1(this));
    }

    public void update(int i) {
        setText(Integer.toString(i));
        if (this.mFadeOutAnimator.isRunning()) {
            this.mFadeOutAnimator.cancel();
        }
        if (getVisibility() != 0) {
            setAlpha(1.0f);
            setVisibility(0);
        }
    }

    public void hide() {
        if (getVisibility() != 0 || this.mFadeOutAnimator.isRunning()) {
            return;
        }
        this.mFadeOutAnimator.start();
    }

    public void setUiOrientation(int i) {
        setRotation(RotationUtil.getAngle(i));
    }
}
