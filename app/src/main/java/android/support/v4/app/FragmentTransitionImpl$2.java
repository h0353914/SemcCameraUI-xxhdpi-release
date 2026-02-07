package android.support.v4.app;

import android.support.v4.view.ViewCompat;
import android.view.View;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class FragmentTransitionImpl$2 implements Runnable {
    final /* synthetic */ FragmentTransitionImpl this$0;
    final /* synthetic */ Map val$nameOverrides;
    final /* synthetic */ ArrayList val$sharedElementsIn;

    FragmentTransitionImpl$2(FragmentTransitionImpl fragmentTransitionImpl, ArrayList arrayList, Map map) {
        this.this$0 = fragmentTransitionImpl;
        this.val$sharedElementsIn = arrayList;
        this.val$nameOverrides = map;
    }

    @Override // java.lang.Runnable
    public void run() {
        int size = this.val$sharedElementsIn.size();
        for (int i = 0; i < size; i++) {
            View view = (View) this.val$sharedElementsIn.get(i);
            String transitionName = ViewCompat.getTransitionName(view);
            if (transitionName != null) {
                ViewCompat.setTransitionName(view, FragmentTransitionImpl.findKeyForValue(this.val$nameOverrides, transitionName));
            }
        }
    }
}
