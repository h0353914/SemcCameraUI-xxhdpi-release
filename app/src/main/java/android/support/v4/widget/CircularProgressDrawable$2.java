package android.support.v4.widget;

import android.animation.Animator;
import android.animation.Animator$AnimatorListener;

/* JADX INFO: loaded from: classes.dex */
class CircularProgressDrawable$2 implements Animator$AnimatorListener {
    final /* synthetic */ CircularProgressDrawable this$0;
    final /* synthetic */ CircularProgressDrawable$Ring val$ring;

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
    }

    CircularProgressDrawable$2(CircularProgressDrawable circularProgressDrawable, CircularProgressDrawable$Ring circularProgressDrawable$Ring) {
        this.this$0 = circularProgressDrawable;
        this.val$ring = circularProgressDrawable$Ring;
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.this$0.mRotationCount = 0.0f;
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationRepeat(Animator animator) {
        this.this$0.applyTransformation(1.0f, this.val$ring, true);
        this.val$ring.storeOriginals();
        this.val$ring.goToNextColor();
        if (this.this$0.mFinishing) {
            this.this$0.mFinishing = false;
            animator.cancel();
            animator.setDuration(1332L);
            animator.start();
            this.val$ring.setShowArrow(false);
            return;
        }
        this.this$0.mRotationCount += 1.0f;
    }
}
