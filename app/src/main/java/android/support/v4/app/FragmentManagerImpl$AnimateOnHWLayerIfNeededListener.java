package android.support.v4.app;

import android.os.Build$VERSION;
import android.support.annotation.CallSuper;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation$AnimationListener;

class FragmentManagerImpl$AnimateOnHWLayerIfNeededListener extends FragmentManagerImpl$AnimationListenerWrapper {
    View mView;

    FragmentManagerImpl$AnimateOnHWLayerIfNeededListener(View view, Animation$AnimationListener animation$AnimationListener) {
        super(animation$AnimationListener);
        this.mView = view;
    }

    @Override // android.support.v4.app.FragmentManagerImpl$AnimationListenerWrapper, android.view.animation.Animation$AnimationListener
    @CallSuper
    public void onAnimationEnd(Animation animation) {
        if (ViewCompat.isAttachedToWindow(this.mView) || Build$VERSION.SDK_INT >= 24) {
            this.mView.post(new FragmentManagerImpl$AnimateOnHWLayerIfNeededListener$1(this));
        } else {
            this.mView.setLayerType(0, null);
        }
        super.onAnimationEnd(animation);
    }
}
