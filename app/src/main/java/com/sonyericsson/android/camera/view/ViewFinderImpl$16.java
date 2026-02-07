package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.view.animation.AnimationRequest;
import com.sonyericsson.android.camera.view.animation.AnimationRequest$AnimationDegree;
import com.sonyericsson.android.camera.view.animation.AnimationRequest$AnimationType;
import com.sonyericsson.android.camera.view.animation.TransitionAnimationController$TransitionAnimationCallback;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$16 implements TransitionAnimationController$TransitionAnimationCallback {
    final /* synthetic */ ViewFinderImpl this$0;
    final /* synthetic */ AnimationRequest val$request;

    ViewFinderImpl$16(ViewFinderImpl viewFinderImpl, AnimationRequest animationRequest) {
        this.this$0 = viewFinderImpl;
        this.val$request = animationRequest;
    }

    @Override // com.sonyericsson.android.camera.view.animation.TransitionAnimationController$TransitionAnimationCallback
    public void onAnimationFinished() {
        ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_FINISH_TRANSITION_OPERATION, this.val$request);
        if (this.val$request.mFrom.isFront() != this.val$request.mTarget.isFront()) {
            ViewFinderImpl.access$4800(this.this$0).post(new ViewFinderImpl$16$1(this, new AnimationRequest(AnimationRequest$AnimationType.MRU_SHORTCUT, AnimationRequest$AnimationDegree.FINISH, this.val$request.mFrom, this.val$request.mTarget)));
        }
    }
}
