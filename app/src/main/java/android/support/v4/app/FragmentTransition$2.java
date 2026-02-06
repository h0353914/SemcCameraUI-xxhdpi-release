package android.support.v4.app;

import android.view.View;
import java.util.ArrayList;

class FragmentTransition$2 implements Runnable {
    final /* synthetic */ Object val$enterTransition;
    final /* synthetic */ ArrayList val$enteringViews;
    final /* synthetic */ Object val$exitTransition;
    final /* synthetic */ ArrayList val$exitingViews;
    final /* synthetic */ FragmentTransitionImpl val$impl;
    final /* synthetic */ Fragment val$inFragment;
    final /* synthetic */ View val$nonExistentView;
    final /* synthetic */ ArrayList val$sharedElementsIn;

    FragmentTransition$2(Object obj, FragmentTransitionImpl fragmentTransitionImpl, View view, Fragment fragment, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Object obj2) {
        this.val$enterTransition = obj;
        this.val$impl = fragmentTransitionImpl;
        this.val$nonExistentView = view;
        this.val$inFragment = fragment;
        this.val$sharedElementsIn = arrayList;
        this.val$enteringViews = arrayList2;
        this.val$exitingViews = arrayList3;
        this.val$exitTransition = obj2;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.val$enterTransition != null) {
            this.val$impl.removeTarget(this.val$enterTransition, this.val$nonExistentView);
            this.val$enteringViews.addAll(FragmentTransition.configureEnteringExitingViews(this.val$impl, this.val$enterTransition, this.val$inFragment, this.val$sharedElementsIn, this.val$nonExistentView));
        }
        if (this.val$exitingViews != null) {
            if (this.val$exitTransition != null) {
                ArrayList<View> arrayList = new ArrayList<>();
                arrayList.add(this.val$nonExistentView);
                this.val$impl.replaceTargets(this.val$exitTransition, this.val$exitingViews, arrayList);
            }
            this.val$exitingViews.clear();
            this.val$exitingViews.add(this.val$nonExistentView);
        }
    }
}
