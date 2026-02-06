package android.support.v4.widget;

import android.graphics.Rect;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;

class ExploreByTouchHelper$1 implements FocusStrategy$BoundsAdapter<AccessibilityNodeInfoCompat> {
    ExploreByTouchHelper$1() {
    }

    @Override // android.support.v4.widget.FocusStrategy$BoundsAdapter
    public /* bridge */ /* synthetic */ void obtainBounds(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, Rect rect) {
        obtainBounds2(accessibilityNodeInfoCompat, rect);
    }

    /* JADX INFO: renamed from: obtainBounds, reason: avoid collision after fix types in other method */
    public void obtainBounds2(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, Rect rect) {
        accessibilityNodeInfoCompat.getBoundsInParent(rect);
    }
}
