package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.view.animation.AnimationRequest;
import com.sonyericsson.android.camera.view.animation.TransitionAnimationController$TransitionAnimationCallback;

class ViewFinderImpl$12 implements TransitionAnimationController$TransitionAnimationCallback {
    final /* synthetic */ ViewFinderImpl this$0;
    final /* synthetic */ AnimationRequest val$request;

    ViewFinderImpl$12(ViewFinderImpl viewFinderImpl, AnimationRequest animationRequest) {
        this.this$0 = viewFinderImpl;
        this.val$request = animationRequest;
    }

    @Override // com.sonyericsson.android.camera.view.animation.TransitionAnimationController$TransitionAnimationCallback
    public void onAnimationFinished() {
        ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_FINISH_TRANSITION_OPERATION, this.val$request);
    }
}
