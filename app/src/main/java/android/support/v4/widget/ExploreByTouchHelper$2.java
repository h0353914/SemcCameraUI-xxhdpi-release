package android.support.v4.widget;

import android.support.v4.util.SparseArrayCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;

/* JADX INFO: loaded from: classes.dex */
class ExploreByTouchHelper$2 implements FocusStrategy$CollectionAdapter<SparseArrayCompat<AccessibilityNodeInfoCompat>, AccessibilityNodeInfoCompat> {
    ExploreByTouchHelper$2() {
    }

    @Override // android.support.v4.widget.FocusStrategy$CollectionAdapter
    public /* bridge */ /* synthetic */ AccessibilityNodeInfoCompat get(SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat, int i) {
        return get2(sparseArrayCompat, i);
    }

    @Override // android.support.v4.widget.FocusStrategy$CollectionAdapter
    public /* bridge */ /* synthetic */ int size(SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat) {
        return size2(sparseArrayCompat);
    }

    /* JADX INFO: renamed from: get, reason: avoid collision after fix types in other method */
    public AccessibilityNodeInfoCompat get2(SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat, int i) {
        return sparseArrayCompat.valueAt(i);
    }

    /* JADX INFO: renamed from: size, reason: avoid collision after fix types in other method */
    public int size2(SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat) {
        return sparseArrayCompat.size();
    }
}
