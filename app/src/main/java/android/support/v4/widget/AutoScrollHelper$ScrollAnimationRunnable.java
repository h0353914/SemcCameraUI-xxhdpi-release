package android.support.v4.widget;

import android.support.v4.view.ViewCompat;

class AutoScrollHelper$ScrollAnimationRunnable implements Runnable {
    final /* synthetic */ AutoScrollHelper this$0;

    AutoScrollHelper$ScrollAnimationRunnable(AutoScrollHelper autoScrollHelper) {
        this.this$0 = autoScrollHelper;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$0.mAnimating) {
            if (this.this$0.mNeedsReset) {
                this.this$0.mNeedsReset = false;
                this.this$0.mScroller.start();
            }
            AutoScrollHelper$ClampedScroller autoScrollHelper$ClampedScroller = this.this$0.mScroller;
            if (autoScrollHelper$ClampedScroller.isFinished() || !this.this$0.shouldAnimate()) {
                this.this$0.mAnimating = false;
                return;
            }
            if (this.this$0.mNeedsCancel) {
                this.this$0.mNeedsCancel = false;
                this.this$0.cancelTargetTouch();
            }
            autoScrollHelper$ClampedScroller.computeScrollDelta();
            this.this$0.scrollTargetBy(autoScrollHelper$ClampedScroller.getDeltaX(), autoScrollHelper$ClampedScroller.getDeltaY());
            ViewCompat.postOnAnimation(this.this$0.mTarget, this);
        }
    }
}
