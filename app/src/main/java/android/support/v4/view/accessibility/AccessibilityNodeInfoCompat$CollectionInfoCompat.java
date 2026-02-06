package android.support.v4.view.accessibility;

import android.os.Build$VERSION;
import android.view.accessibility.AccessibilityNodeInfo$CollectionInfo;

public class AccessibilityNodeInfoCompat$CollectionInfoCompat {
    public static final int SELECTION_MODE_MULTIPLE = 2;
    public static final int SELECTION_MODE_NONE = 0;
    public static final int SELECTION_MODE_SINGLE = 1;
    final Object mInfo;

    public static AccessibilityNodeInfoCompat$CollectionInfoCompat obtain(int i, int i2, boolean z, int i3) {
        if (Build$VERSION.SDK_INT >= 21) {
            return new AccessibilityNodeInfoCompat$CollectionInfoCompat(AccessibilityNodeInfo$CollectionInfo.obtain(i, i2, z, i3));
        }
        if (Build$VERSION.SDK_INT >= 19) {
            return new AccessibilityNodeInfoCompat$CollectionInfoCompat(AccessibilityNodeInfo$CollectionInfo.obtain(i, i2, z));
        }
        return new AccessibilityNodeInfoCompat$CollectionInfoCompat(null);
    }

    public static AccessibilityNodeInfoCompat$CollectionInfoCompat obtain(int i, int i2, boolean z) {
        if (Build$VERSION.SDK_INT >= 19) {
            return new AccessibilityNodeInfoCompat$CollectionInfoCompat(AccessibilityNodeInfo$CollectionInfo.obtain(i, i2, z));
        }
        return new AccessibilityNodeInfoCompat$CollectionInfoCompat(null);
    }

    AccessibilityNodeInfoCompat$CollectionInfoCompat(Object obj) {
        this.mInfo = obj;
    }

    public int getColumnCount() {
        if (Build$VERSION.SDK_INT >= 19) {
            return ((AccessibilityNodeInfo$CollectionInfo) this.mInfo).getColumnCount();
        }
        return 0;
    }

    public int getRowCount() {
        if (Build$VERSION.SDK_INT >= 19) {
            return ((AccessibilityNodeInfo$CollectionInfo) this.mInfo).getRowCount();
        }
        return 0;
    }

    public boolean isHierarchical() {
        if (Build$VERSION.SDK_INT >= 19) {
            return ((AccessibilityNodeInfo$CollectionInfo) this.mInfo).isHierarchical();
        }
        return false;
    }

    public int getSelectionMode() {
        if (Build$VERSION.SDK_INT >= 21) {
            return ((AccessibilityNodeInfo$CollectionInfo) this.mInfo).getSelectionMode();
        }
        return 0;
    }
}
