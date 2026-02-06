package android.support.v4.app;

import android.graphics.Rect;
import android.support.v4.util.ArrayMap;
import android.view.View;
import java.util.ArrayList;

class FragmentTransition$4 implements Runnable {
    final /* synthetic */ Object val$enterTransition;
    final /* synthetic */ Object val$finalSharedElementTransition;
    final /* synthetic */ FragmentTransition$FragmentContainerTransition val$fragments;
    final /* synthetic */ FragmentTransitionImpl val$impl;
    final /* synthetic */ Rect val$inEpicenter;
    final /* synthetic */ Fragment val$inFragment;
    final /* synthetic */ boolean val$inIsPop;
    final /* synthetic */ ArrayMap val$nameOverrides;
    final /* synthetic */ View val$nonExistentView;
    final /* synthetic */ Fragment val$outFragment;
    final /* synthetic */ ArrayList val$sharedElementsIn;
    final /* synthetic */ ArrayList val$sharedElementsOut;

    FragmentTransition$4(FragmentTransitionImpl fragmentTransitionImpl, ArrayMap arrayMap, Object obj, FragmentTransition$FragmentContainerTransition fragmentTransition$FragmentContainerTransition, ArrayList arrayList, View view, Fragment fragment, Fragment fragment2, boolean z, ArrayList arrayList2, Object obj2, Rect rect) {
        this.val$impl = fragmentTransitionImpl;
        this.val$nameOverrides = arrayMap;
        this.val$finalSharedElementTransition = obj;
        this.val$fragments = fragmentTransition$FragmentContainerTransition;
        this.val$sharedElementsIn = arrayList;
        this.val$nonExistentView = view;
        this.val$inFragment = fragment;
        this.val$outFragment = fragment2;
        this.val$inIsPop = z;
        this.val$sharedElementsOut = arrayList2;
        this.val$enterTransition = obj2;
        this.val$inEpicenter = rect;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayMap<String, View> arrayMapCaptureInSharedElements = FragmentTransition.captureInSharedElements(this.val$impl, this.val$nameOverrides, this.val$finalSharedElementTransition, this.val$fragments);
        if (arrayMapCaptureInSharedElements != null) {
            this.val$sharedElementsIn.addAll(arrayMapCaptureInSharedElements.values());
            this.val$sharedElementsIn.add(this.val$nonExistentView);
        }
        FragmentTransition.callSharedElementStartEnd(this.val$inFragment, this.val$outFragment, this.val$inIsPop, arrayMapCaptureInSharedElements, false);
        if (this.val$finalSharedElementTransition != null) {
            this.val$impl.swapSharedElementTargets(this.val$finalSharedElementTransition, this.val$sharedElementsOut, this.val$sharedElementsIn);
            View inEpicenterView = FragmentTransition.getInEpicenterView(arrayMapCaptureInSharedElements, this.val$fragments, this.val$enterTransition, this.val$inIsPop);
            if (inEpicenterView != null) {
                this.val$impl.getBoundsOnScreen(inEpicenterView, this.val$inEpicenter);
            }
        }
    }
}
