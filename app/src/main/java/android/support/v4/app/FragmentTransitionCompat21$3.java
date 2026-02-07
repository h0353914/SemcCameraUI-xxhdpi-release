package android.support.v4.app;

import android.transition.Transition;
import android.transition.Transition$TransitionListener;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class FragmentTransitionCompat21$3 implements Transition$TransitionListener {
    final /* synthetic */ FragmentTransitionCompat21 this$0;
    final /* synthetic */ Object val$enterTransition;
    final /* synthetic */ ArrayList val$enteringViews;
    final /* synthetic */ Object val$exitTransition;
    final /* synthetic */ ArrayList val$exitingViews;
    final /* synthetic */ Object val$sharedElementTransition;
    final /* synthetic */ ArrayList val$sharedElementsIn;

    @Override // android.transition.Transition$TransitionListener
    public void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition$TransitionListener
    public void onTransitionEnd(Transition transition) {
    }

    @Override // android.transition.Transition$TransitionListener
    public void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition$TransitionListener
    public void onTransitionResume(Transition transition) {
    }

    FragmentTransitionCompat21$3(FragmentTransitionCompat21 fragmentTransitionCompat21, Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
        this.this$0 = fragmentTransitionCompat21;
        this.val$enterTransition = obj;
        this.val$enteringViews = arrayList;
        this.val$exitTransition = obj2;
        this.val$exitingViews = arrayList2;
        this.val$sharedElementTransition = obj3;
        this.val$sharedElementsIn = arrayList3;
    }

    @Override // android.transition.Transition$TransitionListener
    public void onTransitionStart(Transition transition) {
        if (this.val$enterTransition != null) {
            this.this$0.replaceTargets(this.val$enterTransition, this.val$enteringViews, null);
        }
        if (this.val$exitTransition != null) {
            this.this$0.replaceTargets(this.val$exitTransition, this.val$exitingViews, null);
        }
        if (this.val$sharedElementTransition != null) {
            this.this$0.replaceTargets(this.val$sharedElementTransition, this.val$sharedElementsIn, null);
        }
    }
}
