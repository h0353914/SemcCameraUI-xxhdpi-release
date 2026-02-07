package android.support.design.widget;

import android.support.v4.view.ViewCompat;
import android.view.View;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
class CoordinatorLayout$ViewElevationComparator implements Comparator<View> {
    CoordinatorLayout$ViewElevationComparator() {
    }

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(View view, View view2) {
        return compare2(view, view2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(View view, View view2) {
        float z = ViewCompat.getZ(view);
        float z2 = ViewCompat.getZ(view2);
        if (z > z2) {
            return -1;
        }
        return z < z2 ? 1 : 0;
    }
}
