package android.support.v4.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

class FragmentManagerImpl$AnimatorOnHWLayerIfNeededListener extends AnimatorListenerAdapter {
    View mView;

    FragmentManagerImpl$AnimatorOnHWLayerIfNeededListener(View view) {
        this.mView = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.mView.setLayerType(2, null);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.mView.setLayerType(0, null);
        animator.removeListener(this);
    }
}
