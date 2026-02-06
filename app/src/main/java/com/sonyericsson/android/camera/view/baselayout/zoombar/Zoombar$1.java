package com.sonyericsson.android.camera.view.baselayout.zoombar;

import android.animation.Animator;
import android.animation.Animator$AnimatorListener;

class Zoombar$1 implements Animator$AnimatorListener {
    final /* synthetic */ Zoombar this$0;

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
    }

    Zoombar$1(Zoombar zoombar) {
        this.this$0 = zoombar;
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationCancel(Animator animator) {
        if (Zoombar.access$000(this.this$0) != null) {
            Zoombar.access$000(this.this$0).onZoombarHidden();
        }
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (Zoombar.access$000(this.this$0) != null) {
            Zoombar.access$000(this.this$0).onZoombarHidden();
        }
    }
}
