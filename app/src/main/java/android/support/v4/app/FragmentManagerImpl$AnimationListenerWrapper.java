package android.support.v4.app;

import android.support.annotation.CallSuper;
import android.view.animation.Animation;
import android.view.animation.Animation$AnimationListener;

class FragmentManagerImpl$AnimationListenerWrapper implements Animation$AnimationListener {
    private final Animation$AnimationListener mWrapped;

    FragmentManagerImpl$AnimationListenerWrapper(Animation$AnimationListener animation$AnimationListener) {
        this.mWrapped = animation$AnimationListener;
    }

    @Override // android.view.animation.Animation$AnimationListener
    @CallSuper
    public void onAnimationStart(Animation animation) {
        if (this.mWrapped != null) {
            this.mWrapped.onAnimationStart(animation);
        }
    }

    @Override // android.view.animation.Animation$AnimationListener
    @CallSuper
    public void onAnimationEnd(Animation animation) {
        if (this.mWrapped != null) {
            this.mWrapped.onAnimationEnd(animation);
        }
    }

    @Override // android.view.animation.Animation$AnimationListener
    @CallSuper
    public void onAnimationRepeat(Animation animation) {
        if (this.mWrapped != null) {
            this.mWrapped.onAnimationRepeat(animation);
        }
    }
}
