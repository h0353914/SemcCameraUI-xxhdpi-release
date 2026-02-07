package com.sonyericsson.android.camera.view.animation;

import android.animation.Animator;
import android.animation.Animator$AnimatorListener;
import android.animation.AnimatorSet;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class TransitionAnimationController$TransitionAnimatorListener implements Animator$AnimatorListener {
    private final TransitionAnimationController$TransitionAnimationCallback mCallback;
    private final AnimationRequest mRequest;
    final /* synthetic */ TransitionAnimationController this$0;

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    /* synthetic */ TransitionAnimationController$TransitionAnimatorListener(TransitionAnimationController transitionAnimationController, AnimationRequest animationRequest, TransitionAnimationController$TransitionAnimationCallback transitionAnimationController$TransitionAnimationCallback, TransitionAnimationController$1 transitionAnimationController$1) {
        this(transitionAnimationController, animationRequest, transitionAnimationController$TransitionAnimationCallback);
    }

    private TransitionAnimationController$TransitionAnimatorListener(TransitionAnimationController transitionAnimationController, AnimationRequest animationRequest, TransitionAnimationController$TransitionAnimationCallback transitionAnimationController$TransitionAnimationCallback) {
        this.this$0 = transitionAnimationController;
        this.mRequest = animationRequest;
        this.mCallback = transitionAnimationController$TransitionAnimationCallback;
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
        if (CamLog.DEBUG) {
            CamLog.d("TransitionAnimatorListener.onAnimationStart source:" + this.mRequest.mType + ", type:" + this.mRequest.mDegree + ", mFrom:" + this.mRequest.mFrom + ", mTarget:" + this.mRequest.mTarget);
        }
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (CamLog.DEBUG) {
            CamLog.d("TransitionAnimatorListener.onAnimationEnd source:" + this.mRequest.mType + ", type:" + this.mRequest.mDegree + ", mFrom:" + this.mRequest.mFrom + ", mTarget:" + this.mRequest.mTarget);
        }
        if (this.mCallback != null) {
            this.mCallback.onAnimationFinished();
        }
        TransitionAnimationController.access$100(this.this$0).poll();
        if (TransitionAnimationController.access$100(this.this$0).isEmpty()) {
            if (this.mRequest.mDegree == AnimationRequest$AnimationDegree.FINISH || this.mRequest.mDegree == AnimationRequest$AnimationDegree.CANCEL) {
                TransitionAnimationController.access$202(this.this$0, null);
                return;
            }
            return;
        }
        ((AnimatorSet) TransitionAnimationController.access$100(this.this$0).peek()).start();
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationCancel(Animator animator) {
        if (CamLog.DEBUG) {
            CamLog.d("TransitionAnimatorListener.onAnimationCancel source:" + this.mRequest.mType + ", type:" + this.mRequest.mDegree + ", mFrom:" + this.mRequest.mFrom + ", mTarget:" + this.mRequest.mTarget);
        }
    }
}
