package android.support.v4.view;

import android.os.Build$VERSION;
import android.view.View;

class ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14 implements ViewPropertyAnimatorListener {
    boolean mAnimEndCalled;
    ViewPropertyAnimatorCompat mVpa;

    ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat) {
        this.mVpa = viewPropertyAnimatorCompat;
    }

    @Override // android.support.v4.view.ViewPropertyAnimatorListener
    public void onAnimationStart(View view) {
        this.mAnimEndCalled = false;
        if (this.mVpa.mOldLayerType > -1) {
            view.setLayerType(2, null);
        }
        if (this.mVpa.mStartAction != null) {
            Runnable runnable = this.mVpa.mStartAction;
            this.mVpa.mStartAction = null;
            runnable.run();
        }
        Object tag = view.getTag(2113929216);
        ViewPropertyAnimatorListener viewPropertyAnimatorListener = tag instanceof ViewPropertyAnimatorListener ? (ViewPropertyAnimatorListener) tag : null;
        if (viewPropertyAnimatorListener != null) {
            viewPropertyAnimatorListener.onAnimationStart(view);
        }
    }

    @Override // android.support.v4.view.ViewPropertyAnimatorListener
    public void onAnimationEnd(View view) {
        if (this.mVpa.mOldLayerType > -1) {
            view.setLayerType(this.mVpa.mOldLayerType, null);
            this.mVpa.mOldLayerType = -1;
        }
        if (Build$VERSION.SDK_INT >= 16 || !this.mAnimEndCalled) {
            if (this.mVpa.mEndAction != null) {
                Runnable runnable = this.mVpa.mEndAction;
                this.mVpa.mEndAction = null;
                runnable.run();
            }
            Object tag = view.getTag(2113929216);
            ViewPropertyAnimatorListener viewPropertyAnimatorListener = tag instanceof ViewPropertyAnimatorListener ? (ViewPropertyAnimatorListener) tag : null;
            if (viewPropertyAnimatorListener != null) {
                viewPropertyAnimatorListener.onAnimationEnd(view);
            }
            this.mAnimEndCalled = true;
        }
    }

    @Override // android.support.v4.view.ViewPropertyAnimatorListener
    public void onAnimationCancel(View view) {
        Object tag = view.getTag(2113929216);
        ViewPropertyAnimatorListener viewPropertyAnimatorListener = tag instanceof ViewPropertyAnimatorListener ? (ViewPropertyAnimatorListener) tag : null;
        if (viewPropertyAnimatorListener != null) {
            viewPropertyAnimatorListener.onAnimationCancel(view);
        }
    }
}
