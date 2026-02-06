package android.support.v4.app;

import android.transition.Transition;
import android.transition.Transition$TransitionListener;
import android.view.View;
import java.util.ArrayList;

class FragmentTransitionCompat21$2 implements Transition$TransitionListener {
    final /* synthetic */ FragmentTransitionCompat21 this$0;
    final /* synthetic */ ArrayList val$exitingViews;
    final /* synthetic */ View val$fragmentView;

    @Override // android.transition.Transition$TransitionListener
    public void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition$TransitionListener
    public void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition$TransitionListener
    public void onTransitionResume(Transition transition) {
    }

    @Override // android.transition.Transition$TransitionListener
    public void onTransitionStart(Transition transition) {
    }

    FragmentTransitionCompat21$2(FragmentTransitionCompat21 fragmentTransitionCompat21, View view, ArrayList arrayList) {
        this.this$0 = fragmentTransitionCompat21;
        this.val$fragmentView = view;
        this.val$exitingViews = arrayList;
    }

    @Override // android.transition.Transition$TransitionListener
    public void onTransitionEnd(Transition transition) {
        transition.removeListener(this);
        this.val$fragmentView.setVisibility(8);
        int size = this.val$exitingViews.size();
        for (int i = 0; i < size; i++) {
            ((View) this.val$exitingViews.get(i)).setVisibility(0);
        }
    }
}
