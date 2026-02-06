package com.sonyericsson.android.camera.view.tutorial;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ViewFlipper;

public class TutorialContainerView extends FrameLayout {
    private ViewFlipper mViewFlipper;

    public TutorialContainerView(Context context) {
        super(context);
    }

    public TutorialContainerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public TutorialContainerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mViewFlipper = (ViewFlipper) findViewById(2131296403);
    }

    public ViewFlipper getViewFlipper() {
        return this.mViewFlipper;
    }
}
