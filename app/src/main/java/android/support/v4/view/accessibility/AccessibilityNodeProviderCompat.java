package android.support.v4.view.accessibility;

import android.os.Build$VERSION;
import android.os.Bundle;
import android.support.annotation.Nullable;
import java.util.List;

public class AccessibilityNodeProviderCompat {
    public static final int HOST_VIEW_ID = -1;
    private final Object mProvider;

    @Nullable
    public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int i) {
        return null;
    }

    @Nullable
    public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByText(String str, int i) {
        return null;
    }

    @Nullable
    public AccessibilityNodeInfoCompat findFocus(int i) {
        return null;
    }

    public boolean performAction(int i, int i2, Bundle bundle) {
        return false;
    }

    public AccessibilityNodeProviderCompat() {
        if (Build$VERSION.SDK_INT >= 19) {
            this.mProvider = new AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19(this);
        } else if (Build$VERSION.SDK_INT >= 16) {
            this.mProvider = new AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16(this);
        } else {
            this.mProvider = null;
        }
    }

    public AccessibilityNodeProviderCompat(Object obj) {
        this.mProvider = obj;
    }

    public Object getProvider() {
        return this.mProvider;
    }
}
