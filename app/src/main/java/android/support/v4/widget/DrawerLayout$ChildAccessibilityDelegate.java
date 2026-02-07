package android.support.v4.widget;

import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class DrawerLayout$ChildAccessibilityDelegate extends AccessibilityDelegateCompat {
    DrawerLayout$ChildAccessibilityDelegate() {
    }

    @Override // android.support.v4.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        if (DrawerLayout.includeChildForAccessibility(view)) {
            return;
        }
        accessibilityNodeInfoCompat.setParent(null);
    }
}
