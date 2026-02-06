package android.support.v4.app;

import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Animation$AnimationListener;

class FragmentManagerImpl$2 extends FragmentManagerImpl$AnimationListenerWrapper {
    final /* synthetic */ FragmentManagerImpl this$0;
    final /* synthetic */ ViewGroup val$container;
    final /* synthetic */ Fragment val$fragment;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FragmentManagerImpl$2(FragmentManagerImpl fragmentManagerImpl, Animation$AnimationListener animation$AnimationListener, ViewGroup viewGroup, Fragment fragment) {
        super(animation$AnimationListener);
        this.this$0 = fragmentManagerImpl;
        this.val$container = viewGroup;
        this.val$fragment = fragment;
    }

    @Override // android.support.v4.app.FragmentManagerImpl$AnimationListenerWrapper, android.view.animation.Animation$AnimationListener
    public void onAnimationEnd(Animation animation) {
        super.onAnimationEnd(animation);
        this.val$container.post(new FragmentManagerImpl$2$1(this));
    }
}
