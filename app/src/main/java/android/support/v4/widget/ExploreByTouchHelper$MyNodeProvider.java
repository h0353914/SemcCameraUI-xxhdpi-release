package android.support.v4.widget;

import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;

class ExploreByTouchHelper$MyNodeProvider extends AccessibilityNodeProviderCompat {
    final /* synthetic */ ExploreByTouchHelper this$0;

    ExploreByTouchHelper$MyNodeProvider(ExploreByTouchHelper exploreByTouchHelper) {
        this.this$0 = exploreByTouchHelper;
    }

    @Override // android.support.v4.view.accessibility.AccessibilityNodeProviderCompat
    public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int i) {
        return AccessibilityNodeInfoCompat.obtain(this.this$0.obtainAccessibilityNodeInfo(i));
    }

    @Override // android.support.v4.view.accessibility.AccessibilityNodeProviderCompat
    public boolean performAction(int i, int i2, Bundle bundle) {
        return this.this$0.performAction(i, i2, bundle);
    }

    @Override // android.support.v4.view.accessibility.AccessibilityNodeProviderCompat
    public AccessibilityNodeInfoCompat findFocus(int i) {
        int i2 = i == 2 ? this.this$0.mAccessibilityFocusedVirtualViewId : this.this$0.mKeyboardFocusedVirtualViewId;
        if (i2 == Integer.MIN_VALUE) {
            return null;
        }
        return createAccessibilityNodeInfo(i2);
    }
}
