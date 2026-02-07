package android.support.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class AnimatedVectorDrawableCompat$2 extends AnimatorListenerAdapter {
    final /* synthetic */ AnimatedVectorDrawableCompat this$0;

    AnimatedVectorDrawableCompat$2(AnimatedVectorDrawableCompat animatedVectorDrawableCompat) {
        this.this$0 = animatedVectorDrawableCompat;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
        ArrayList arrayList = new ArrayList(this.this$0.mAnimationCallbacks);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((Animatable2Compat$AnimationCallback) arrayList.get(i)).onAnimationStart(this.this$0);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        ArrayList arrayList = new ArrayList(this.this$0.mAnimationCallbacks);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((Animatable2Compat$AnimationCallback) arrayList.get(i)).onAnimationEnd(this.this$0);
        }
    }
}
