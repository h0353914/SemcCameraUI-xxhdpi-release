package android.support.v4.app;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class FragmentTransition$1 implements Runnable {
    final /* synthetic */ ArrayList val$exitingViews;

    FragmentTransition$1(ArrayList arrayList) {
        this.val$exitingViews = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        FragmentTransition.setViewVisibility(this.val$exitingViews, 4);
    }
}
