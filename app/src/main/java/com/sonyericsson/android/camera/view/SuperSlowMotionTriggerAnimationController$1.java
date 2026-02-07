package com.sonyericsson.android.camera.view;

import android.view.animation.Animation;
import android.view.animation.Animation$AnimationListener;

/* JADX INFO: loaded from: classes.dex */
class SuperSlowMotionTriggerAnimationController$1 implements Animation$AnimationListener {
    final /* synthetic */ SuperSlowMotionTriggerAnimationController this$0;

    @Override // android.view.animation.Animation$AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation$AnimationListener
    public void onAnimationStart(Animation animation) {
    }

    SuperSlowMotionTriggerAnimationController$1(SuperSlowMotionTriggerAnimationController superSlowMotionTriggerAnimationController) {
        this.this$0 = superSlowMotionTriggerAnimationController;
    }

    @Override // android.view.animation.Animation$AnimationListener
    public void onAnimationEnd(Animation animation) {
        if (SuperSlowMotionTriggerAnimationController.access$000(this.this$0) != null) {
            SuperSlowMotionTriggerAnimationController.access$000(this.this$0).onAnimationEnd();
        }
        SuperSlowMotionTriggerAnimationController.access$100(this.this$0).setVisibility(8);
        SuperSlowMotionTriggerAnimationController.access$200(this.this$0).setVisibility(8);
        SuperSlowMotionTriggerAnimationController.access$300(this.this$0).setVisibility(8);
    }
}
