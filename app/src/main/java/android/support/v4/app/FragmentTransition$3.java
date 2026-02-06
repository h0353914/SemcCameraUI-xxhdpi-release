package android.support.v4.app;

import android.graphics.Rect;
import android.support.v4.util.ArrayMap;
import android.view.View;

class FragmentTransition$3 implements Runnable {
    final /* synthetic */ Rect val$epicenter;
    final /* synthetic */ View val$epicenterView;
    final /* synthetic */ FragmentTransitionImpl val$impl;
    final /* synthetic */ Fragment val$inFragment;
    final /* synthetic */ boolean val$inIsPop;
    final /* synthetic */ ArrayMap val$inSharedElements;
    final /* synthetic */ Fragment val$outFragment;

    FragmentTransition$3(Fragment fragment, Fragment fragment2, boolean z, ArrayMap arrayMap, View view, FragmentTransitionImpl fragmentTransitionImpl, Rect rect) {
        this.val$inFragment = fragment;
        this.val$outFragment = fragment2;
        this.val$inIsPop = z;
        this.val$inSharedElements = arrayMap;
        this.val$epicenterView = view;
        this.val$impl = fragmentTransitionImpl;
        this.val$epicenter = rect;
    }

    @Override // java.lang.Runnable
    public void run() {
        FragmentTransition.callSharedElementStartEnd(this.val$inFragment, this.val$outFragment, this.val$inIsPop, this.val$inSharedElements, false);
        if (this.val$epicenterView != null) {
            this.val$impl.getBoundsOnScreen(this.val$epicenterView, this.val$epicenter);
        }
    }
}
