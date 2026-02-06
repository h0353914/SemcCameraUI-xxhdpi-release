package android.support.v4.view.accessibility;

import android.support.annotation.RequiresApi;
import android.view.accessibility.AccessibilityNodeInfo;

@RequiresApi(19)
class AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19 extends AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16 {
    AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19(AccessibilityNodeProviderCompat accessibilityNodeProviderCompat) {
        super(accessibilityNodeProviderCompat);
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public AccessibilityNodeInfo findFocus(int i) {
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatFindFocus = this.mCompat.findFocus(i);
        if (accessibilityNodeInfoCompatFindFocus == null) {
            return null;
        }
        return accessibilityNodeInfoCompatFindFocus.unwrap();
    }
}
