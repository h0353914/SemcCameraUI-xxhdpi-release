package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.view.animation.TransitionAnimationController$TransitionAnimationCallback;

class ViewFinderImpl$19$1 implements TransitionAnimationController$TransitionAnimationCallback {
    final /* synthetic */ ViewFinderImpl$19 this$1;

    ViewFinderImpl$19$1(ViewFinderImpl$19 viewFinderImpl$19) {
        this.this$1 = viewFinderImpl$19;
    }

    @Override // com.sonyericsson.android.camera.view.animation.TransitionAnimationController$TransitionAnimationCallback
    public void onAnimationFinished() {
        ViewFinderImpl.access$4900(this.this$1.this$0);
        ViewFinderImpl.access$4300(this.this$1.this$0, false);
    }
}
