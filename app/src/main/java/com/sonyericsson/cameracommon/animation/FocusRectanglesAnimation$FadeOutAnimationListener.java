package com.sonyericsson.cameracommon.animation;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation$AnimationListener;

/* JADX INFO: loaded from: classes.dex */
class FocusRectanglesAnimation$FadeOutAnimationListener implements Animation$AnimationListener {
    final /* synthetic */ FocusRectanglesAnimation this$0;

    @Override // android.view.animation.Animation$AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation$AnimationListener
    public void onAnimationStart(Animation animation) {
    }

    private FocusRectanglesAnimation$FadeOutAnimationListener(FocusRectanglesAnimation focusRectanglesAnimation) {
        this.this$0 = focusRectanglesAnimation;
    }

    /* synthetic */ FocusRectanglesAnimation$FadeOutAnimationListener(FocusRectanglesAnimation focusRectanglesAnimation, FocusRectanglesAnimation$1 focusRectanglesAnimation$1) {
        this(focusRectanglesAnimation);
    }

    @Override // android.view.animation.Animation$AnimationListener
    public void onAnimationEnd(Animation animation) {
        View view = (View) FocusRectanglesAnimation.access$200(this.this$0).get(animation);
        if (view != null) {
            view.setVisibility(4);
        }
        FocusRectanglesAnimation.access$200(this.this$0).remove(animation);
    }
}
